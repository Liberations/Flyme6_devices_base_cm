.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;,
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.Power.Dialog#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "sys.shutdown.requested"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .end local v1    # "reboot":Z
    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "reboot":Z
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_0
    const-string v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .local v7, "languageTag":Ljava/lang/String;
    const-string v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xbc2

    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v6
.end method

.method private startBootstrapServices()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SystemServer"

    const-string v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v5, "Package Manager"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v5, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    return-void

    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SystemServer"

    const-string v5, "Device encrypted - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    return-void
.end method

.method private startOtherServices()V
    .locals 111

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .local v3, "context":Landroid/content/Context;
    const/16 v30, 0x0

    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v48, 0x0

    .local v48, "contentService":Lcom/android/server/content/ContentService;
    const/16 v104, 0x0

    .local v104, "vibrator":Lcom/android/server/VibratorService;
    const/16 v32, 0x0

    .local v32, "alarm":Landroid/app/IAlarmManager;
    const/16 v83, 0x0

    .local v83, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v84, 0x0

    .local v84, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v43, 0x0

    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v85, 0x0

    .local v85, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v95, 0x0

    .local v95, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v110, 0x0

    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v103, 0x0

    .local v103, "usb":Lcom/android/server/usb/UsbService;
    const/16 v92, 0x0

    .local v92, "serial":Lcom/android/server/SerialService;
    const/16 v88, 0x0

    .local v88, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v40, 0x0

    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v71, 0x0

    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v99, 0x0

    .local v99, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v46, 0x0

    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v35, 0x0

    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v82, 0x0

    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v63, 0x0

    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v39, 0x0

    .local v39, "cameraService":Lcom/android/server/camera/CameraService;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .local v57, "disableStorage":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .local v52, "disableBluetooth":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .local v53, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .local v58, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .local v56, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .local v54, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .local v55, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    .local v73, "isEmulator":Z
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x3f060005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v65

    .local v65, "externalServer":Ljava/lang/String;
    const-string v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .local v51, "disableAtlas":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v100, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v100

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_41

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v100, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v100

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v64, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v64

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_42

    .local v64, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "SystemServer"

    const-string v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v31, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string v4, "account"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_43

    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v48

    .local v48, "contentService":Lcom/android/server/content/ContentService;
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v105, Lcom/android/server/VibratorService;

    move-object/from16 v0, v105

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v105, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string v4, "vibrator"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v47, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_44

    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string v4, "consumer_ir"

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v32

    .local v32, "alarm":Landroid/app/IAlarmManager;
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v109

    .local v109, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v109

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v72, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_45

    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string v4, "SystemServer"

    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const/4 v8, 0x1

    move-object/from16 v0, v72

    invoke-static {v3, v0, v4, v8, v5}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v110

    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string v4, "window"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v4, "input"

    move-object/from16 v0, v72

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v110

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v72 .. v72}, Lcom/android/server/input/InputManagerService;->start()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    if-eqz v73, :cond_2b

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_3
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v99, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_4
    const/16 v96, 0x0

    .local v96, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v90, 0x0

    .local v90, "notification":Landroid/app/INotificationManager;
    const/16 v69, 0x0

    .local v69, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v107, 0x0

    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v74, 0x0

    .local v74, "location":Lcom/android/server/LocationManagerService;
    const/16 v49, 0x0

    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v101, 0x0

    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v76, 0x0

    .local v76, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v33, 0x0

    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v78, 0x0

    .local v78, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v66, 0x0

    .local v66, "gestureService":Lcom/android/server/gesture/GestureService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v70, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v70

    move-object/from16 v1, v110

    invoke-direct {v0, v3, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string v4, "input_method"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_40

    move-object/from16 v69, v70

    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_5
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    :cond_0
    :goto_6
    :try_start_c
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    if-nez v57, :cond_1

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .end local v83    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    :goto_9
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3f

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    if-nez v56, :cond_3

    :try_start_f
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v77, Lcom/android/server/FlymeExtLockSettingsService;

    move-object/from16 v0, v77

    invoke-direct {v0, v3}, Lcom/android/server/FlymeExtLockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .end local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v77, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_10
    const-string v4, "lock_settings"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3e

    move-object/from16 v76, v77

    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_b
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_3
    if-nez v58, :cond_4

    :try_start_11
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v97, Lcom/android/server/statusbar/FlymeExtStatusBarManagerService;

    move-object/from16 v0, v97

    move-object/from16 v1, v110

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/FlymeExtStatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .end local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v97, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_12
    const-string v4, "statusbar"

    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3d

    move-object/from16 v96, v97

    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_c
    if-nez v56, :cond_5

    :try_start_13
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    :cond_5
    :goto_d
    if-nez v54, :cond_6

    :try_start_14
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_b

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_6
    :goto_e
    if-nez v56, :cond_7

    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v102, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_c

    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v102, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_16
    const-string v4, "textservices"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_3c

    move-object/from16 v101, v102

    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_f
    if-nez v54, :cond_34

    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v86, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v86

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d

    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v86, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_18
    const-string v4, "network_score"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3b

    move-object/from16 v85, v86

    .end local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_10
    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v87, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v87

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_e

    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v87, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1a
    const-string v4, "netstats"

    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3a

    move-object/from16 v6, v87

    .end local v87    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_11
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    .end local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1c
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_39

    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_9
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v44, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_10

    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1e
    const-string v4, "connectivity"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_38

    move-object/from16 v43, v44

    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    :try_start_1f
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v95

    .local v95, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string v4, "servicediscovery"

    move-object/from16 v0, v95

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_11

    .end local v95    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_14
    if-nez v56, :cond_a

    :try_start_20
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_12

    :cond_a
    :goto_15
    if-eqz v83, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_30

    :cond_b
    :goto_16
    if-eqz v30, :cond_c

    :try_start_21
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_14

    :cond_c
    :goto_17
    if-eqz v48, :cond_d

    :try_start_22
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_15

    :cond_d
    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v90

    .local v90, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v90

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v53, :cond_e

    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v75, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v75

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_16

    .end local v74    # "location":Lcom/android/server/LocationManagerService;
    .local v75, "location":Lcom/android/server/LocationManagerService;
    :try_start_24
    const-string v4, "location"

    move-object/from16 v0, v75

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_37

    move-object/from16 v74, v75

    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    :goto_19
    :try_start_25
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v50, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_17

    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_26
    const-string v4, "country_detector"

    move-object/from16 v0, v50

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_36

    move-object/from16 v49, v50

    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_1a
    if-nez v56, :cond_f

    :try_start_27
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_18

    :cond_f
    :goto_1b
    :try_start_28
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_19

    :goto_1c
    if-nez v56, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :try_start_29
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v108, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1a

    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v108, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2a
    const-string v4, "wallpaper"

    move-object/from16 v0, v108

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_35

    move-object/from16 v107, v108

    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_1d
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v36, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1b

    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_2c
    const-string v4, "audio"

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_34

    move-object/from16 v35, v36

    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_1e
    if-nez v56, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ThermalObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_11
    :try_start_2d
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v71

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1c

    :goto_1f
    if-nez v56, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_14
    :try_start_2e
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v93, Lcom/android/server/SerialService;

    move-object/from16 v0, v93

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1d

    .end local v92    # "serial":Lcom/android/server/SerialService;
    .local v93, "serial":Lcom/android/server/SerialService;
    :try_start_2f
    const-string v4, "serial"

    move-object/from16 v0, v93

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_33

    move-object/from16 v92, v93

    .end local v93    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v56, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "SystemServer"

    const-string v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_19
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1e

    :goto_21
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1f

    :goto_22
    if-nez v54, :cond_1a

    if-eqz v55, :cond_31

    .end local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_23
    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_21

    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v41, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_33
    const-string v4, "commontime_management"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_32

    move-object/from16 v40, v41

    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_24
    if-nez v54, :cond_1b

    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v38, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_22

    :cond_1b
    :goto_25
    if-nez v56, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_1c
     goto/16 :goto_flyme_0
    if-nez v56, :cond_1d

    if-eqz v51, :cond_32

    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1d
    :goto_flyme_0
    :goto_26
    if-nez v56, :cond_1e

    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1e
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableGestureService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v67, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v67

    move-object/from16 v1, v71

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_24

    .end local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v67, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_36
    const-string v4, "gesture"

    move-object/from16 v0, v67

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_30

    move-object/from16 v66, v67

    .end local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_1f
    :goto_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_22
    if-nez v56, :cond_23

    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v79, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_25

    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v79, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_38
    const-string v4, "media_router"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_2f

    move-object/from16 v78, v79

    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_26

    :cond_23
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .end local v90    # "notification":Landroid/app/INotificationManager;
    :goto_2a
    if-nez v56, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_port"

    const-string v8, "service.adb.tcp.port"

    const-string v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v5, v8}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_port"

    invoke-static {v5}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v8, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v91

    .local v91, "safeMode":Z
    if-eqz v91, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v82

    .end local v82    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v82, Lcom/android/server/MmsServiceBroker;

    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_3a
    invoke-static/range {v65 .. v65}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v94

    .local v94, "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    move-object/from16 v0, v94

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v45

    .local v45, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .local v37, "baseObject":Ljava/lang/Object;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "run"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v80

    .local v80, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    move-object/from16 v0, v80

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v80

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_3a} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_3a} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_3a} :catch_27
    .catch Ljava/lang/InstantiationException; {:try_start_3a .. :try_end_3a} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3a .. :try_end_3a} :catch_27

    .end local v37    # "baseObject":Ljava/lang/Object;
    .end local v45    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v80    # "method":Ljava/lang/reflect/Method;
    .end local v94    # "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v4, v110

    move-object/from16 v5, v107

    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    :try_start_3b
    invoke-virtual/range {v104 .. v104}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_28

    :goto_2d
    if-eqz v76, :cond_25

    :try_start_3c
    invoke-virtual/range {v76 .. v76}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_29

    :cond_25
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    :try_start_3d
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_2a

    :goto_2f
    if-eqz v91, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_26
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    .local v42, "config":Landroid/content/res/Configuration;
    new-instance v81, Landroid/util/DisplayMetrics;

    invoke-direct/range {v81 .. v81}, Landroid/util/DisplayMetrics;-><init>()V

    .local v81, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/view/WindowManager;

    .local v106, "w":Landroid/view/WindowManager;
    invoke-interface/range {v106 .. v106}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v42

    move-object/from16 v1, v81

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v98

    .local v98, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v98 .. v98}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual/range {v98 .. v98}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_27
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2b

    :goto_30
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_2c

    :goto_31
    :try_start_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v91

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_2d

    :goto_32
    if-eqz v66, :cond_28

    :try_start_41
    invoke-virtual/range {v66 .. v66}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2e

    :cond_28
    :goto_33
    move-object v12, v7

    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v43

    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v85

    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v107

    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v69

    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v20, v74

    .local v20, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v21, v49

    .local v21, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v88

    .local v22, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v40

    .local v23, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v24, v101

    .local v24, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v96

    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v25, v33

    .local v25, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v26, v71

    .local v26, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v27, v99

    .local v27, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v28, v78

    .local v28, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v35

    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v29, v82

    .local v29, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v29}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    return-void

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v21    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v22    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v24    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v25    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v26    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v27    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v28    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v29    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v81    # "metrics":Landroid/util/DisplayMetrics;
    .end local v91    # "safeMode":Z
    .end local v98    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v106    # "w":Landroid/view/WindowManager;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v83    # "mountService":Landroid/os/storage/IMountService;
    .restart local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v92    # "serial":Lcom/android/server/SerialService;
    .local v95, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v62

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v62, "e":Ljava/lang/Throwable;
    :goto_34
    :try_start_42
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_42} :catch_1

    goto/16 :goto_0

    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v61

    .local v61, "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v99, v100

    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_35
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .end local v61    # "e":Ljava/lang/RuntimeException;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_29
    const/4 v4, 0x0

    goto/16 :goto_1

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2a
    const/4 v4, 0x0

    goto/16 :goto_2

    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2b
    :try_start_43
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_35

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2c
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2d
    if-eqz v52, :cond_2e

    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2e
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_2

    goto/16 :goto_3

    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .end local v109    # "watchdog":Lcom/android/server/Watchdog;
    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v74    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v90, "notification":Landroid/app/INotificationManager;
    .restart local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v62

    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_2f
    :try_start_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_6

    move-result-object v83

    .local v83, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_8

    .local v83, "mountService":Landroid/os/storage/IMountService;
    :catch_6
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v83    # "mountService":Landroid/os/storage/IMountService;
    :catch_7
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v62

    .end local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v62

    .end local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v62

    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v62

    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v62

    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v84

    .end local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_3c
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v62

    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v95    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_11
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_30
    :try_start_45
    invoke-interface/range {v83 .. v83}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_45} :catch_13

    goto/16 :goto_16

    :catch_13
    move-exception v68

    .local v68, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_16

    .end local v68    # "ignored":Landroid/os/RemoteException;
    :catch_14
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .end local v62    # "e":Ljava/lang/Throwable;
    .local v90, "notification":Landroid/app/INotificationManager;
    :catch_16
    move-exception v62

    .end local v74    # "location":Lcom/android/server/LocationManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v62

    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v62

    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v62

    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v62

    .end local v92    # "serial":Lcom/android/server/SerialService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_31
    :try_start_46
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v89, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v89

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_20

    .end local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v89, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v88, v89

    .end local v89    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v88, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_23

    .local v88, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_20
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_21
    move-exception v62

    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_32
    :try_start_47
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v34, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_23

    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_48
    const-string v4, "assetatlas"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_31

    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_26

    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    :catch_23
    move-exception v62

    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v62

    .end local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v62

    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v90    # "notification":Landroid/app/INotificationManager;
    .restart local v91    # "safeMode":Z
    :cond_33
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2b

    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_27
    move-exception v60

    .local v60, "e":Ljava/lang/ReflectiveOperationException;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to start  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v65

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SystemServer"

    move-object/from16 v0, v60

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .end local v60    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_28
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v42    # "config":Landroid/content/res/Configuration;
    .restart local v81    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v98    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v106    # "w":Landroid/view/WindowManager;
    :catch_2b
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v81    # "metrics":Landroid/util/DisplayMetrics;
    .end local v91    # "safeMode":Z
    .end local v98    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v106    # "w":Landroid/view/WindowManager;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v90    # "notification":Landroid/app/INotificationManager;
    :catch_2f
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v78, v79

    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v78, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_46

    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v78, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_30
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v66, v67

    .end local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v66, "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_45

    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v66, "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_31
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_44

    .end local v62    # "e":Ljava/lang/Throwable;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_32
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v40, v41

    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_43

    .end local v62    # "e":Ljava/lang/Throwable;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v93    # "serial":Lcom/android/server/SerialService;
    :catch_33
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v92, v93

    .end local v93    # "serial":Lcom/android/server/SerialService;
    .local v92, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_42

    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v92, "serial":Lcom/android/server/SerialService;
    :catch_34
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v35, v36

    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_41

    .end local v62    # "e":Ljava/lang/Throwable;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_35
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v107, v108

    .end local v108    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_40

    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_36
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v49, v50

    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3f

    .end local v62    # "e":Ljava/lang/Throwable;
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    :catch_37
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v74, v75

    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .local v74, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3e

    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v74, "location":Lcom/android/server/LocationManagerService;
    .local v90, "notification":Landroid/app/INotificationManager;
    .restart local v95    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_38
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v43, v44

    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3d

    .end local v62    # "e":Ljava/lang/Throwable;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_39
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3c

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v84    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v87    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3a
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v87

    .end local v87    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3b

    .end local v62    # "e":Ljava/lang/Throwable;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3b
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v85, v86

    .end local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v85, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3a

    .end local v62    # "e":Ljava/lang/Throwable;
    .local v85, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3c
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v101, v102

    .end local v102    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_39

    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3d
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v96, v97

    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v96, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_38

    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v96, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3e
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v76, v77

    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v76, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_37

    .end local v62    # "e":Ljava/lang/Throwable;
    .local v76, "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3f
    move-exception v59

    .local v59, "e":Landroid/os/RemoteException;
    goto/16 :goto_a

    .end local v59    # "e":Landroid/os/RemoteException;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v83    # "mountService":Landroid/os/storage/IMountService;
    :catch_40
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v69, v70

    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v69, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_36

    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v74    # "location":Lcom/android/server/LocationManagerService;
    .end local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v90    # "notification":Landroid/app/INotificationManager;
    .end local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v99, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    .local v110, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_41
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_35

    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_42
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v99, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_35

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_43
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_35

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_44
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "vibrator":Lcom/android/server/VibratorService;
    :catch_45
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v99, v100

    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v104, v105

    .end local v105    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    :catch_46
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_34

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v83    # "mountService":Landroid/os/storage/IMountService;
    .end local v100    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .end local v110    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v66    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v74    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v90    # "notification":Landroid/app/INotificationManager;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_34
    move-object/from16 v2, v84

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_14

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v76    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_35
    move-object/from16 v2, v84

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2a
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
