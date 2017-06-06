.class public Lcom/android/internal/telephony/ProxyController;
.super Ljava/lang/Object;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ProxyController$1;
    }
.end annotation


# static fields
.field private static final EVENT_APPLY_RC_RESPONSE:I = 0x3

.field private static final EVENT_FINISH_RC_RESPONSE:I = 0x4

.field private static final EVENT_NOTIFICATION_RC_CHANGED:I = 0x1

.field private static final EVENT_START_RC_RESPONSE:I = 0x2

.field private static final EVENT_TIMEOUT:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "ProxyController"

.field private static final SET_RC_STATUS_APPLYING:I = 0x3

.field private static final SET_RC_STATUS_FAIL:I = 0x5

.field private static final SET_RC_STATUS_IDLE:I = 0x0

.field private static final SET_RC_STATUS_STARTED:I = 0x2

.field private static final SET_RC_STATUS_STARTING:I = 0x1

.field private static final SET_RC_STATUS_SUCCESS:I = 0x4

.field private static final SET_RC_TIMEOUT_WAITING_MSEC:I = 0xafc8

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentLogicalModemIds:[Ljava/lang/String;

.field private mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private mHandler:Landroid/os/Handler;

.field private mNewLogicalModemIds:[Ljava/lang/String;

.field private mNewRadioAccessFamily:[I

.field private mOldRadioAccessFamily:[I

.field private mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRadioAccessFamilyStatusCounter:I

.field private mRadioCapabilitySessionId:I

.field private mSetRadioAccessFamilyStatus:[I

.field private mTransactionFailed:Z

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

.field private mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

.field private mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onTimeoutRadioCapability(Landroid/os/Message;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p3, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lcom/android/internal/telephony/ProxyController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ProxyController$1;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iput-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    new-instance v2, Lcom/android/internal/telephony/UiccPhoneBookController;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    new-instance v2, Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    new-instance v2, Lcom/android/internal/telephony/UiccSmsController;

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/UiccSmsController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "ProxyController"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/telephony/PhoneProxy;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private clearTransaction()V
    .locals 4

    .prologue
    const-string v1, "clearTransaction"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearTransaction: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status=IDLE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private completeRadioCapabilityTransaction()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onFinishRadioCapabilityResponse: success="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v7, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v7, :cond_0

    move v7, v8

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-nez v7, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v7, v7

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v5

    .local v5, "raf":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "radioAccessFamily["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    new-instance v4, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v4, v0, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    .local v4, "phoneRC":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    .end local v4    # "phoneRC":Landroid/telephony/RadioAccessFamily;
    .end local v5    # "raf":I
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "rafs"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .end local v0    # "i":I
    .end local v3    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    iput-boolean v8, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v7, v7

    new-array v6, v7, [Landroid/telephony/RadioAccessFamily;

    .local v6, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    new-instance v7, Landroid/telephony/RadioAccessFamily;

    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v8, v8, v2

    invoke-direct {v7, v2, v8}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    goto :goto_2
.end method

.method private doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z
    .locals 13
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .local v9, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v11, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v11

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioCapability: new request session id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_0

    aget-object v0, p1, v8

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v1

    .local v1, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioCapability: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status=STARTING"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    aput v2, v0, v1

    aget-object v0, p1, v8

    invoke-virtual {v0}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v10

    .local v10, "requestedRaf":I
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aput v10, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getModemUuId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ProxyController;->getLogicalModemIdFromRaf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioCapability: mOldRadioAccessFamily["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioCapability: mNewRadioAccessFamily["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .end local v1    # "phoneId":I
    .end local v10    # "requestedRaf":I
    :cond_0
    monitor-exit v11

    return v12

    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProxyController;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method private getLogicalModemIdFromRaf(I)Ljava/lang/String;
    .locals 3
    .param p1, "raf"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "modemUuid":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getModemUuId()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "modemUuid":Ljava/lang/String;
    :cond_0
    return-object v0

    .restart local v0    # "modemUuid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private issueFinish(I)V
    .locals 9
    .param p1, "sessionId"    # I

    .prologue
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v8

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueFinish: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTransactionFailed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v0, v1

    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mCurrentLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_3

    const/4 v6, 0x2

    :goto_3
    const/4 v3, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueFinish: phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status: FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x5

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v4, v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-string v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-string v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    .local v1, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplyRadioCapabilityResponse: Ignore session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplyRadioCapabilityResponse: rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApplyRadioCapabilityResponse: Error response session="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    .local v0, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApplyRadioCapabilityResponse: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " status=FAIL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x5

    aput v4, v2, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .end local v0    # "id":I
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplyRadioCapabilityResponse: Valid start expecting notification rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/RadioCapability;

    .local v1, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationRadioCapabilityChanged: rc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " rc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    .local v0, "id":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " status=FAIL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x5

    aput v4, v2, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationRadioCapabilityChanged: APPLY URC success="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v3

    return-void

    :cond_5
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " status=SUCCESS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x4

    aput v4, v2, v0

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->retryAttach(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/PhoneProxy;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "id":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .local v9, "ar":Landroid/os/AsyncResult;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartRadioCapabilityResponse got exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v15

    return-void

    .end local v11    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/RadioCapability;

    .local v14, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartRadioCapabilityResponse: Ignore session="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rc="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v15

    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    invoke-virtual {v14}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v10

    .local v10, "id":I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartRadioCapabilityResponse: Error response session="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status=FAIL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v3, 0x5

    aput v3, v1, v10

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v1, :cond_6

    new-instance v13, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v13, v1}, Ljava/util/HashSet;-><init>(I)V

    .local v13, "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v12, v3, v1

    .local v12, "modemId":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    const-string v5, "ProxyController"

    const-string v6, "ERROR: sending down the same id for different phones"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v12    # "modemId":Ljava/lang/String;
    .end local v13    # "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status=STARTED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v3, 0x2

    aput v3, v1, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "id":I
    .end local v14    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :catchall_0
    move-exception v1

    monitor-exit v15

    throw v1

    .restart local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v10    # "id":I
    .restart local v13    # "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v14    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartRadioCapabilityResponse: success="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v13    # "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    monitor-exit v15

    return-void

    .restart local v13    # "modemsInUse":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v1, v1

    if-ge v2, v1, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mNewLogicalModemIds:[Ljava/lang/String;

    aget-object v6, v1, v2

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status=APPLYING"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private onTimeoutRadioCapability(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RadioCapability timeout: Ignore msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!= mRadioCapabilitySessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RadioCapability timeout: mSetRadioAccessFamilyStatus["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .local v1, "uniqueDifferentId":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mTransactionFailed:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->issueFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    .end local v1    # "uniqueDifferentId":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private resetRadioAccessFamilyStatusCounter()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    return-void
.end method

.method private sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "rcPhase"    # I
    .param p4, "radioFamily"    # I
    .param p5, "logicalModemId"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "eventId"    # I

    .prologue
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .local v0, "requestRC":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .param p1, "sub"    # I
    .param p2, "dataCleanedUpMsg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableDataConnectivity(I)V
    .locals 2
    .param p1, "sub"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(Z)V

    return-void
.end method

.method public getMaxRafSupported()I
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    new-array v3, v4, [I

    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    .local v1, "maxNumRafBit":I
    const/4 v2, 0x1

    .local v2, "maxRaf":I
    const/4 v0, 0x0

    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v3, v0

    aget v4, v3, v0

    if-ge v1, v4, :cond_0

    aget v1, v3, v0

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getMinRafSupported()I
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    new-array v3, v4, [I

    .local v3, "numRafSupported":[I
    const/4 v1, 0x0

    .local v1, "minNumRafBit":I
    const/4 v2, 0x1

    .local v2, "minRaf":I
    const/4 v0, 0x0

    .local v0, "len":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    aput v4, v3, v0

    if-eqz v1, :cond_0

    aget v4, v3, v0

    if-le v1, v4, :cond_1

    :cond_0
    aget v1, v3, v0

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getRadioAccessFamily(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v0

    return v0
.end method

.method public isDataDisconnected(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishRadioCapabilityResponse: Ignore session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onFinishRadioCapabilityResponse mRadioAccessFamilyStatusCounter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 8
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    array-length v4, p1

    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v5, v5

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Length of input rafs must equal to total phone count"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v5

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v4, v4, v0

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRadioCapability: Phone["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] is not idle. Rejecting request."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v7

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v5

    const/4 v3, 0x1

    .local v3, "same":Z
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v4

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v5

    if-eq v4, v5, :cond_3

    const/4 v3, 0x0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "same":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v3    # "same":Z
    :cond_4
    if-eqz v3, :cond_5

    const-string v4, "setRadioCapability: Already in requested configuration, nothing to do."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return v6

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v2

    .local v2, "raf":I
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    .local v1, "modemUuid":Ljava/lang/String;
    if-eq v2, v6, :cond_6

    if-nez v1, :cond_7

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRadioCapability: invalid RAF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or modemUuid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for phone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return v7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1    # "modemUuid":Ljava/lang/String;
    .end local v2    # "raf":I
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->doSetRadioCapabilities([Landroid/telephony/RadioAccessFamily;)Z

    move-result v4

    return v4
.end method

.method public unregisterForAllDataDisconnected(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateCurrentCarrierInProvider()Z

    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    return-void
.end method
