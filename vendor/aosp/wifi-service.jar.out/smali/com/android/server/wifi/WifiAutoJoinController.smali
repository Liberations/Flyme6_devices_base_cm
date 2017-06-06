.class public Lcom/android/server/wifi/WifiAutoJoinController;
.super Ljava/lang/Object;
.source "WifiAutoJoinController.java"


# static fields
.field private static final ASSOC_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUTO_JOIN_EXTENDED_ROAMING:I = 0x2

.field public static final AUTO_JOIN_IDLE:I = 0x0

.field public static final AUTO_JOIN_OUT_OF_NETWORK_ROAMING:I = 0x3

.field public static final AUTO_JOIN_ROAMING:I = 0x1

.field private static DBG:Z = false

.field private static final DEFAULT_EPHEMERAL_OUT_OF_RANGE_TIMEOUT_MS:J = 0xea60L

.field public static final HIGH_THRESHOLD_MODIFIER:I = 0x5

.field public static final MAX_RSSI_DELTA:I = 0x32

.field private static final TAG:Ljava/lang/String; = "WifiAutoJoinController "

.field private static VDBG:Z = false

.field private static final loseBlackListHardMilli:J = 0x1b77400L

.field private static final loseBlackListSoftMilli:J = 0x1b7740L

.field public static mScanResultAutoJoinAge:I

.field public static mScanResultMaximumAge:I

.field private static final mStaStaSupported:Z


# instance fields
.field didBailDueToWeakRssi:Z

.field didOverride:Z

.field private mAllowUntrustedConnections:Z

.field private mBlacklistedBssids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentConfigurationKey:Ljava/lang/String;

.field private mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private final scanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private scoreManager:Landroid/net/NetworkScoreManager;

.field weakRssiBailCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    const v0, 0x9c40

    sput v0, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    const/16 v0, 0x1388

    sput v0, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ASSOCIATING"

    aput-object v1, v0, v2

    const-string v1, "ASSOCIATED"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "FOUR_WAY_HANDSHAKE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "GROUP_KEY_HANDSHAKE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiAutoJoinController;->ASSOC_STATES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "s"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "st"    # Landroid/net/wifi/WifiConnectionStatistics;
    .param p5, "n"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    iput v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iput-object p5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    iput-object p4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    const-string v1, "network_score"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    if-nez v0, :cond_0

    const-string v0, "Registered scoreManager NULL  service network_score"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0, v3, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mBlacklistedBssids:Ljava/util/ArrayList;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No network score service: Couldnt register as a WiFi score Manager, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "network_score"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    goto :goto_0
.end method

.method private ageScanResultsOut(I)V
    .locals 10
    .param p1, "delay"    # I

    .prologue
    if-gtz p1, :cond_0

    sget p1, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "milli":J
    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ageScanResultsOut delay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/ScanDetail;

    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    cmp-long v5, v6, v2

    if-gez v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;"
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_3
    return-void
.end method

.method private compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 4
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "lastSelectedConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v2, -0x3

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    const/16 v2, 0x3e8

    return v2

    :cond_1
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x2

    return v2

    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareNetwork will compare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .local v1, "order":I
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, -0x64

    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     ...and prefers -100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it is the last selected -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x64

    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     ...and prefers +100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it is the last selected -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNetID(Ljava/lang/String;)I
    .locals 11
    .param p1, "wpaStatus"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attemptAutoJoin() status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v8, :cond_1

    const-string v8, "wpaStatus is null"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_1
    return v10

    :cond_2
    const/4 v1, -0x1

    .local v1, "id":I
    const/4 v7, 0x0

    .local v7, "state":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7    # "state":Ljava/lang/String;
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .local v6, "split":I
    if-ltz v6, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "name":Ljava/lang/String;
    const-string v8, "id"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v8, v6, 0x1

    :try_start_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v7, :cond_3

    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    :cond_4
    :goto_0
    return v1

    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "split":I
    :catch_0
    move-exception v5

    .local v5, "nfe":Ljava/lang/NumberFormatException;
    return v10

    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    :try_start_2
    const-string v8, "wpa_state"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "state":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wifi/WifiAutoJoinController;->ASSOC_STATES:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    if-eqz v8, :cond_6

    return v10

    :cond_6
    if-ltz v1, :cond_3

    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    .end local v7    # "state":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    return v10
.end method

