/*
 * Copyright (C) 2023 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <limits>

#define LOG_TAG "AHAL_StreamAlsa"
#include <android-base/logging.h>

#include <Utils.h>
#include <audio_utils/clock.h>
#include <error/expected_utils.h>

#include "core-impl/StreamAlsa.h"

namespace aidl::android::hardware::audio::core {

StreamAlsa::StreamAlsa(const Metadata& metadata, StreamContext&& context, int readWriteRetries)
    : StreamCommonImpl(metadata, std::move(context)),
      mFrameSizeBytes(getContext().getFrameSize()),
      mIsInput(isInput(metadata)),
      mConfig(alsa::getPcmConfig(getContext(), mIsInput)),
      mReadWriteRetries(readWriteRetries) {}

::android::status_t StreamAlsa::init() {
    return mConfig.has_value() ? ::android::OK : ::android::NO_INIT;
}

::android::status_t StreamAlsa::drain(StreamDescriptor::DrainMode) {
    usleep(1000);
    return ::android::OK;
}

::android::status_t StreamAlsa::flush() {
    usleep(1000);
    return ::android::OK;
}

::android::status_t StreamAlsa::pause() {
    usleep(1000);
    return ::android::OK;
}

::android::status_t StreamAlsa::standby() {
    mAlsaDeviceProxies.clear();
    return ::android::OK;
}

::android::status_t StreamAlsa::start() {
    decltype(mAlsaDeviceProxies) alsaDeviceProxies;
    for (const auto& device : getDeviceProfiles()) {
        alsa::DeviceProxy proxy;
        if (device.isExternal) {
            // Always ask alsa configure as required since the configuration should be supported
            // by the connected device. That is guaranteed by `setAudioPortConfig` and
            // `setAudioPatch`.
            proxy = alsa::openProxyForExternalDevice(
                    device, const_cast<struct pcm_config*>(&mConfig.value()),
                    true /*require_exact_match*/);
        } else {
            proxy = alsa::openProxyForAttachedDevice(
                    device, const_cast<struct pcm_config*>(&mConfig.value()),
                    getContext().getBufferSizeInFrames());
        }
        if (!proxy) {
            return ::android::NO_INIT;
        }
        alsaDeviceProxies.push_back(std::move(proxy));
    }
    mAlsaDeviceProxies = std::move(alsaDeviceProxies);
    return ::android::OK;
}

::android::status_t StreamAlsa::transfer(void* buffer, size_t frameCount, size_t* actualFrameCount,
                                         int32_t* latencyMs) {
    const size_t bytesToTransfer = frameCount * mFrameSizeBytes;
    unsigned maxLatency = 0;
    if (mIsInput) {
        if (mAlsaDeviceProxies.empty()) {
            LOG(FATAL) << __func__ << ": no input devices";
            return ::android::NO_INIT;
        }
        // For input case, only support single device.
        proxy_read_with_retries(mAlsaDeviceProxies[0].get(), buffer, bytesToTransfer,
                                mReadWriteRetries);
        maxLatency = proxy_get_latency(mAlsaDeviceProxies[0].get());
    } else {
        for (auto& proxy : mAlsaDeviceProxies) {
            proxy_write_with_retries(proxy.get(), buffer, bytesToTransfer, mReadWriteRetries);
            maxLatency = std::max(maxLatency, proxy_get_latency(proxy.get()));
        }
    }
    *actualFrameCount = frameCount;
    maxLatency = std::min(maxLatency, static_cast<unsigned>(std::numeric_limits<int32_t>::max()));
    *latencyMs = maxLatency;
    return ::android::OK;
}

::android::status_t StreamAlsa::getPosition(StreamDescriptor::Position* position) {
    if (mAlsaDeviceProxies.empty()) {
        LOG(FATAL) << __func__ << ": no input devices";
        return ::android::NO_INIT;
    }
    if (mIsInput) {
        if (int ret = proxy_get_capture_position(mAlsaDeviceProxies[0].get(), &position->frames,
                                                 &position->timeNs);
            ret != 0) {
            LOG(WARNING) << __func__ << ": failed to retrieve capture position: " << ret;
            return ::android::INVALID_OPERATION;
        }
    } else {
        uint64_t hwFrames;
        struct timespec timestamp;
        if (int ret = proxy_get_presentation_position(mAlsaDeviceProxies[0].get(), &hwFrames,
                                                      &timestamp);
            ret == 0) {
            if (hwFrames > std::numeric_limits<int64_t>::max()) {
                hwFrames -= std::numeric_limits<int64_t>::max();
            }
            position->frames = static_cast<int64_t>(hwFrames);
            position->timeNs = audio_utils_ns_from_timespec(&timestamp);
        } else {
            LOG(WARNING) << __func__ << ": failed to retrieve presentation position: " << ret;
            return ::android::INVALID_OPERATION;
        }
    }
    return ::android::OK;
}

void StreamAlsa::shutdown() {
    mAlsaDeviceProxies.clear();
}

}  // namespace aidl::android::hardware::audio::core
