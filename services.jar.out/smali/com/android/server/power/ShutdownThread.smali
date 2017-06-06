.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$FlymeInjector;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$1;
    }
.end annotation


# static fields
.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final OEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/oem/media/shutdownanimation.zip"

.field private static final OEM_SHUTDOWN_MUSIC_FILE:Ljava/lang/String; = "/oem/media/shutdown.wav"

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static RECOVERY_COMMAND_FILE:Ljava/io/File; = null

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_MUSIC_FILE:Ljava/lang/String; = "/system/media/shutdown.wav"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SOFT_REBOOT:Ljava/lang/String; = "soft_reboot"

.field private static final SYSTEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation.zip"

.field private static final SYSTEM_ENCRYPTED_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation-encrypted.zip"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mMediaPlayer:Landroid/media/MediaPlayer;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static mRebootWipe:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private isShutdownMusicPlaying:Z

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private shutdownMusicHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2()Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic -get6()Lcom/android/server/power/ShutdownThread;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/power/ShutdownThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    return p1
.end method

.method static synthetic -set1(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic -set3(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1()V
    .locals 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->doSoftReboot()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery/command"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z

    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Lcom/android/server/power/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v11, #android:string@reboot_progress#t

    const v10, #android:string@reboot_title#t

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    const-string v3, "ShutdownThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .local v2, "pd":Landroid/app/ProgressDialog;
    const-string v3, "recovery"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/io/File;

    const-string v4, "/cache/recovery/uncrypt_file"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_2
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->RECOVERY_COMMAND_FILE:Ljava/io/File;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "wipe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v3, :cond_4

    const v3, #android:string@reboot_to_update_title#t

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, #android:string@reboot_to_update_prepare#t

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v2, v9}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v2, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    :goto_1
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    sput-object v3, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v8, v4, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkAnimationFileExist()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread$FlymeInjector;->showShutDownAnimation(Landroid/content/Context;)V

    :cond_2
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_3
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "ShutdownThread-cpu"

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_4
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "ShutdownThread-screen"

    const/16 v6, 0x1a

    invoke-virtual {v4, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_3
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v4, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    iput-object v4, v3, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v3}, Lcom/android/server/power/ShutdownThread;->start()V

    return-void

    .end local v2    # "pd":Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "pd":Landroid/app/ProgressDialog;
    :cond_4
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootWipe:Z

    if-eqz v3, :cond_5

    const v3, #android:string@reboot_to_reset_title#t

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, #android:string@reboot_to_reset_message#t

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    :cond_6
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    :cond_7
    const v3, #android:string@power_off#t

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, #android:string@shutdown_progress#t

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method private static checkAnimationFileExist()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/oem/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation-encrypted.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 11
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const-string v1, "com.qti.server.power.ShutdownOem"

    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v7, "rebootOrShutdown"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "ShutdownThread"

    const-string v8, "Unknown exception hit while trying to invode rebootOrShutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v5

    .local v5, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_3
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rebootOrShutdown method not found in class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "ShutdownThread"

    const-string v8, "Unknown exception while trying to invoke rebootOrShutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static doSoftReboot()V
    .locals 4

    .prologue
    :try_start_0
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "failure trying to perform soft reboot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getShutdownMusicFilePath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "/oem/media/shutdown.wav"

    aput-object v4, v1, v3

    const-string v4, "/system/media/shutdown.wav"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .local v1, "fileName":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "checkFile":Ljava/io/File;
    array-length v4, v1

    .end local v0    # "checkFile":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .local v2, "music":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "checkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "checkFile":Ljava/io/File;
    .end local v2    # "music":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getUiContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    move-object v0, p0

    return-object v0
    const/4 v0, 0x0

    .local v0, "uiContext":Landroid/content/Context;
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/cyanogenmod/internal/util/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .local v0, "uiContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.television"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, #android:style@Theme.Leanback.Dialog.Alert#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .end local v0    # "uiContext":Landroid/content/Context;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return-object v0

    .restart local v0    # "uiContext":Landroid/content/Context;
    :cond_1
    const v1, #android:style@Theme.Power.Dialog#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    goto :goto_0

    .end local v0    # "uiContext":Landroid/content/Context;
    :cond_2
    move-object v0, p0

    goto :goto_1
.end method

.method private static isAdvancedRebootPossible(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "advanced_reboot"

    invoke-static {v5, v6, v4}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v0, 0x1

    .local v0, "advancedRebootEnabled":Z
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v1, 0x1

    .local v1, "isPrimaryUser":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v1, v4

    .end local v1    # "isPrimaryUser":Z
    :cond_1
    return v1

    .end local v0    # "advancedRebootEnabled":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "keyguardLocked":Z
    goto :goto_0

    .end local v2    # "keyguardLocked":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "advancedRebootEnabled":Z
    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isPrimaryUser":Z
    goto :goto_2
.end method

.method private static isSilentMode()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method private static lockDevice()V
    .locals 4

    .prologue
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "boot animation can not lock device!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .local v0, "uiContext":Landroid/content/Context;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    invoke-static {p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rebooting, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    const-string v3, "ShutdownThread"

    const-string v4, "Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v3, "ShutdownThread"

    const-string v4, "Performing low-level shutdown..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    return-void

    :cond_1
    if-eqz p0, :cond_0

    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_0
    sget-object v3, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v1    # "unused":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ShutdownThread"

    const-string v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v2, 0x1

    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static showShutdownAnimation()V
    .locals 2

    .prologue
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .local v0, "uiContext":Landroid/content/Context;
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v13, 0x0

    sget-object v11, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v10, :cond_0

    const-string v10, "ShutdownThread"

    const-string v12, "Request to shutdown already running, returning."

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    return-void

    :cond_0
    monitor-exit v11

    const/4 v8, 0x0

    .local v8, "showRebootOption":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_menu_actions"

    const/4 v12, -0x2

    invoke-static {v10, v11, v12}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "actions":Ljava/lang/String;
    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #android:array@config_globalActionsList#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "actionsArray":[Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v1

    if-ge v5, v10, :cond_1

    aget-object v10, v1, v5

    const-string v11, "reboot"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v8, 0x1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #android:integer@config_longPressOnPowerBehavior#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .local v6, "longPressBehavior":I
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v10, :cond_7

    const v7, #android:string@reboot_safemode_confirm#t

    .local v7, "resourceId":I
    :goto_2
    if-eqz v8, :cond_2

    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v10, :cond_9

    :cond_2
    :goto_3
    const-string v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    new-instance v3, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .local v3, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isAdvancedRebootPossible(Landroid/content/Context;)Z

    move-result v2

    .local v2, "advancedReboot":Z
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v9

    .local v9, "uiContext":Landroid/content/Context;
    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    sput-object v13, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    :cond_3
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v10, :cond_a

    const v10, #android:string@reboot_safemode_title#t

    :goto_4
    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .local v4, "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    if-eqz v2, :cond_4

    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v10, :cond_c

    :cond_4
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_5
    new-instance v10, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v10, v2, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(ZLandroid/content/Context;)V

    const v11, #android:string@yes#t

    invoke-virtual {v4, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v10, #android:string@no#t

    invoke-virtual {v4, v10, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    sput-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v10, v3, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d9

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    sget-object v10, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .end local v2    # "advancedReboot":Z
    .end local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v4    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "uiContext":Landroid/content/Context;
    :goto_6
    return-void

    .end local v0    # "actions":Ljava/lang/String;
    .end local v1    # "actionsArray":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "longPressBehavior":I
    .end local v7    # "resourceId":I
    .end local v8    # "showRebootOption":Z
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .restart local v0    # "actions":Ljava/lang/String;
    .restart local v8    # "showRebootOption":Z
    :cond_5
    const-string v10, "\\|"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "actionsArray":[Ljava/lang/String;
    goto/16 :goto_0

    .restart local v5    # "i":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .restart local v6    # "longPressBehavior":I
    :cond_7
    const/4 v10, 0x2

    if-ne v6, v10, :cond_8

    const v7, #android:string@shutdown_confirm_question#t

    .restart local v7    # "resourceId":I
    goto/16 :goto_2

    .end local v7    # "resourceId":I
    :cond_8
    const v7, #android:string@shutdown_confirm#t

    .restart local v7    # "resourceId":I
    goto/16 :goto_2

    :cond_9
    const v7, #android:string@reboot_confirm#t

    goto/16 :goto_3

    .restart local v2    # "advancedReboot":Z
    .restart local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v9    # "uiContext":Landroid/content/Context;
    :cond_a
    if-eqz v8, :cond_b

    const v10, #android:string@reboot_title#t

    goto :goto_4

    :cond_b
    const v10, #android:string@power_off#t

    goto :goto_4

    .restart local v4    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_c
    const v10, #android:array@shutdown_reboot_options#t

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v13}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .end local v2    # "advancedReboot":Z
    .end local v3    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v4    # "confirmDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "uiContext":Landroid/content/Context;
    :cond_d
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_6
.end method

.method private shutdownRadios(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v2, v8, v10

    .local v2, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$7;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    int-to-long v8, p1

    :try_start_0
    invoke-virtual {v0, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    const-string v1, "ShutdownThread"

    const-string v4, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private uncrypt()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v3, "ShutdownThread"

    const-string v4, "Calling uncrypt and monitoring the progress..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    new-array v0, v3, [Z

    .local v0, "done":[Z
    aput-boolean v6, v0, v6

    new-instance v1, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;[Z)V

    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/32 v4, 0xdbba0

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-boolean v3, v0, v6

    if-nez v3, :cond_0

    const-string v3, "ShutdownThread"

    const-string v4, "Timed out waiting for uncrypt."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "unused":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 34

    .prologue
    new-instance v6, Lcom/android/server/power/ShutdownThread$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_d

    const-string v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .local v28, "reason":Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    .local v20, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v20, v8

    .local v14, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_f

    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v14    # "delay":J
    :cond_1
    monitor-exit v4

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_2
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_4
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    check-cast v27, Lcom/android/server/pm/PackageManagerService;

    .local v27, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v27, :cond_5

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_6
    const/16 v29, 0x0

    .local v29, "shutDownFile":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkAnimationFileExist()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->lockDevice()V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showShutdownAnimation()V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getShutdownMusicFilePath()Ljava/lang/String;

    move-result-object v29

    .local v29, "shutDownFile":Ljava/lang/String;
    if-eqz v29, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .end local v29    # "shutDownFile":Ljava/lang/String;
    :cond_7
    const-string v2, "ShutdownThread"

    const-string v4, "wait for shutdown music"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v22, v4, v8

    .local v22, "endTimeForMusic":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v22, v8

    .restart local v14    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_11

    const-string v2, "ShutdownThread"

    const-string v5, "play shutdown music timeout!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v14    # "delay":J
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-nez v2, :cond_9

    const-string v2, "ShutdownThread"

    const-string v5, "play shutdown music complete."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    monitor-exit v4

    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_a
    new-instance v26, Lcom/android/server/power/ShutdownThread$5;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .local v26, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ro.crypto.state"

    const-string v4, "unsupported"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "cryptoStatus":Ljava/lang/String;
    const-string v2, "encrypted"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    .local v24, "isEncrypted":Z
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_b

    if-eqz v24, :cond_b

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    :cond_b
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v18, v4, v8

    .local v18, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v25

    .local v25, "mount":Landroid/os/storage/IMountService;
    if-eqz v25, :cond_12

    invoke-interface/range {v25 .. v26}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v25    # "mount":Landroid/os/storage/IMountService;
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v18, v8

    .restart local v14    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_13

    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v14    # "delay":J
    :cond_c
    monitor-exit v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    return-void

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v12    # "cryptoStatus":Ljava/lang/String;
    .end local v18    # "endShutTime":J
    .end local v20    # "endTime":J
    .end local v22    # "endTimeForMusic":J
    .end local v24    # "isEncrypted":Z
    .end local v26    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v27    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v28    # "reason":Ljava/lang/String;
    :cond_d
    const-string v2, "0"

    goto/16 :goto_0

    :cond_e
    const-string v2, ""

    goto/16 :goto_1

    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v14    # "delay":J
    .restart local v20    # "endTime":J
    .restart local v28    # "reason":Ljava/lang/String;
    :cond_f
    :try_start_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_10

    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v32

    const-wide v32, 0x40c3880000000000L    # 10000.0

    div-double v8, v8, v32

    double-to-int v0, v8

    move/from16 v30, v0

    .local v30, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v30

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v30    # "status":I
    :cond_10
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2

    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_1
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v14    # "delay":J
    .restart local v22    # "endTimeForMusic":J
    .restart local v27    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_11
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    :catch_2
    move-exception v17

    .restart local v17    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_4

    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .restart local v12    # "cryptoStatus":Ljava/lang/String;
    .restart local v18    # "endShutTime":J
    .restart local v24    # "isEncrypted":Z
    .restart local v25    # "mount":Landroid/os/storage/IMountService;
    .restart local v26    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_12
    :try_start_8
    const-string v2, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_5

    .end local v25    # "mount":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v16

    .local v16, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v2, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_5

    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v4

    throw v2

    .restart local v14    # "delay":J
    :cond_13
    :try_start_a
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_14

    const-wide/16 v8, 0x4e20

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v32

    const-wide v32, 0x40d3880000000000L    # 20000.0

    div-double v8, v8, v32

    double-to-int v0, v8

    move/from16 v30, v0

    .restart local v30    # "status":I
    add-int/lit8 v30, v30, 0x12

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v30

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v30    # "status":I
    :cond_14
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_5

    :catch_4
    move-exception v17

    .restart local v17    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_5
.end method