.method private haveRecentlySeenScoredBssid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_ephemeral_out_of_range_timeout_ms"

    const-wide/32 v12, 0xea60

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .local v4, "ephemeralOutOfRangeTimeoutMs":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .local v1, "currentScanResult":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v9, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->hasScoreCurve(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_1

    if-eqz v0, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current network has a score curve, keeping network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    .local v0, "currentNetworkHasScoreCurve":Z
    goto :goto_0

    .end local v0    # "currentNetworkHasScoreCurve":Z
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current network has no score curve, giving up: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/ScanDetailCache;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const/4 v9, 0x0

    return v9

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "currentTimeMs":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "sd$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    .local v7, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    .local v6, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    cmp-long v9, v2, v10

    if-lez v9, :cond_7

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    sub-long v10, v2, v10

    cmp-long v9, v10, v4

    if-gez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v9, v6}, Lcom/android/server/wifi/WifiNetworkScoreCache;->hasScoreCurve(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found scored BSSID, keeping network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_8
    const/4 v9, 0x1

    return v9

    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_9
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No recently scored BSSID found, giving up connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_a
    const/4 v9, 0x0

    return v9
.end method

.method private isOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logDenial(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    return-void
.end method

.method private setCurrentConfigurationKey(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 4
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "supplicantNetId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq p2, v2, :cond_0

    if-eq p2, v3, :cond_0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attemptAutoJoin() ERROR wpa_supplicant out of sync nid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WifiStateMachine="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    return v1

    :cond_0
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->haveRecentlySeenScoredBssid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    return v0

    :cond_2
    const-string v2, "attemptAutoJoin() disconnecting from unwanted ephemeral network"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eqz v3, :cond_3

    :goto_0
    const/16 v3, 0x3f2

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand(II)V

    return v1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_5

    :goto_1
    return v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private updateBlackListStatus(Landroid/net/wifi/WifiConfiguration;J)V
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "now"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v2, v8, :cond_0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    :cond_0
    :goto_0
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_2

    :cond_1
    iput-wide p2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    :cond_2
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v2, p2, v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, v4, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    :cond_3
    :goto_1
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptAutoJoin skip candidate due to auto join status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v2, v2

    iget-wide v4, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v4, p2, v4

    sub-long v0, v2, v4

    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptautoJoin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dont unblacklist yet, waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method addToScanCache(Ljava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const/4 v8, 0x0

    .local v8, "numScanResultsKnown":I
    const/4 v2, 0x0

    .local v2, "associatedConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .local v4, "didAssociate":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "now":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, "unknownScanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v4    # "didAssociate":Z
    .local v11, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/ScanDetail;

    .local v10, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v9

    .local v9, "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v14, :cond_0

    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " addToScanCache "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " tsf="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " now= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " uptime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " elapsed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v10}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->averageRssiAndRemoveFromCache(Landroid/net/wifi/ScanResult;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v14, v9}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->addToUnscoredNetworks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v14, v10}, Lcom/android/server/wifi/WifiConfigStore;->updateSavedNetworkHistory(Lcom/android/server/wifi/ScanDetail;)Z

    move-result v4

    .local v4, "didAssociate":Z
    if-nez v4, :cond_6

    const/4 v14, 0x1

    iput-boolean v14, v9, Landroid/net/wifi/ScanResult;->untrusted:Z

    :cond_3
    :goto_2
    if-eqz v4, :cond_7

    add-int/lit8 v8, v8, 0x1

    iget v14, v9, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v9, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_0

    .end local v4    # "didAssociate":Z
    :cond_4
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_2

    const-string v3, ""

    .local v3, "cap":Ljava/lang/String;
    iget-object v14, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v14, v9}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    move-result v12

    .local v12, "score":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " rssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " cap "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is scored : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1

    .end local v3    # "cap":Ljava/lang/String;
    .end local v12    # "score":I
    .restart local v4    # "didAssociate":Z
    :cond_6
    iget-wide v14, v9, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    sub-long v14, v6, v14

    const-wide/32 v16, 0x1b77400

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    iput v14, v9, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_0

    .end local v4    # "didAssociate":Z
    .end local v9    # "result":Landroid/net/wifi/ScanResult;
    .end local v10    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/net/NetworkKey;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/NetworkKey;

    .local v5, "newKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v14, v5}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .end local v5    # "newKeys":[Landroid/net/NetworkKey;
    :cond_9
    return v8
.end method

.method addToUnscoredNetworks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V
    .locals 8
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "unknownScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkKey;>;"
    :try_start_0
    new-instance v3, Landroid/net/WifiKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v3, :cond_0

    new-instance v2, Landroid/net/NetworkKey;

    invoke-direct {v2, v3}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    .local v2, "nkey":Landroid/net/NetworkKey;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "nkey":Landroid/net/NetworkKey;
    :cond_0
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_2

    const-string v0, ""

    .local v0, "cap":Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tsf "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not scored"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v0    # "cap":Ljava/lang/String;
    :cond_2
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoJoinController: received badly encoded SSID=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ->skipping this network"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, "wkey":Landroid/net/WifiKey;
    goto/16 :goto_0
.end method

.method attemptAutoJoin()Z
    .locals 48

    .prologue
    const/16 v19, 0x0

    .local v19, "found":Z
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    const/16 v28, 0x0

    .local v28, "networkSwitchType":I
    sget v6, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    .local v6, "age":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .local v30, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v23

    .local v23, "lastSelectedConfiguration":Ljava/lang/String;
    if-eqz v23, :cond_0

    const/16 v6, 0x36b0

    :cond_0
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    .local v15, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    move-result-object v26

    .local v26, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v26, :cond_2

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_1

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin nothing known="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworksSize()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_1
    const/16 v44, 0x0

    return v44

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->getNetID(Ljava/lang/String;)I

    move-result v42

    .local v42, "supplicantNetId":I
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_5

    const-string v9, ""

    .local v9, "conf":Ljava/lang/String;
    const-string v22, ""

    .local v22, "last":Ljava/lang/String;
    if-eqz v15, :cond_3

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, " current="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_3
    if-eqz v23, :cond_4

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, " last="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :cond_4
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin() num recent config "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " ---> suppNetId="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v9    # "conf":Ljava/lang/String;
    .end local v22    # "last":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v15, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->setCurrentConfigurationKey(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v44

    if-nez v44, :cond_6

    const/16 v44, 0x0

    return v44

    :cond_6
    const/16 v16, -0x1

    .local v16, "currentNetId":I
    if-eqz v15, :cond_7

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    :cond_7
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .local v11, "config$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_24

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_8

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->isBlacklistedBSSID(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_9

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin skip candidate as AP is Blacklisted config.SSID = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " config.BSSID="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    const/16 v45, 0x80

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_a

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->updateBlackListStatus(Landroid/net/wifi/WifiConfiguration;J)V

    goto :goto_0

    :cond_a
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v44, v0

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_b

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_c

    :cond_b
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin skip candidate due to user approval status "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " key "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-lez v44, :cond_d

    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    cmp-long v44, v30, v44

    if-gez v44, :cond_f

    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    :cond_d
    :goto_1
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v44, v0

    if-eqz v44, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->underSoftThreshold(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    if-eqz v44, :cond_11

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_e

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin do not unblacklist due to low visibility "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_e
    :goto_2
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_13

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin skip blacklisted -> status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    const-wide/32 v46, 0x1b77400

    cmp-long v44, v44, v46

    if-lez v44, :cond_10

    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_1

    :cond_10
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    const-wide/32 v46, 0x1b7740

    cmp-long v44, v44, v46

    if-lez v44, :cond_d

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x8

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->underHardThreshold(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    if-eqz v44, :cond_12

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_e

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin good candidate seen, bumped soft -> status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x3

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_e

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin good candidate seen, bumped hard -> status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v16

    if-ne v0, v1, :cond_14

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin skip current candidate  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " key "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/16 v21, 0x0

    .local v21, "isLastSelected":Z
    if-eqz v23, :cond_15

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_15

    const/16 v21, 0x1

    :cond_15
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_16

    if-eqz v15, :cond_16

    if-eqz v23, :cond_18

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_18

    :cond_16
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v45, v0

    add-int v7, v44, v45

    .local v7, "boost":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    sub-int v44, v44, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v45

    sub-int v45, v45, v7

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v44

    if-eqz v44, :cond_1a

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_17

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin skip due to low visibility "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_17
    if-nez v21, :cond_19

    const/16 v44, 0x1

    move/from16 v0, v44

    iput-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    goto/16 :goto_0

    .end local v7    # "boost":I
    :cond_18
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    cmp-long v44, v30, v44

    if-lez v44, :cond_16

    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    move-wide/from16 v46, v0

    cmp-long v44, v44, v46

    if-gez v44, :cond_16

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "compareNetwork not switching to "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " from current "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " because it is blacklisted due to roam failure, "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " blacklist remain time = "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v46, v0

    sub-long v46, v30, v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " ms"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v7    # "boost":I
    :cond_19
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v44, v0

    sget v45, Landroid/net/wifi/WifiConfiguration;->MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_1a

    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1a

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x4

    move/from16 v0, v44

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    :cond_1a
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v44, v0

    if-lez v44, :cond_1b

    if-eqz v21, :cond_1e

    :cond_1b
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_1d

    const-string v12, ""

    .local v12, "cur":Ljava/lang/String;
    if-eqz v8, :cond_1c

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, " current candidate "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_1c
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin trying id="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v12    # "cur":Ljava/lang/String;
    :cond_1d
    if-nez v8, :cond_1f

    move-object v8, v10

    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_0

    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    :cond_1e
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v44, v0

    if-nez v44, :cond_1b

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_8

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin skip candidate due to no InternetAccess  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " num reports "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_20

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin will compare candidate  "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " with "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v29

    .local v29, "order":I
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_21

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin compareWifiConfigurations returned "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_21
    if-eqz v23, :cond_23

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_23

    add-int/lit8 v29, v29, -0x64

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_22

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "     ...and prefers -100 "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " over "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " because it is the last selected -> "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_22
    :goto_3
    if-lez v29, :cond_8

    move-object v8, v10

    .restart local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_0

    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    :cond_23
    if-eqz v23, :cond_22

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_22

    add-int/lit8 v29, v29, 0x64

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_22

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "     ...and prefers +100 "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " over "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " because it is the last selected -> "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_3

    .end local v7    # "boost":I
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "isLastSelected":Z
    .end local v29    # "order":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v44, v0

    if-eqz v44, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    move/from16 v44, v0

    if-eqz v44, :cond_29

    sget v38, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .local v38, "rssi5":I
    sget v37, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .local v37, "rssi24":I
    if-eqz v8, :cond_25

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v38, v0

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v37, v0

    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .local v32, "nowMs":J
    const/16 v17, -0x2710

    .local v17, "currentScore":I
    const/16 v43, 0x0

    .local v43, "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->isBadCandidate(II)Z

    move-result v44

    if-eqz v44, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .end local v43    # "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    .local v40, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_26
    :goto_4
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_28

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/wifi/ScanDetail;

    .local v39, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v35

    .local v35, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-nez v44, :cond_26

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/net/wifi/ScanResult;->untrusted:Z

    move/from16 v44, v0

    if-eqz v44, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->isOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v44

    if-eqz v44, :cond_26

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "\""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "\""

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .local v34, "quotedSSID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_26

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v44, v0

    sub-long v44, v32, v44

    sget v46, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    cmp-long v44, v44, v46

    if-gez v44, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    if-eqz v15, :cond_27

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v41

    .local v41, "score":I
    sget v44, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    move/from16 v0, v41

    move/from16 v1, v44

    if-eq v0, v1, :cond_26

    move/from16 v0, v41

    move/from16 v1, v17

    if-le v0, v1, :cond_26

    move/from16 v17, v41

    move-object/from16 v43, v39

    .local v43, "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_26

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "AutoJoinController: found untrusted candidate "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " RSSI="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v35

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " freq="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v35

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " score="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v41    # "score":I
    .end local v43    # "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    :cond_27
    const/16 v20, 0x0

    .local v20, "isActiveNetwork":Z
    goto :goto_5

    .end local v20    # "isActiveNetwork":Z
    .end local v34    # "quotedSSID":Ljava/lang/String;
    .end local v35    # "result":Landroid/net/wifi/ScanResult;
    .end local v39    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v40    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_28
    if-eqz v43, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .restart local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Ljava/util/BitSet;->set(I)V

    const/16 v44, 0x1

    move/from16 v0, v44

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    const/16 v44, 0x1

    move/from16 v0, v44

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .end local v8    # "candidate":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "currentScore":I
    .end local v32    # "nowMs":J
    .end local v37    # "rssi24":I
    .end local v38    # "rssi5":I
    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    move-wide/from16 v46, v0

    sub-long v24, v44, v46

    .local v24, "lastUnwanted":J
    if-nez v8, :cond_38

    if-nez v23, :cond_38

    if-nez v15, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    move/from16 v44, v0

    if-eqz v44, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_2a

    const-wide/32 v44, 0x240c8400

    cmp-long v44, v24, v44

    if-lez v44, :cond_38

    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v44, v0

    const/16 v45, 0xa

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    :cond_2b
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v27

    .local v27, "networkDelta":I
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_2e

    if-eqz v8, :cond_2e

    const-string v18, ""

    .local v18, "doSwitch":Ljava/lang/String;
    const-string v13, ""

    .local v13, "current":Ljava/lang/String;
    if-gez v27, :cond_2c

    const-string v18, " -> not switching"

    :cond_2c
    if-eqz v15, :cond_2d

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, " with current "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_2d
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "attemptAutoJoin networkSwitching candidate "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " linked="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    if-eqz v15, :cond_39

    invoke-virtual {v15, v8}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    :goto_7
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " : delta="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v13    # "current":Ljava/lang/String;
    .end local v18    # "doSwitch":Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    move-result v44

    if-eqz v44, :cond_35

    if-eqz v15, :cond_3a

    invoke-virtual {v15, v8}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    if-eqz v44, :cond_3a

    const/16 v28, 0x2

    :goto_8
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_2f

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "AutoJoin auto connect with netId "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " to "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    move/from16 v44, v0

    if-eqz v44, :cond_30

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    :cond_30
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v44, v0

    if-eqz v44, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v44, v0

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/16 v47, 0x0

    invoke-virtual/range {v44 .. v47}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    :cond_31
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_32

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v45, "any"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_34

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v14

    .local v14, "currentBSSID":Ljava/lang/String;
    sget v44, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v44

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v36

    .local v36, "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v36, :cond_33

    if-eqz v14, :cond_33

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_33

    const/16 v36, 0x0

    .end local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_33
    if-eqz v36, :cond_3b

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v44

    if-eqz v44, :cond_3b

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iput-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_34

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "AutoJoinController: lock to 5GHz "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " RSSI="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " freq="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v14    # "currentBSSID":Ljava/lang/String;
    :cond_34
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    const v46, 0x2008f

    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v45

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    const/16 v19, 0x1

    :cond_35
    if-nez v28, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    if-eqz v44, :cond_3c

    :cond_36
    :goto_a
    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v44, :cond_37

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Done attemptAutoJoin status="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_37
    return v19

    .end local v27    # "networkDelta":I
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v44, v0

    if-lez v44, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    goto/16 :goto_6

    .restart local v13    # "current":Ljava/lang/String;
    .restart local v18    # "doSwitch":Ljava/lang/String;
    .restart local v27    # "networkDelta":I
    :cond_39
    const/16 v44, 0x0

    goto/16 :goto_7

    .end local v13    # "current":Ljava/lang/String;
    .end local v18    # "doSwitch":Ljava/lang/String;
    :cond_3a
    const/16 v28, 0x3

    goto/16 :goto_8

    .restart local v14    # "currentBSSID":Ljava/lang/String;
    :cond_3b
    const-string v44, "any"

    move-object/from16 v0, v44

    iput-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    goto :goto_9

    .end local v14    # "currentBSSID":Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "currentBSSID":Ljava/lang/String;
    sget v44, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v44

    invoke-virtual {v0, v1, v15, v2, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v36

    .restart local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v36, :cond_3d

    if-eqz v14, :cond_3d

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_3d

    const/16 v36, 0x0

    .end local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_3d
    if-eqz v36, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x3e7

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    move-result v44

    if-eqz v44, :cond_36

    sget-boolean v44, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v44, :cond_3e

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "AutoJoin auto roam with netId "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " to BSSID="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " freq="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " RSSI="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_3e
    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    const v46, 0x20091

    const/16 v47, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v45

    move/from16 v3, v47

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    const/16 v19, 0x1

    goto/16 :goto_a
.end method

.method public attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 20
    .param p1, "a"    # Landroid/net/wifi/ScanResult;
    .param p2, "current"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "age"    # I
    .param p4, "currentBSSID"    # Ljava/lang/String;

    .prologue
    if-nez p2, :cond_1

    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_0

    const-string v15, "attemptRoam not associated"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v12

    .local v12, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v12, :cond_3

    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_2

    const-string v15, "attemptRoam no scan cache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_3
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v15

    const/16 v16, 0x6

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attemptRoam scan cache size "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " --> bail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_4
    return-object p1

    :cond_5
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v15, :cond_6

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v16, "any"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "nowMs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v8

    .local v8, "currentBand":I
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "sd$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wifi/ScanDetail;

    .local v13, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .local v4, "b":Landroid/net/wifi/ScanResult;
    const/4 v6, 0x0

    .local v6, "bRssiBoost5":I
    const/4 v3, 0x0

    .local v3, "aRssiBoost5":I
    const/4 v5, 0x0

    .local v5, "bRssiBoost":I
    const/4 v2, 0x0

    .local v2, "aRssiBoost":I
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x2

    if-eq v8, v15, :cond_7

    :cond_8
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    if-eq v8, v15, :cond_7

    :cond_9
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_7

    iget-object v15, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v15, :cond_7

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v16

    sub-long v16, v10, v16

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-gtz v15, :cond_7

    iget v15, v4, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-nez v15, :cond_7

    iget v15, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-gt v15, v0, :cond_7

    if-nez p1, :cond_c

    move-object/from16 p1, v4

    goto :goto_0

    .end local v2    # "aRssiBoost":I
    .end local v3    # "aRssiBoost5":I
    .end local v4    # "b":Landroid/net/wifi/ScanResult;
    .end local v5    # "bRssiBoost":I
    .end local v6    # "bRssiBoost5":I
    .end local v8    # "currentBand":I
    .end local v10    # "nowMs":J
    .end local v13    # "sd":Lcom/android/server/wifi/ScanDetail;
    .end local v14    # "sd$iterator":Ljava/util/Iterator;
    :cond_a
    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v15, :cond_b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attemptRoam() BSSID is set "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> bail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_b
    return-object p1

    .restart local v2    # "aRssiBoost":I
    .restart local v3    # "aRssiBoost5":I
    .restart local v4    # "b":Landroid/net/wifi/ScanResult;
    .restart local v5    # "bRssiBoost":I
    .restart local v6    # "bRssiBoost5":I
    .restart local v8    # "currentBand":I
    .restart local v10    # "nowMs":J
    .restart local v13    # "sd":Lcom/android/server/wifi/ScanDetail;
    .restart local v14    # "sd$iterator":Ljava/util/Iterator;
    :cond_c
    iget v15, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_d

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attemptRoam: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v4, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ipfail="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v4, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " > "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ipfail="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    move-object/from16 p1, v4

    goto/16 :goto_0

    :cond_d
    if-eqz p4, :cond_e

    iget-object v15, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    iget v15, v4, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v5, v15, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    :cond_e
    :goto_1
    if-eqz p4, :cond_f

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v15, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    :cond_f
    :goto_2
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v15

    if-eqz v15, :cond_10

    iget v15, v4, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v5

    iget-object v0, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v6

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v3

    :cond_11
    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_13

    const-string v7, " < "

    .local v7, "comp":Ljava/lang/String;
    iget v15, v4, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v5

    add-int/2addr v15, v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    add-int v16, v16, v2

    add-int v16, v16, v3

    move/from16 v0, v16

    if-le v15, v0, :cond_12

    const-string v7, " > "

    :cond_12
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attemptRoam: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v4, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " boost="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v4, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " boost="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v7    # "comp":Ljava/lang/String;
    :cond_13
    iget v15, v4, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v5

    add-int/2addr v15, v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    add-int v16, v16, v2

    add-int v16, v16, v3

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    move-object/from16 p1, v4

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v5, v15, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v15, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    goto/16 :goto_2

    .end local v2    # "aRssiBoost":I
    .end local v3    # "aRssiBoost5":I
    .end local v4    # "b":Landroid/net/wifi/ScanResult;
    .end local v5    # "bRssiBoost":I
    .end local v6    # "bRssiBoost5":I
    .end local v13    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_16
    if-eqz p1, :cond_18

    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_18

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v15, "attemptRoam: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_17

    const-string v15, " Current: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v15, "\n"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_18
    return-object p1
.end method

.method averageRssiAndRemoveFromCache(Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    .local v0, "sd":Lcom/android/server/wifi/ScanDetail;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .local v1, "sr":Landroid/net/wifi/ScanResult;
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_0

    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v3, -0x14

    if-ge v2, v3, :cond_0

    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p1, Landroid/net/wifi/ScanResult;->level:I

    :cond_0
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    sget v3, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    iput v2, p1, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0
.end method

.method compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 8
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .local v1, "linked":Z
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v4, :cond_0

    iget v4, p2, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v4, :cond_0

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations ephemeral and prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_1
    return v7

    :cond_2
    iget-boolean v4, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations ephemeral and prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_3
    const/4 v4, -0x1

    return v4

    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v4, 0x0

    .local v2, "order":I
    if-nez v1, :cond_8

    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    .local v0, "choice":I
    if-lez v0, :cond_6

    sub-int/2addr v2, v0

    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to user choice of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_6

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iput v0, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p2, p1, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    if-lez v0, :cond_8

    add-int/2addr v2, v0

    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to user choice of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_7
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_8

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iput v0, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    .end local v0    # "choice":I
    :cond_8
    if-nez v2, :cond_a

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v4, v5, :cond_d

    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations prefers -1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to priority"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_9
    const/4 v2, -0x1

    :cond_a
    :goto_0
    const-string v3, " == "

    .local v3, "sorder":Ljava/lang/String;
    if-lez v2, :cond_f

    const-string v3, " < "

    :cond_b
    :goto_1
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compareWifiConfigurations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_c
    return v2

    .end local v3    # "sorder":Ljava/lang/String;
    :cond_d
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v4, v5, :cond_a

    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations prefers +1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to priority"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_e
    const/4 v2, 0x1

    goto :goto_0

    .restart local v3    # "sorder":Ljava/lang/String;
    :cond_f
    if-gez v2, :cond_b

    const-string v3, " > "

    goto :goto_1
.end method

.method compareWifiConfigurationsFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I
    .locals 9
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration$Visibility;
    .param p2, "aRssiBoost"    # I
    .param p3, "dbgA"    # Ljava/lang/String;
    .param p4, "b"    # Landroid/net/wifi/WifiConfiguration$Visibility;
    .param p5, "bRssiBoost"    # I
    .param p6, "dbgB"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "aRssiBoost5":I
    const/4 v4, 0x0

    .local v4, "bRssiBoost5":I
    const/4 v2, 0x0

    .local v2, "aScore":I
    const/4 v5, 0x0

    .local v5, "bScore":I
    const/4 v0, 0x0

    .local v0, "aPrefers5GHz":Z
    const/4 v3, 0x0

    .local v3, "bPrefers5GHz":Z
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v1

    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v4

    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, v1

    iget v7, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v6, v7, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, v4

    iget v7, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v6, v7, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v0, :cond_6

    if-eqz v3, :cond_5

    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int v2, v6, p2

    :goto_0
    if-eqz v3, :cond_8

    if-eqz v0, :cond_7

    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int v5, v6, p5

    :goto_1
    sget-boolean v6, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    iput v2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    iput p2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    iput v1, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    :cond_3
    if-eqz p4, :cond_4

    iput v5, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    iput p5, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    iput v4, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    :cond_4
    sub-int v6, v5, v2

    return v6

    :cond_5
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, p2

    add-int v2, v6, v1

    goto :goto_0

    :cond_6
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    add-int v2, v6, p2

    goto :goto_0

    :cond_7
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, p5

    add-int v5, v6, v4

    goto :goto_1

    :cond_8
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    add-int v5, v6, p5

    goto :goto_1
.end method

.method compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 11
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .local v9, "order":I
    const/4 v2, 0x0

    .local v2, "aRssiBoost":I
    const/4 v5, 0x0

    .local v5, "bRssiBoost":I
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .local v7, "astatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .local v8, "bstatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    :cond_0
    const-string v0, "    compareWifiConfigurations NULL band status!"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    compareWifiConfigurationsRSSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " boost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " boost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I

    move-result v9

    const/16 v0, 0x32

    if-le v9, v0, :cond_8

    const/16 v9, 0x32

    :cond_4
    :goto_1
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v0, :cond_6

    const-string v10, " = "

    .local v10, "prefer":Ljava/lang/String;
    if-lez v9, :cond_9

    const-string v10, " < "

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    compareWifiConfigurationsRSSI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssi=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") num=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssi=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") num=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v10    # "prefer":Ljava/lang/String;
    :cond_6
    return v9

    :cond_7
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v5, v0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    goto/16 :goto_0

    :cond_8
    const/16 v0, -0x32

    if-ge v9, v0, :cond_4

    const/16 v9, -0x32

    goto/16 :goto_1

    .restart local v10    # "prefer":Ljava/lang/String;
    :cond_9
    if-gez v9, :cond_5

    const-string v10, " > "

    goto/16 :goto_2
.end method

.method enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    :goto_0
    return-void

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    sput-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    goto :goto_0
.end method

.method getConfigNetworkScore(Landroid/net/wifi/WifiConfiguration;IZ)I
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "isActive"    # Z

    .prologue
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-nez v8, :cond_1

    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "       getConfigNetworkScore for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  -> no scorer, hence no scores"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    sget v8, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    return v8

    :cond_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v8, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    if-nez v8, :cond_3

    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "       getConfigNetworkScore for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> no scan cache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_2
    sget v8, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    return v8

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "nowMs":J
    const/16 v7, -0x2710

    .local v7, "startScore":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    .local v0, "currentBand":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v8, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "sd$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    .local v5, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    if-eq v0, v8, :cond_4

    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    if-eq v0, v8, :cond_4

    :cond_6
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v8

    sub-long v8, v2, v8

    int-to-long v10, p2

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v8, v1, p3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v4

    .local v4, "sc":I
    if-le v4, v7, :cond_4

    move v7, v4

    goto :goto_0

    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "sc":I
    .end local v5    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_7
    const/16 v8, -0x2710

    if-ne v7, v8, :cond_8

    sget v7, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    :cond_8
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v8, :cond_9

    sget v8, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    if-ne v7, v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    getConfigNetworkScore for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> no available score"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return v7

    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    getConfigNetworkScore for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isActive="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " score = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I
    .locals 10
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "target"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "strict"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    .local v0, "choice":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v7

    :cond_1
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, "val":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v6    # "val":Ljava/lang/Integer;
    :cond_2
    if-nez p3, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .local v4, "sourceScore":I
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiAutoJoinController;->getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    .local v5, "targetScore":I
    sub-int v0, v4, v5

    .end local v4    # "sourceScore":I
    .end local v5    # "targetScore":I
    :cond_3
    return v0

    :cond_4
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v7, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_5

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v7, :cond_5

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .restart local v6    # "val":Ljava/lang/Integer;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getPnoList(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xa0

    const/4 v7, -0x1

    .local v7, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;>;"
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_0
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v8, :cond_2

    const-string v6, ""

    .local v6, "s":Ljava/lang/String;
    if-eqz p1, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v8, "WifiAutoJoinController "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " get Pno List total size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    .local v2, "configKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "network$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .local v4, "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_3

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-ge v8, v11, :cond_3

    iget-object v8, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    invoke-virtual {p0, v1, p1, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    .local v0, "choice":I
    if-lez v0, :cond_3

    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v8, :cond_4

    const-string v8, "WifiAutoJoinController "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Pno List adding:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " choice "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    goto :goto_0

    .end local v0    # "choice":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configKey":Ljava/lang/String;
    .end local v4    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    .end local v5    # "network$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "network$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .restart local v4    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_6

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-ge v8, v11, :cond_6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v4, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    goto :goto_1

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    :cond_7
    return-object v3
.end method

.method getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x64

    return v0

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x21

    return v0

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x42

    return v0

    :cond_3
    return v2
.end method

.method getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "network"    # Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p1, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method handleBSSIDBlackList(ZLjava/lang/String;I)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .prologue
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mBlacklistedBssids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mBlacklistedBssids:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mBlacklistedBssids:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mBlacklistedBssids:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mBlacklistedBssids:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method isBadCandidate(II)Z
    .locals 2
    .param p1, "rssi5"    # I
    .param p2, "rssi24"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v1, -0x50

    if-ge p1, v1, :cond_0

    const/16 v1, -0x5a

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isBlacklistedBSSID(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mBlacklistedBssids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method linkQualitySignificantChange()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    return-void
.end method

.method logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    return-void
.end method

.method logDbg(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Z

    .prologue
    if-eqz p2, :cond_0

    const-string v0, "WifiAutoJoinController "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "WifiAutoJoinController "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method newHalScanResults()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-static {v2, v2}, Lcom/android/server/wifi/WifiParser;->parse_akm([Lcom/android/server/wifi/WifiParser$IE;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .local v0, "akm":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    return-void
.end method

.method newSupplicantResults(Z)I
    .locals 4
    .param p1, "doAutoJoin"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getScanResultsListNoCopyUnsync()Ljava/util/List;

    move-result-object v1

    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    move-result v0

    .local v0, "numScanResultsKnown":I
    sget v2, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSupplicantResults size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " known="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    return v0
.end method

.method public rssiBoostFrom5GHzRssi(ILjava/lang/String;)I
    .locals 4
    .param p1, "rssi"    # I
    .param p2, "dbg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int v2, p1, v2

    mul-int v0, v1, v2

    .local v0, "boost":I
    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    const/16 v0, 0x32

    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":    rssi5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 5GHz-boost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_3
    return v0

    .end local v0    # "boost":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int v2, p1, v2

    mul-int v0, v1, v2

    .restart local v0    # "boost":I
    return v0

    .end local v0    # "boost":I
    :cond_5
    return v3
.end method

.method setAllowUntrustedConnections(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->startScanForUntrustedSettingChange()V

    :cond_0
    return-void

    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method underHardThreshold(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method underSoftThreshold(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "rssi24"    # I
    .param p3, "rssi5"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-ge v1, p2, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    if-ge v1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public updateConfigurationHistory(IZZ)V
    .locals 12
    .param p1, "netId"    # I
    .param p2, "userTriggered"    # Z
    .param p3, "connect"    # Z

    .prologue
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .local v7, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v7, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory nid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " no selected configuration!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory nid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " no SSID in selected configuration!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    :cond_2
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_3

    if-eqz p2, :cond_3

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory will update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " now: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    const/4 v3, 0x0

    .local v3, "found":Z
    const/4 v0, 0x0

    .local v0, "choice":I
    const/4 v8, 0x0

    .local v8, "size":I
    const/4 v9, 0x0

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    const/4 v9, 0x0

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    const/4 v9, 0x0

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/16 v10, 0x2ee0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    move-result-object v6

    .local v6, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    if-eqz v6, :cond_e

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_6
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    .end local v0    # "choice":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v3    # "found":Z
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v8    # "size":I
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory will update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .restart local v0    # "choice":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "config$iterator":Ljava/util/Iterator;
    .restart local v3    # "found":Z
    .restart local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v8    # "size":I
    :cond_8
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v9, :cond_5

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v10, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v10, v10, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    if-ge v9, v10, :cond_9

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iget-object v10, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v10, v10, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    if-lt v9, v10, :cond_5

    :cond_9
    const/16 v0, 0x3c

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-nez v9, :cond_a

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory add a choice "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " over "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " choice "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory will remove "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_b
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "key$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "key":Ljava/lang/String;
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    :cond_c
    if-nez v3, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory try to connect to an old network!! : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_d
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v9, :cond_e

    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " now: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v0    # "choice":I
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v3    # "found":Z
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v8    # "size":I
    :cond_e
    if-nez p2, :cond_f

    if-eqz p3, :cond_10

    :cond_f
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    :cond_10
    return-void
.end method
