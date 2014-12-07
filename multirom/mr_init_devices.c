#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
    "/sys/class/graphics/fb0",

    "/sys/block/mmcblk0",
    "/sys/devices/platform/msm_sdcc.1",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p5",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p7",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p26",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p21",

    "/sys/bus/mmc",
    "/sys/bus/mmc/drivers/mmcblk",
    "/sys/bus/sdio/drivers/bcmsdh_sdmmc",
    "/sys/module/mmc_core",
    "/sys/module/mmcblk",

    "/sys/class/input/input2",
    "/sys/class/input/input2/event2",
    "/sys/class/misc/uinput",
    "/sys/class/input/input0",
    "/sys/class/input/input0/event0",
    "/sys/class/input/input1",
    "/sys/class/input/input1/event1",

    // for adb
    "/sys/class/tty/ptmx",
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p14", //system
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p16", // /cache
    "/sys/class/misc/android_adb",
    "/sys/class/android_usb/android0/f_adb",
    "/sys/bus/usb",

    // Mount persist and firmware
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0:0001/block/mmcblk0/mmcblk0p15", //persist
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0:0001/block/mmcblk0/mmcblk0p13", //persist
    "/sys/devices/platform/msm_sdcc.1/mmc_host/mmc0:0001/block/mmcblk0/mmcblk0p1", //firmware

    // USB Drive is in here
    "/sys/devices/platform/msm_hsusb_host*",

    // exfat requires fuse device
    "/sys/devices/virtual/misc/fuse",

    NULL
};
