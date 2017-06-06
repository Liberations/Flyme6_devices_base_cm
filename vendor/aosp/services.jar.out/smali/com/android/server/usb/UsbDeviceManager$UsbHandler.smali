.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# instance fields
.field private mAdbNotificationId:I

.field private mConfigured:Z

.field private mConnected:Z

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mCurrentFunctions:Ljava/lang/String;

.field private mCurrentFunctionsApplied:Z

.field private mCurrentUser:I

.field private mHostConnected:Z

.field private mUsbDataUnlocked:Z

.field private mUsbNotificationId:I

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->processQSChangedLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    :try_start_0
    const-string v3, "sys.usb.config"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "none"

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mtp"

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, "sys.usb.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object v3

    const-string v4, "adb"

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {p1, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set1(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .local v2, "state":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Landroid/os/Handler;)V

    .local v0, "adbNotificationObserver":Landroid/database/ContentObserver;
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_port"

    invoke-static {v4}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_notify"

    invoke-static {v4}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get14(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v3

    const-string v4, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get14(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v3

    const-string v4, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Lorg/cyanogenmod/internal/util/QSUtils$OnQSChanged;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cyanogenmod/internal/util/QSUtils;->registerObserverForQSChanges(Landroid/content/Context;Lorg/cyanogenmod/internal/util/QSUtils$OnQSChanged;)Landroid/database/ContentObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "adbNotificationObserver":Landroid/database/ContentObserver;
    .end local v2    # "state":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "UsbDeviceManager"

    const-string v4, "Error initializing UsbHandler"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "adb"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    const-string v0, "adb"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getAdbCustomTileLabel()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_port"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v1, 0x1

    .local v1, "netAdbActive":Z
    :goto_1
    const/4 v0, 0x0

    .local v0, "id":I
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const v0, 0x1040035

    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x1040034

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .end local v0    # "id":I
    .end local v1    # "netAdbActive":Z
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v3, 0x0

    .local v3, "usbAdbActive":Z
    goto :goto_0

    .end local v3    # "usbAdbActive":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "netAdbActive":Z
    goto :goto_1

    .end local v1    # "netAdbActive":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "netAdbActive":Z
    goto :goto_1

    .restart local v0    # "id":I
    :cond_4
    if-eqz v3, :cond_5

    const v0, 0x1040036

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_0

    const v0, 0x1040037

    goto :goto_2
.end method

.method private getCustomTilePendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultFunctions()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "persist.sys.usb.config"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "func":Ljava/lang/String;
    const-string v1, "charging"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "mtp"

    :cond_0
    return-object v0
.end method

.method private isUsbTransferAllowed()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .local v0, "userManager":Landroid/os/UserManager;
    const-string v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processQSChangedLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    :goto_0
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "adb_port"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_1

    const/4 v2, 0x1

    .local v2, "netAdbActive":Z
    :goto_1
    const-string v6, "1"

    const-string v7, "persist.adb.notify"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "adb_notify"

    invoke-static {v6, v7, v9}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_4

    const/4 v3, 0x1

    .local v3, "notifEnabled":Z
    :goto_2
    if-eqz v3, :cond_6

    if-nez v4, :cond_5

    move v1, v2

    :goto_3
    if-nez v5, :cond_7

    move v0, v1

    :goto_4
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->publishAdbCustomTile()V

    :goto_5
    return-void

    .end local v2    # "netAdbActive":Z
    .end local v3    # "notifEnabled":Z
    :cond_0
    const/4 v4, 0x0

    .local v4, "usbAdbActive":Z
    goto :goto_0

    .end local v4    # "usbAdbActive":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "netAdbActive":Z
    goto :goto_1

    .end local v2    # "netAdbActive":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "netAdbActive":Z
    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "notifEnabled":Z
    goto :goto_2

    .end local v3    # "notifEnabled":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "notifEnabled":Z
    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    .local v1, "isActive":Z
    goto :goto_3

    .end local v1    # "isActive":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isActive":Z
    goto :goto_3

    .end local v1    # "isActive":Z
    :cond_7
    const/4 v0, 0x0

    .local v0, "enabled":Z
    goto :goto_4

    .end local v0    # "enabled":Z
    :cond_8
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->unpublishAdbCustomTile()V

    goto :goto_5
.end method

.method private publishAdbCustomTile()V
    .locals 11

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v8}, Landroid/os/UserHandle;-><init>(I)V

    .local v5, "user":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "adb"

    invoke-static {v9, v8, v10}, Lorg/cyanogenmod/internal/util/QSUtils;->getDynamicQSTileResIconId(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .local v1, "icon":I
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "adb"

    invoke-static {v9, v8, v10}, Lorg/cyanogenmod/internal/util/QSUtils;->getDynamicQSTileLabel(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "contentDesc":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lorg/cyanogenmod/internal/util/QSUtils;->getQSTileContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .local v2, "resourceContext":Landroid/content/Context;
    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcyanogenmod/app/CMStatusBarManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMStatusBarManager;

    move-result-object v3

    .local v3, "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    new-instance v9, Lcyanogenmod/app/CustomTile$Builder;

    invoke-direct {v9, v2}, Lcyanogenmod/app/CustomTile$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAdbCustomTileLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcyanogenmod/app/CustomTile$Builder;->setLabel(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcyanogenmod/app/CustomTile$Builder;->setContentDescription(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcyanogenmod/app/CustomTile$Builder;->setIcon(I)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCustomTilePendingIntent()Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcyanogenmod/app/CustomTile$Builder;->setOnClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcyanogenmod/app/CustomTile$Builder;->build()Lcyanogenmod/app/CustomTile;

    move-result-object v4

    .local v4, "tile":Lcyanogenmod/app/CustomTile;
    const-string v9, "adb"

    const-class v10, Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v10}, Ljava/lang/Class;->hashCode()I

    move-result v10

    invoke-virtual {v3, v9, v10, v4, v5}, Lcyanogenmod/app/CMStatusBarManager;->publishTileAsUser(Ljava/lang/String;ILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0    # "contentDesc":Ljava/lang/String;
    .end local v1    # "icon":I
    .end local v2    # "resourceContext":Landroid/content/Context;
    .end local v3    # "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    .end local v4    # "tile":Lcyanogenmod/app/CustomTile;
    .end local v5    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private setAdbEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->-set1(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object v1

    .local v1, "oldFunctions":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "newFunctions":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "persist.sys.usb.config"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .end local v0    # "newFunctions":Ljava/lang/String;
    .end local v1    # "oldFunctions":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    :cond_2
    return-void
.end method

.method private setEnabledFunctions(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .local v0, "oldFunctions":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .local v1, "oldFunctionsApplied":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "UsbDeviceManager"

    const-string v3, "Failsafe 2: Restoring default USB functions."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_2
    const-string v2, "UsbDeviceManager"

    const-string v3, "Failsafe 1: Restoring previous USB functions."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_3
    const-string v2, "UsbDeviceManager"

    const-string v3, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "none"

    invoke-direct {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    const-string v2, "UsbDeviceManager"

    const-string v3, "Unable to set any USB functions!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    const-string v0, "sys.usb.config"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setUsbDataUnlocked(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    return-void
.end method

.method private trySetEnabledFunctions(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap1(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting USB config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    const-string v0, "none"

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to switch USB config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    :cond_3
    return v4
.end method

.method private unpublishAdbCustomTile()V
    .locals 7

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcyanogenmod/app/CMStatusBarManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMStatusBarManager;

    move-result-object v0

    .local v0, "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    const-string v4, "adb"

    const-class v5, Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v5}, Ljava/lang/Class;->hashCode()I

    move-result v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v5, v6}, Lcyanogenmod/app/CMStatusBarManager;->removeTileAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0    # "statusBarManager":Lcyanogenmod/app/CMStatusBarManager;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private updateAdbNotification()V
    .locals 15

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v14, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_port"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_5

    const/4 v9, 0x1

    .local v9, "netAdbActive":Z
    :goto_1
    const-string v0, "0"

    const-string v1, "persist.adb.notify"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_notify"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v6, 0x1

    .local v6, "hideNotification":Z
    :goto_2
    if-eqz v6, :cond_9

    const/4 v7, 0x0

    .local v7, "id":I
    :goto_3
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationId:I

    if-eq v7, v0, :cond_3

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_1
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .local v12, "r":Landroid/content/res/Resources;
    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .local v13, "title":Ljava/lang/CharSequence;
    const v0, 0x1040033

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .local v8, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.DevelopmentSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .local v11, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080655

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x1060070

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .local v10, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v7, v10, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "title":Ljava/lang/CharSequence;
    :cond_2
    iput v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationId:I

    :cond_3
    if-lez v7, :cond_d

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->publishAdbCustomTile()V

    :goto_4
    return-void

    .end local v6    # "hideNotification":Z
    .end local v7    # "id":I
    .end local v9    # "netAdbActive":Z
    :cond_4
    const/4 v14, 0x0

    .local v14, "usbAdbActive":Z
    goto/16 :goto_0

    .end local v14    # "usbAdbActive":Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "netAdbActive":Z
    goto/16 :goto_1

    .end local v9    # "netAdbActive":Z
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "netAdbActive":Z
    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x1

    .restart local v6    # "hideNotification":Z
    goto/16 :goto_2

    .end local v6    # "hideNotification":Z
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "hideNotification":Z
    goto/16 :goto_2

    :cond_9
    if-eqz v14, :cond_a

    if-eqz v9, :cond_a

    const v7, 0x1040032

    .restart local v7    # "id":I
    goto/16 :goto_3

    .end local v7    # "id":I
    :cond_a
    if-eqz v14, :cond_b

    const v7, 0x1040470

    .restart local v7    # "id":I
    goto/16 :goto_3

    .end local v7    # "id":I
    :cond_b
    if-eqz v9, :cond_c

    const v7, 0x1040031

    .restart local v7    # "id":I
    goto/16 :goto_3

    .end local v7    # "id":I
    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "id":I
    goto/16 :goto_3

    :cond_d
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->unpublishAdbCustomTile()V

    goto :goto_4
.end method

.method private updateAudioSourceFunction()V
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v7, "audio_source"

    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .local v3, "enabled":Z
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get3(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eq v3, v6, :cond_1

    const/4 v0, -0x1

    .local v0, "card":I
    const/4 v1, -0x1

    .local v1, "device":I
    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .local v4, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v5, Ljava/util/Scanner;

    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/class/android_usb/android0/f_audio_source/pcm"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "scanner":Ljava/util/Scanner;
    .local v5, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    .end local v5    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get15(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object v6

    invoke-virtual {v6, v3, v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->setAccessoryAudioState(ZII)V

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set2(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .end local v0    # "card":I
    .end local v1    # "device":I
    :cond_1
    return-void

    .restart local v0    # "card":I
    .restart local v1    # "device":I
    .restart local v4    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    .end local v4    # "scanner":Ljava/util/Scanner;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v6, "UsbDeviceManager"

    const-string v7, "could not open audio source PCM file"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v6

    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "scanner":Ljava/util/Scanner;
    .local v4, "scanner":Ljava/util/Scanner;
    goto :goto_2

    .end local v4    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "scanner":Ljava/util/Scanner;
    goto :goto_1
.end method

.method private updateCurrentAccessory()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get0(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get0(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    const/4 v0, 0x1

    .local v0, "enteringAccessoryMode":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_1

    const-string v1, "UsbDeviceManager"

    const-string v2, "USB accessory re-attached, detach was not announced!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    :cond_0
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get1(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get1(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    const-string v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entering USB accessory mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    :cond_2
    :goto_1
    return-void

    .end local v0    # "enteringAccessoryMode":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "enteringAccessoryMode":Z
    goto :goto_0

    .end local v0    # "enteringAccessoryMode":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "enteringAccessoryMode":Z
    goto :goto_0

    :cond_5
    const-string v1, "UsbDeviceManager"

    const-string v2, "nativeGetAccessoryStrings failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-nez v0, :cond_2

    const-string v1, "UsbDeviceManager"

    const-string v2, "exited USB accessory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    :cond_7
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1, v8}, Lcom/android/server/usb/UsbDeviceManager;->-set0(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_1
.end method

.method private updateMidiFunction()V
    .locals 8

    .prologue
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v5, "midi"

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get11(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eq v1, v4, :cond_1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .local v2, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set4(Lcom/android/server/usb/UsbDeviceManager;I)I

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set5(Lcom/android/server/usb/UsbDeviceManager;I)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .end local v1    # "enabled":Z
    .end local v3    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4, v1}, Lcom/android/server/usb/UsbDeviceManager;->-set6(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get15(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get11(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    :goto_1
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->-get10(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    return-void

    .restart local v1    # "enabled":Z
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string v4, "UsbDeviceManager"

    const-string v5, "could not open MIDI PCM file"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    .local v1, "enabled":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v1, "enabled":Z
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v4

    .end local v1    # "enabled":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .restart local v1    # "enabled":Z
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .local v2, "scanner":Ljava/util/Scanner;
    goto :goto_3

    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_2
.end method

.method private updateUsbFunctions()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    return-void
.end method

.method private updateUsbNotification()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get16(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x0

    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .local v10, "r":Landroid/content/res/Resources;
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    if-nez v0, :cond_5

    const v6, 0x104046a

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eq v6, v0, :cond_3

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v3, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    :cond_2
    if-eqz v6, :cond_3

    const v0, 0x104046f

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "message":Ljava/lang/CharSequence;
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .local v11, "title":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.deviceinfo.UsbModeChooserActivity"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080655

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x1060070

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v6, v8, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_3
    return-void

    .end local v6    # "id":I
    .end local v10    # "r":Landroid/content/res/Resources;
    :cond_4
    return-void

    .restart local v6    # "id":I
    .restart local v10    # "r":Landroid/content/res/Resources;
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "mtp"

    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v6, 0x104046b

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "ptp"

    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v6, 0x104046c

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "midi"

    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v6, 0x104046d

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "accessory"

    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v6, 0x104046e

    goto/16 :goto_0

    :cond_9
    const v6, 0x104046a

    goto/16 :goto_0
.end method

.method private updateUsbStateBroadcast()V
    .locals 5

    .prologue
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "connected"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "configured"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "unlocked"

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "functions":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "functions":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private waitForState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "value":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    const-string v2, "sys.usb.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitForState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") FAILED: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    const-string v1, "USB Device State:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentFunctions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentFunctionsApplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUsbDataUnlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentAccessory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Kernel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Kernel function list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/functions"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v2, :cond_1

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "accessory"

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v2, :cond_2

    invoke-direct {p0, v5, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_3

    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_6

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_4

    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_7

    :goto_5
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    goto :goto_0

    :cond_7
    move v3, v4

    goto :goto_5

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, "functions":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v1    # "functions":Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_8

    :goto_6
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbDataUnlocked(Z)V

    goto :goto_0

    :cond_8
    move v3, v4

    goto :goto_6

    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    :cond_9
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0

    :pswitch_8
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v5, "mtp"

    invoke-static {v2, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v5, "ptp"

    invoke-static {v2, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_a

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const/16 v5, -0x2710

    if-eq v2, v5, :cond_a

    const-string v2, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current user switched to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; resetting USB host stack for MTP or PTP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    :cond_a
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    .local v0, "active":Z
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .locals 4
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "status"    # Landroid/hardware/usb/UsbPortStatus;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v0, 0x1

    .local v0, "hostConnected":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .end local v0    # "hostConnected":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hostConnected":Z
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v4, "DISCONNECTED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .local v1, "connected":I
    const/4 v0, 0x0

    .local v0, "configured":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    iput v0, v2, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_0

    const/16 v3, 0x3e8

    :cond_0
    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .end local v0    # "configured":I
    .end local v1    # "connected":I
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    const-string v4, "CONNECTED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "connected":I
    const/4 v0, 0x0

    .restart local v0    # "configured":I
    goto :goto_0

    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_2
    const-string v4, "CONFIGURED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "connected":I
    const/4 v0, 0x1

    .restart local v0    # "configured":I
    goto :goto_0

    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_3
    const-string v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
