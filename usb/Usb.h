#ifndef ANDROID_HARDWARE_USB_V1_1_USB_H
#define ANDROID_HARDWARE_USB_V1_1_USB_H

#include <android/hardware/usb/1.1/IUsb.h>
#include <android/hardware/usb/1.1/types.h>
#include <android/hardware/usb/1.1/IUsbCallback.h>
#include <hidl/Status.h>
#include <log/log.h>

#ifdef LOG_TAG
#undef LOG_TAG
#endif

#define LOG_TAG "android.hardware.usb@1.1-service.NB1"
#define UEVENT_MSG_LEN 2048

namespace android {
namespace hardware {
namespace usb {
namespace V1_1 {
namespace implementation {

using ::android::hardware::usb::V1_0::PortRole;
using ::android::hardware::usb::V1_0::PortRoleType;
using ::android::hardware::usb::V1_0::PortDataRole;
using ::android::hardware::usb::V1_0::PortPowerRole;
using ::android::hardware::usb::V1_0::Status;
using ::android::hardware::usb::V1_1::IUsb;
using ::android::hardware::usb::V1_1::IUsbCallback;
using ::android::hardware::usb::V1_1::PortMode_1_1;
using ::android::hardware::usb::V1_1::PortStatus_1_1;
using ::android::hidl::base::V1_0::DebugInfo;
using ::android::hidl::base::V1_0::IBase;
using ::android::hardware::hidl_array;
using ::android::hardware::hidl_memory;
using ::android::hardware::hidl_string;
using ::android::hardware::hidl_vec;
using ::android::hardware::Return;
using ::android::hardware::Void;
using ::android::sp;

struct Usb : public IUsb {
    Usb();

    Return<void> switchRole(const hidl_string& portName, const V1_0::PortRole& role) override;
    Return<void> setCallback(const sp<V1_0::IUsbCallback>& callback) override;
    Return<void> queryPortStatus() override;

    sp<V1_0::IUsbCallback> mCallback_1_0;
    pthread_t mPoll;
    // Protects mCallback variable
    pthread_mutex_t mLock;
    // Protects roleSwitch operation
    pthread_mutex_t mRoleSwitchLock;
};

}  // namespace implementation
}  // namespace V1_1
}  // namespace usb
}  // namespace hardware
}  // namespace android

#endif  // ANDROID_HARDWARE_USB_V1_1_USB_H
