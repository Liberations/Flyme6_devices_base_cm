.class public abstract Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
.super Ljava/lang/Object;
.source "LiveDisplayFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "LiveDisplay"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private mSettingsObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;

.field private mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "LiveDisplay"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method protected final getBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    const/4 v4, -0x2

    invoke-static {v3, p1, v0, v4}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public abstract getCapabilities(Ljava/util/BitSet;)Z
.end method

.method protected final getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method protected final getMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    iget v0, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mMode:I

    return v0
.end method

.method protected final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcyanogenmod/providers/CMSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getTwilight()Lcom/android/server/twilight/TwilightState;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    return-object v0
.end method

.method protected final isLowPowerMode()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    iget-boolean v0, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mLowPowerMode:Z

    return v0
.end method

.method protected final isNight()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isScreenOn()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    iget-boolean v0, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mScreenOn:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mSettingsObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;->unregister()V

    return-void
.end method

.method protected onScreenStateChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method protected abstract onSettingsChanged(Landroid/net/Uri;)V
.end method

.method public abstract onStart()V
.end method

.method protected onTwilightUpdated()V
    .locals 0

    .prologue
    return-void
.end method

.method protected abstract onUpdate()V
.end method

.method protected final putBoolean(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, -0x2

    invoke-static {v1, p1, v0, v2}, Lcyanogenmod/providers/CMSettings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Lcyanogenmod/providers/CMSettings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method protected final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Lcyanogenmod/providers/CMSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method protected final varargs registerSettings([Landroid/net/Uri;)V
    .locals 1
    .param p1, "settings"    # [Landroid/net/Uri;

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mSettingsObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;->register([Landroid/net/Uri;)V

    return-void
.end method

.method start()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mSettingsObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;-><init>(Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mSettingsObserver:Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature$SettingsObserver;

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->onStart()V

    :cond_0
    return-void
.end method

.method update(ILorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "state"    # Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    .prologue
    const/4 v1, 0x0

    iput-object p2, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    sget v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->DISPLAY_CHANGED:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->onScreenStateChanged()V

    :cond_0
    sget v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->TWILIGHT_CHANGED:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->mState:Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;

    iget-object v0, v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->onTwilightUpdated()V

    :cond_1
    sget v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->MODE_CHANGED:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->onUpdate()V

    :cond_2
    sget v0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;->ALL_CHANGED:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;->onSettingsChanged(Landroid/net/Uri;)V

    :cond_3
    return-void
.end method
