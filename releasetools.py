import common
import edify_generator
import os

def ModifyBegin(info):
  edify = info.script
  edify.script[0] = \
  '''ifelse(is_mounted("/system"), unmount("/system"));
ui_print("******************************************");
ui_print("* Flyme6 for HM4Pro(markw) base_sm");
ui_print("*");
ui_print("* Romer: Liberation");
ui_print("******************************************");\n''' + edify.script[0]

def InstallBased(info):
    for filename in os.listdir("overlay/firmware-update"):
        if not (filename.find('.mbn')==-1 and filename.find('.bin')==-1):
            data=open(os.path.join(os.getcwd(),"overlay/firmware-update",filename)).read()
            common.ZipWriteStr(info.output_zip, "firmware-update/" + filename, data)
    extra_img_flash = """ui_print("Writing radio image...");
ui_print("update image emmc_appsboot.mbn ...");
package_extract_file("firmware-update/emmc_appsboot.mbn", "/dev/block/bootdevice/by-name/aboot");
ui_print("update image rpm.mbn ...");
package_extract_file("firmware-update/rpm.mbn", "/dev/block/bootdevice/by-name/rpm");
ui_print("update image tz.mbn ...");
package_extract_file("firmware-update/tz.mbn", "/dev/block/bootdevice/by-name/tz");
ui_print("update image cmnlib.mbn ...");
package_extract_file("firmware-update/cmnlib.mbn", "/dev/block/bootdevice/by-name/cmnlib");
ui_print("update image NON-HLOS.bin ...");
package_extract_file("firmware-update/NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
ui_print("update image lksecapp.mbn ...");
package_extract_file("firmware-update/lksecapp.mbn", "/dev/block/bootdevice/by-name/lksecapp");
ui_print("update image cmnlib64.mbn ...");
package_extract_file("firmware-update/cmnlib64.mbn", "/dev/block/bootdevice/by-name/cmnlib64");
ui_print("update image adspso.bin ...");
package_extract_file("firmware-update/adspso.bin", "/dev/block/bootdevice/by-name/dsp");
ui_print("update image keymaster.mbn ...");
package_extract_file("firmware-update/keymaster.mbn", "/dev/block/bootdevice/by-name/keymaster");
ui_print("update image devcfg.mbn ...");
package_extract_file("firmware-update/devcfg.mbn", "/dev/block/bootdevice/by-name/devcfg");
ui_print("update image sbl1.mbn ...");
package_extract_file("firmware-update/sbl1.mbn", "/dev/block/bootdevice/by-name/sbl1");
ui_print("update image splash.img ...");
package_extract_file("firmware-update/splash.img", "/dev/block/bootdevice/by-name/splash");"""
    info.script.AppendExtra(extra_img_flash);

def FullOTA_InstallEnd(info):
    ModifyBegin(info)
    #InstallBased(info)
