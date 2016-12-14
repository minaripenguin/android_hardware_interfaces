# This file is autogenerated by hidl-gen. Do not edit manually.

LOCAL_PATH := $(call my-dir)

################################################################################

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.gnss@1.0-java
LOCAL_MODULE_CLASS := JAVA_LIBRARIES

intermediates := $(local-generated-sources-dir)

HIDL := $(HOST_OUT_EXECUTABLES)/hidl-gen$(HOST_EXECUTABLE_SUFFIX)

LOCAL_JAVA_LIBRARIES := \
    android.hidl.base@1.0-java \


#
# Build types.hal (GnssConstellationType)
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/GnssConstellationType.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::types.GnssConstellationType

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build types.hal (GnssLocation)
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/GnssLocation.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::types.GnssLocation

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build types.hal (GnssMax)
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/GnssMax.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::types.GnssMax

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IAGnss.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IAGnss.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IAGnss.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IAGnssCallback.hal
$(GEN): $(LOCAL_PATH)/IAGnssCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IAGnss

$(GEN): $(LOCAL_PATH)/IAGnss.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IAGnssCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IAGnssCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IAGnssCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IAGnssCallback

$(GEN): $(LOCAL_PATH)/IAGnssCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IAGnssRil.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IAGnssRil.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IAGnssRil.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IAGnssRilCallback.hal
$(GEN): $(LOCAL_PATH)/IAGnssRilCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IAGnssRil

$(GEN): $(LOCAL_PATH)/IAGnssRil.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IAGnssRilCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IAGnssRilCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IAGnssRilCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IAGnssRilCallback

$(GEN): $(LOCAL_PATH)/IAGnssRilCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnss.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnss.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnss.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IAGnss.hal
$(GEN): $(LOCAL_PATH)/IAGnss.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IAGnssRil.hal
$(GEN): $(LOCAL_PATH)/IAGnssRil.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssBatching.hal
$(GEN): $(LOCAL_PATH)/IGnssBatching.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssConfiguration.hal
$(GEN): $(LOCAL_PATH)/IGnssConfiguration.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssDebug.hal
$(GEN): $(LOCAL_PATH)/IGnssDebug.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssGeofencing.hal
$(GEN): $(LOCAL_PATH)/IGnssGeofencing.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssMeasurement.hal
$(GEN): $(LOCAL_PATH)/IGnssMeasurement.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssNavigationMessage.hal
$(GEN): $(LOCAL_PATH)/IGnssNavigationMessage.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssNi.hal
$(GEN): $(LOCAL_PATH)/IGnssNi.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssXtra.hal
$(GEN): $(LOCAL_PATH)/IGnssXtra.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnss

$(GEN): $(LOCAL_PATH)/IGnss.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssBatching.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssBatching.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssBatching.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssBatchingCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssBatchingCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssBatching

$(GEN): $(LOCAL_PATH)/IGnssBatching.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssBatchingCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssBatchingCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssBatchingCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssBatchingCallback

$(GEN): $(LOCAL_PATH)/IGnssBatchingCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssCallback

$(GEN): $(LOCAL_PATH)/IGnssCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssConfiguration.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssConfiguration.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssConfiguration.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssConfiguration

$(GEN): $(LOCAL_PATH)/IGnssConfiguration.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssDebug.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssDebug.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssDebug.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssDebug

$(GEN): $(LOCAL_PATH)/IGnssDebug.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssGeofenceCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssGeofenceCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssGeofenceCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssGeofenceCallback

$(GEN): $(LOCAL_PATH)/IGnssGeofenceCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssGeofencing.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssGeofencing.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssGeofencing.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssGeofenceCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssGeofenceCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssGeofencing

$(GEN): $(LOCAL_PATH)/IGnssGeofencing.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssMeasurement.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssMeasurement.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssMeasurement.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssMeasurementCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssMeasurementCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssMeasurement

$(GEN): $(LOCAL_PATH)/IGnssMeasurement.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssMeasurementCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssMeasurementCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssMeasurementCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssMeasurementCallback

$(GEN): $(LOCAL_PATH)/IGnssMeasurementCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssNavigationMessage.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssNavigationMessage.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssNavigationMessage.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssNavigationMessageCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssNavigationMessageCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssNavigationMessage

$(GEN): $(LOCAL_PATH)/IGnssNavigationMessage.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssNavigationMessageCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssNavigationMessageCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssNavigationMessageCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssNavigationMessageCallback

$(GEN): $(LOCAL_PATH)/IGnssNavigationMessageCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssNi.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssNi.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssNi.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssNiCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssNiCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssNi

$(GEN): $(LOCAL_PATH)/IGnssNi.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssNiCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssNiCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssNiCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssNiCallback

$(GEN): $(LOCAL_PATH)/IGnssNiCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssXtra.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssXtra.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssXtra.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssXtraCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssXtraCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssXtra

$(GEN): $(LOCAL_PATH)/IGnssXtra.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssXtraCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssXtraCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssXtraCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssXtraCallback

$(GEN): $(LOCAL_PATH)/IGnssXtraCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)
include $(BUILD_JAVA_LIBRARY)


################################################################################

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.gnss@1.0-java-static
LOCAL_MODULE_CLASS := JAVA_LIBRARIES

intermediates := $(local-generated-sources-dir)

HIDL := $(HOST_OUT_EXECUTABLES)/hidl-gen$(HOST_EXECUTABLE_SUFFIX)

LOCAL_STATIC_JAVA_LIBRARIES := \
    android.hidl.base@1.0-java-static \


