.class public Lcom/android/server/voiceinteraction/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;,
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

.field private mCurrentSoundModelHandle:I

.field private mIsPowerSaveMode:Z

.field private mKeyphraseId:I

.field private final mLock:Ljava/lang/Object;

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionAborted:Z

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mRequested:Z

.field private mServiceDisabled:Z

.field private mStarted:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;


# direct methods
.method static synthetic -get0(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "callActive"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "isPowerSaveMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    iput v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    iput v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionAborted:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    move-result v1

    .local v1, "status":I
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    new-instance v2, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listModules status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", # of modules="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_0
.end method

.method private internalClearSoundModelLocked()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    return-void
.end method

.method private internalClearStateLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    :cond_0
    return-void
.end method

.method private onCallStateChangedLocked(Z)V
    .locals 1
    .param p1, "callActive"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    return-void
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .locals 1
    .param p1, "isPowerSaveMode"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    return-void
.end method

.method private onRecognitionAbortLocked()V
    .locals 2

    .prologue
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Recognition aborted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionAborted:Z

    return-void
.end method

.method private onRecognitionFailureLocked()V
    .locals 3

    .prologue
    const-string v1, "SoundTriggerHelper"

    const-string v2, "Recognition failure"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/high16 v2, -0x80000000

    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "SoundTriggerHelper"

    const-string v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    throw v1
.end method

.method private onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .prologue
    const/4 v4, 0x0

    const-string v2, "SoundTriggerHelper"

    const-string v3, "Recognition success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .local v1, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "SoundTriggerHelper"

    const-string v3, "Invalid keyphrase recognition event!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    aget-object v3, v1, v4

    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    if-eq v2, v3, :cond_2

    const-string v2, "SoundTriggerHelper"

    const-string v3, "received onRecognition event for a different keyphrase"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v2, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SoundTriggerHelper"

    const-string v3, "RemoteException in onDetected"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onServiceDiedLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/16 v2, -0x20

    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    :goto_0
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "SoundTriggerHelper"

    const-string v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    :cond_2
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    return-void
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    return-void
.end method

.method private updateRecognitionLocked(Z)I
    .locals 6
    .param p1, "notify"    # Z

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v3, :cond_1

    :cond_0
    return v5

    :cond_1
    iget v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x0

    .local v1, "start":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    if-ne v1, v3, :cond_4

    return v5

    .end local v1    # "start":Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "start":Z
    goto :goto_0

    :cond_4
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v2

    .local v2, "status":I
    if-eqz v2, :cond_6

    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRecognition failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onError"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    if-eqz p1, :cond_5

    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onRecognitionResumed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "status":I
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "status":I
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionAborted:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {v3, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v2

    :goto_2
    if-eqz v2, :cond_a

    const-string v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRecognition call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    :goto_3
    return v2

    :cond_9
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionAborted:Z

    goto :goto_2

    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onError"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    if-eqz p1, :cond_8

    :try_start_3
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "SoundTriggerHelper"

    const-string v4, "RemoteException in onRecognitionPaused"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "  module properties="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  keyphrase ID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  sound model handle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  sound model UUID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  current listener="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  requested="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  started="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  call active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  power save mode active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  service disabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iget-object v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .prologue
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v0, :cond_1

    const-string v0, "SoundTriggerHelper"

    const-string v2, "received onRecognition event without any listener for it"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid recognition event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :goto_0
    monitor-exit v1

    return-void

    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionAbortLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionFailureLocked()V

    goto :goto_0

    :pswitch_2
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceDied()V
    .locals 2

    .prologue
    const-string v0, "SoundTriggerHelper"

    const-string v1, "onServiceDied!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onServiceDiedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onServiceStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-ne v0, p1, :cond_0

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onServiceStateChangedLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    if-nez p1, :cond_0

    const-string v0, "SoundTriggerHelper"

    const-string v1, "Invalid sound model event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 10
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v9, -0x80000000

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return v9

    :cond_1
    if-eqz p4, :cond_0

    iget-object v6, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-eqz v7, :cond_4

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v4, v5, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    invoke-direct {v4, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    iput-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    :cond_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v4, :cond_5

    const-string v4, "SoundTriggerHelper"

    const-string v5, "Attempting startRecognition without the capability"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return v9

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v4, v4, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    const/4 v5, 0x0

    invoke-static {v4, p0, v5}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v4, :cond_6

    const-string v4, "SoundTriggerHelper"

    const-string v5, "startRecognition cannot attach to sound trigger module"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return v9

    :cond_6
    :try_start_2
    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    if-eq v4, v9, :cond_7

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-virtual {p2, v4}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_8

    const-string v4, "SoundTriggerHelper"

    const-string v5, "Canceling previous recognition"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/high16 v5, -0x80000000

    invoke-interface {v4, v5}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v4, 0x0

    :try_start_4
    iput-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    :cond_8
    iget v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    .local v2, "soundModelHandle":I
    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    if-eq v4, v9, :cond_9

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v4, :cond_e

    :cond_9
    const/4 v4, 0x1

    new-array v1, v4, [I

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    aput v4, v1, v5

    .local v1, "handle":[I
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v4, p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v3

    .local v3, "status":I
    if-eqz v3, :cond_c

    const-string v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadSoundModel call failed with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    return v3

    .end local v1    # "handle":[I
    .end local v2    # "soundModelHandle":I
    .end local v3    # "status":I
    :cond_a
    :try_start_5
    const-string v4, "SoundTriggerHelper"

    const-string v5, "Unloading previous sound model"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {v4, v5}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v3

    .restart local v3    # "status":I
    if-eqz v3, :cond_b

    const-string v4, "SoundTriggerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unloadSoundModel call failed with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .end local v3    # "status":I
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v4, "SoundTriggerHelper"

    const-string v5, "RemoteException in onDetectionStopped"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "handle":[I
    .restart local v2    # "soundModelHandle":I
    .restart local v3    # "status":I
    :cond_c
    const/4 v4, 0x0

    aget v4, v1, v4

    if-ne v4, v9, :cond_d

    const-string v4, "SoundTriggerHelper"

    const-string v5, "loadSoundModel call returned invalid sound model handle"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    return v9

    :cond_d
    const/4 v4, 0x0

    :try_start_7
    aget v2, v1, v4

    .end local v1    # "handle":[I
    .end local v3    # "status":I
    :cond_e
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    iput p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    iput v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    iput-object p2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    monitor-exit v6

    return v4
.end method

.method stopAllRecognitions()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_2

    monitor-exit v2

    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    move-result v0

    .local v0, "status":I
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 5
    .param p1, "keyphraseId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    const/high16 v4, -0x80000000

    if-nez p2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition without the capability"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v4

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v1, :cond_3

    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition without a successful startRecognition"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v4

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_4

    const-string v1, "SoundTriggerHelper"

    const-string v3, "Attempting stopRecognition for another recognition"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v4

    :cond_4
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .local v0, "status":I
    if-eqz v0, :cond_5

    monitor-exit v2

    return v0

    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    return v0

    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
