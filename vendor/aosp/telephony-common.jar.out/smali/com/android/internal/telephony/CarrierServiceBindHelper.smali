.class public Lcom/android/internal/telephony/CarrierServiceBindHelper;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$1;
    }
.end annotation


# static fields
.field private static final BIND_TIMEOUT_MILLIS:I = 0x2710

.field private static final EVENT_BIND:I = 0x0

.field private static final EVENT_BIND_TIMEOUT:I = 0x2

.field private static final EVENT_PACKAGE_CHANGED:I = 0x3

.field private static final EVENT_UNBIND:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .local v6, "numPhones":I
    new-array v0, v6, [Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    const/4 v7, 0x0

    .local v7, "phoneId":I
    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    new-instance v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-direct {v1, p0, v7}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V

    aput-object v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v1, "CarrierServiceBindHelper:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .local v0, "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :cond_0
    return-void
.end method

.method public updateForPhoneId(ILjava/lang/String;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update binding for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ABSENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "CARD_IO_ERROR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UNKNOWN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LOADED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string v0, "LOCKED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1
.end method
