.class public Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;
.super Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
.source "OutdoorModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;
    }
.end annotation


# static fields
.field private static final SENSOR_WINDOW_MS:I = 0xbb8


# instance fields
.field private final mDefaultAutoOutdoorMode:Z

.field private final mDefaultOutdoorLux:I

.field private final mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mIsOutdoor:Z

.field private mIsSensorEnabled:Z

.field private final mListener:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

.field private mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

.field private final mOutdoorLuxHysteresis:I

.field private final mSelfManaged:Z

.field private final mUseOutdoorMode:Z


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    return v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateOutdoorMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;-><init>(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mListener:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->isSunlightEnhancementSelfManaged()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultOutdoorLux:I

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mOutdoorLuxHysteresis:I

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultAutoOutdoorMode:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateOutdoorMode()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateSensorState()V

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .local v0, "enabled":Z
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isLowPowerMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getMode()I

    move-result v1

    .local v1, "mode":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .end local v1    # "mode":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v3, 0x100

    invoke-virtual {v2, v3, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "enabled":Z
    :cond_2
    monitor-exit p0

    return-void

    .restart local v0    # "enabled":Z
    .restart local v1    # "mode":I
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isNight()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .end local v0    # "enabled":Z
    .end local v1    # "mode":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateSensorState()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .local v1, "sensorEnabled":Z
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isLowPowerMode()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsSensorEnabled:Z

    if-eq v3, v1, :cond_4

    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsSensorEnabled:Z

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mListener:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    :cond_3
    invoke-virtual {v3, v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->setTransitionListener(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getMode()I

    move-result v0

    .local v0, "mode":I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isNight()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "mode":I
    .end local v1    # "sensorEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "OutdoorModeController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSelfManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultOutdoorLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultOutdoorLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOutdoorLuxHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mOutdoorLuxHysteresis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  OutdoorModeController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAutoOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsOutdoor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isNight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    hardware state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1
    .param p1, "caps"    # Ljava/util/BitSet;

    .prologue
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    return v0
.end method

.method getDefaultAutoOutdoorMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultAutoOutdoorMode:Z

    return v0
.end method

.method isAutomaticOutdoorModeEnabled()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_0

    const-string v0, "display_auto_outdoor_mode"

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getDefaultAutoOutdoorMode()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized onScreenStateChanged()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateSensorState()V

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateOutdoorMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .locals 6

    .prologue
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_1

    new-instance v0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultOutdoorLux:I

    int-to-float v3, v3

    iget v4, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mOutdoorLuxHysteresis:I

    int-to-float v4, v4

    const/16 v5, 0xbb8

    invoke-direct/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;-><init>(Landroid/content/Context;Landroid/os/Looper;FFI)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "display_auto_outdoor_mode"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->registerSettings([Landroid/net/Uri;)V

    return-void
.end method

.method protected onTwilightUpdated()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateOutdoorMode()V

    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateOutdoorMode()V

    return-void
.end method

.method setAutomaticOutdoorModeEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "display_auto_outdoor_mode"

    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    return v0
.end method