#
# Build types.hal (GnssConstellationType)
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/GnssConstellationType.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::types.GnssConstellationType

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build types.hal (GnssLocation)
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/GnssLocation.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::types.GnssLocation

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build types.hal (GnssMax)
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/GnssMax.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::types.GnssMax

$(GEN): $(LOCAL_PATH)/types.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IAGnss.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IAGnss.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IAGnss.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IAGnssCallback.hal
$(GEN): $(LOCAL_PATH)/IAGnssCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IAGnss

$(GEN): $(LOCAL_PATH)/IAGnss.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IAGnssCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IAGnssCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IAGnssCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IAGnssCallback

$(GEN): $(LOCAL_PATH)/IAGnssCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IAGnssRil.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IAGnssRil.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IAGnssRil.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IAGnssRilCallback.hal
$(GEN): $(LOCAL_PATH)/IAGnssRilCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IAGnssRil

$(GEN): $(LOCAL_PATH)/IAGnssRil.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IAGnssRilCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IAGnssRilCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IAGnssRilCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IAGnssRilCallback

$(GEN): $(LOCAL_PATH)/IAGnssRilCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnss.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnss.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnss.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IAGnss.hal
$(GEN): $(LOCAL_PATH)/IAGnss.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IAGnssRil.hal
$(GEN): $(LOCAL_PATH)/IAGnssRil.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssBatching.hal
$(GEN): $(LOCAL_PATH)/IGnssBatching.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssConfiguration.hal
$(GEN): $(LOCAL_PATH)/IGnssConfiguration.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssDebug.hal
$(GEN): $(LOCAL_PATH)/IGnssDebug.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssGeofencing.hal
$(GEN): $(LOCAL_PATH)/IGnssGeofencing.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssMeasurement.hal
$(GEN): $(LOCAL_PATH)/IGnssMeasurement.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssNavigationMessage.hal
$(GEN): $(LOCAL_PATH)/IGnssNavigationMessage.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssNi.hal
$(GEN): $(LOCAL_PATH)/IGnssNi.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssXtra.hal
$(GEN): $(LOCAL_PATH)/IGnssXtra.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnss

$(GEN): $(LOCAL_PATH)/IGnss.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssBatching.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssBatching.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssBatching.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssBatchingCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssBatchingCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssBatching

$(GEN): $(LOCAL_PATH)/IGnssBatching.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssBatchingCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssBatchingCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssBatchingCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssBatchingCallback

$(GEN): $(LOCAL_PATH)/IGnssBatchingCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssCallback

$(GEN): $(LOCAL_PATH)/IGnssCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssConfiguration.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssConfiguration.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssConfiguration.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssConfiguration

$(GEN): $(LOCAL_PATH)/IGnssConfiguration.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssDebug.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssDebug.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssDebug.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssDebug

$(GEN): $(LOCAL_PATH)/IGnssDebug.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssGeofenceCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssGeofenceCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssGeofenceCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssGeofenceCallback

$(GEN): $(LOCAL_PATH)/IGnssGeofenceCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssGeofencing.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssGeofencing.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssGeofencing.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssGeofenceCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssGeofenceCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssGeofencing

$(GEN): $(LOCAL_PATH)/IGnssGeofencing.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssMeasurement.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssMeasurement.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssMeasurement.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssMeasurementCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssMeasurementCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssMeasurement

$(GEN): $(LOCAL_PATH)/IGnssMeasurement.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssMeasurementCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssMeasurementCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssMeasurementCallback.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/types.hal
$(GEN): $(LOCAL_PATH)/types.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssMeasurementCallback

$(GEN): $(LOCAL_PATH)/IGnssMeasurementCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssNavigationMessage.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssNavigationMessage.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssNavigationMessage.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssNavigationMessageCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssNavigationMessageCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssNavigationMessage

$(GEN): $(LOCAL_PATH)/IGnssNavigationMessage.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssNavigationMessageCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssNavigationMessageCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssNavigationMessageCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssNavigationMessageCallback

$(GEN): $(LOCAL_PATH)/IGnssNavigationMessageCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssNi.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssNi.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssNi.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssNiCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssNiCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssNi

$(GEN): $(LOCAL_PATH)/IGnssNi.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssNiCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssNiCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssNiCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssNiCallback

$(GEN): $(LOCAL_PATH)/IGnssNiCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssXtra.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssXtra.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssXtra.hal
$(GEN): PRIVATE_DEPS += $(LOCAL_PATH)/IGnssXtraCallback.hal
$(GEN): $(LOCAL_PATH)/IGnssXtraCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssXtra

$(GEN): $(LOCAL_PATH)/IGnssXtra.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

#
# Build IGnssXtraCallback.hal
#
GEN := $(intermediates)/android/hardware/gnss/V1_0/IGnssXtraCallback.java
$(GEN): $(HIDL)
$(GEN): PRIVATE_HIDL := $(HIDL)
$(GEN): PRIVATE_DEPS := $(LOCAL_PATH)/IGnssXtraCallback.hal
$(GEN): PRIVATE_OUTPUT_DIR := $(intermediates)
$(GEN): PRIVATE_CUSTOM_TOOL = \
        $(PRIVATE_HIDL) -o $(PRIVATE_OUTPUT_DIR) \
        -Ljava \
        -randroid.hardware:hardware/interfaces \
        -randroid.hidl:system/libhidl/transport \
        android.hardware.gnss@1.0::IGnssXtraCallback

$(GEN): $(LOCAL_PATH)/IGnssXtraCallback.hal
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)
include $(BUILD_STATIC_JAVA_LIBRARY)



include $(call all-makefiles-under,$(LOCAL_PATH))
