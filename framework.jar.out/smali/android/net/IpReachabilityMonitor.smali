.class public Landroid/net/IpReachabilityMonitor;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpReachabilityMonitor$Callback;,
        Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "IpReachabilityMonitor"

.field private static final VDBG:Z


# instance fields
.field private final mCallback:Landroid/net/IpReachabilityMonitor$Callback;

.field private final mInterfaceIndex:I

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpWatchList:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mIpWatchListVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLinkProperties:Landroid/net/LinkProperties;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

.field private final mObserverThread:Ljava/lang/Thread;

.field private mRunning:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Landroid/net/IpReachabilityMonitor;)I
    .locals 1

    iget v0, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I

    return v0
.end method

.method static synthetic -get1(Landroid/net/IpReachabilityMonitor;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/IpReachabilityMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/net/IpReachabilityMonitor;Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpReachabilityMonitor;->isWatching(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/IpReachabilityMonitor;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->stillRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/net/IpReachabilityMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpReachabilityMonitor;->handleNeighborLost(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/IpReachabilityMonitor$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/IpReachabilityMonitor$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    iput-object p2, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    const/4 v1, -0x1

    .local v1, "ifIndex":I
    :try_start_0
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .local v2, "netIf":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    iput v3, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IpReachabilityMonitor."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p3, p0, Landroid/net/IpReachabilityMonitor;->mCallback:Landroid/net/IpReachabilityMonitor$Callback;

    new-instance v3, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/IpReachabilityMonitor;Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Landroid/net/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    iget-object v3, p0, Landroid/net/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    .end local v2    # "netIf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid interface \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private describeWatchList()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v0, ", "

    .local v0, "delimiter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string v5, "iface{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "}, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "v{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "}, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ntable=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .local v3, "firstTime":Z
    iget-object v5, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-static {v5}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "firstTime":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "firstTime":Z
    :cond_0
    :try_start_1
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    :cond_1
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getNeighborStateLocked(Ljava/net/InetAddress;)S
    .locals 1
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getProbeWakeLockDuration()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x3

    .local v2, "numUnicastProbes":J
    const-wide/16 v4, 0x3e8

    .local v4, "retransTimeMs":J
    const-wide/16 v0, 0x1f4

    .local v0, "gracePeriodMs":J
    const-wide/16 v6, 0xdac

    return-wide v6
.end method

.method private handleNeighborLost(Ljava/lang/String;)V
    .locals 12
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v10, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    new-instance v8, Landroid/net/LinkProperties;

    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v8, v9}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .local v8, "whatIfLp":Landroid/net/LinkProperties;
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "ip":Ljava/net/InetAddress;
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    const/16 v11, 0x20

    if-ne v9, v11, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/InetAddress;

    move-object v4, v0

    .local v4, "ip":Ljava/net/InetAddress;
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "route$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .local v6, "route":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v6}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v6    # "route":Landroid/net/RouteInfo;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    .end local v8    # "whatIfLp":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "ip":Ljava/net/InetAddress;
    .restart local v7    # "route$iterator":Ljava/util/Iterator;
    .restart local v8    # "whatIfLp":Landroid/net/LinkProperties;
    :cond_2
    :try_start_1
    invoke-virtual {v8, v4}, Landroid/net/LinkProperties;->removeDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "ip":Ljava/net/InetAddress;
    .end local v7    # "route$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v9, v8}, Landroid/net/LinkProperties;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    monitor-exit v10

    sget-object v9, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v1, v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FAILURE: LOST_PROVISIONING, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "logMsg":Ljava/lang/String;
    const-string v9, "IpReachabilityMonitor"

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mCallback:Landroid/net/IpReachabilityMonitor$Callback;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mCallback:Landroid/net/IpReachabilityMonitor$Callback;

    invoke-interface {v9, v4, v5}, Landroid/net/IpReachabilityMonitor$Callback;->notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V

    .end local v5    # "logMsg":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z
    .locals 3
    .param p1, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "route$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .local v0, "route":Landroid/net/RouteInfo;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .end local v0    # "route":Landroid/net/RouteInfo;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isWatching(Ljava/net/InetAddress;)Z
    .locals 2
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static probeNeighbor(ILjava/net/InetAddress;)Z
    .locals 19
    .param p0, "ifIndex"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;

    .prologue
    const-wide/16 v8, 0x12c

    .local v8, "IO_TIMEOUT":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "probing ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, "msgSnippet":Ljava/lang/String;
    const-string v4, "IpReachabilityMonitor"

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v4, v0, v5, v1, v6}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    move-result-object v3

    .local v3, "msg":[B
    const/16 v16, 0x0

    .local v16, "returnValue":Z
    const/16 v17, 0x0

    const/4 v14, 0x0

    .local v14, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :try_start_0
    new-instance v2, Landroid/net/netlink/NetlinkSocket;

    sget v4, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-direct {v2, v4}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v14    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .local v2, "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :try_start_1
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel()V

    array-length v5, v3

    const/4 v4, 0x0

    const-wide/16 v6, 0x12c

    invoke-virtual/range {v2 .. v7}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {v10}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v15

    .local v15, "response":Landroid/net/netlink/NetlinkMessage;
    if-eqz v15, :cond_2

    instance-of v4, v15, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v4, :cond_2

    move-object v0, v15

    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v0, v15

    check-cast v0, Landroid/net/netlink/NetlinkErrorMessage;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v4

    iget v4, v4, Landroid/net/netlink/StructNlMsgErr;->error:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_2

    const/16 v16, 0x1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v17, :cond_1

    :try_start_3
    throw v17
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    const-string v4, "IpReachabilityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    return v16

    .restart local v10    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_2
    if-nez v10, :cond_4

    :try_start_4
    const-string v12, "null recvMessage"

    .local v12, "errmsg":Ljava/lang/String;
    :goto_2
    const-string v4, "IpReachabilityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errmsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v12    # "errmsg":Ljava/lang/String;
    .end local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_1
    move-exception v4

    :goto_3
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :goto_5
    if-eqz v5, :cond_7

    :try_start_7
    throw v5
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_0

    .restart local v10    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :cond_4
    if-nez v15, :cond_5

    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "errmsg":Ljava/lang/String;
    goto :goto_2

    .end local v12    # "errmsg":Ljava/lang/String;
    :cond_5
    invoke-virtual {v15}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v12

    .restart local v12    # "errmsg":Ljava/lang/String;
    goto :goto_2

    .end local v12    # "errmsg":Ljava/lang/String;
    :catch_2
    move-exception v17

    goto :goto_1

    .end local v10    # "bytes":Ljava/nio/ByteBuffer;
    .end local v15    # "response":Landroid/net/netlink/NetlinkMessage;
    :catch_3
    move-exception v6

    if-nez v5, :cond_6

    move-object v5, v6

    goto :goto_5

    :cond_6
    if-eq v5, v6, :cond_3

    :try_start_9
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    throw v4
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_0

    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v14    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catchall_1
    move-exception v4

    move-object/from16 v5, v17

    move-object v2, v14

    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_4

    .end local v14    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catchall_2
    move-exception v4

    move-object/from16 v5, v17

    goto :goto_4

    .end local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    .restart local v14    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    :catch_4
    move-exception v4

    move-object v2, v14

    .restart local v2    # "nlSocket":Landroid/net/netlink/NetlinkSocket;
    goto :goto_3
.end method

.method private stillRunning()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearLinkProperties()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const-string v0, "IpReachabilityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->describeWatchList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public probeAll()V
    .locals 6

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .local v0, "ipProbeList":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetAddress;>;"
    iget-object v4, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->stillRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "target$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .local v1, "target":Ljava/net/InetAddress;
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->stillRunning()Z

    move-result v3

    if-nez v3, :cond_2

    .end local v1    # "target":Ljava/net/InetAddress;
    :cond_1
    return-void

    .end local v2    # "target$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "target":Ljava/net/InetAddress;
    .restart local v2    # "target$iterator":Ljava/util/Iterator;
    :cond_2
    iget v3, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceIndex:I

    invoke-static {v3, v1}, Landroid/net/IpReachabilityMonitor;->probeNeighbor(ILjava/net/InetAddress;)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/net/IpReachabilityMonitor;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p0}, Landroid/net/IpReachabilityMonitor;->clearLinkProperties()V

    iget-object v0, p0, Landroid/net/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;

    invoke-static {v0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->-wrap0(Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 10
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    iget-object v7, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "IpReachabilityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requested LinkProperties interface \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' does not match: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v8, p0, Landroid/net/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v7, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    iget-object v7, p0, Landroid/net/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    .local v6, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "route$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "gw":Ljava/net/InetAddress;
    invoke-static {v6, v0}, Landroid/net/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/net/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "gw":Ljava/net/InetAddress;
    .end local v3    # "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v5    # "route$iterator":Ljava/util/Iterator;
    .end local v6    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v3    # "newIpWatchList":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/InetAddress;Ljava/lang/Short;>;"
    .restart local v5    # "route$iterator":Ljava/util/Iterator;
    .restart local v6    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nameserver$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .local v1, "nameserver":Ljava/net/InetAddress;
    invoke-static {v6, v1}, Landroid/net/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v1}, Landroid/net/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1    # "nameserver":Ljava/net/InetAddress;
    :cond_4
    iput-object v3, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    iget v7, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/net/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    const-string v7, "IpReachabilityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "watch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor;->describeWatchList()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
