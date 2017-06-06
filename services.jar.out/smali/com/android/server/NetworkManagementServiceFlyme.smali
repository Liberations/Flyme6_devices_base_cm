.class public Lcom/android/server/NetworkManagementServiceFlyme;
.super Landroid/os/INetworkManagementServiceFlyme$Stub;
.source "NetworkManagementServiceFlyme.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManagementServiceFlyme"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/os/INetworkManagementServiceFlyme$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "flymed"

    const-string v4, "flymed_connector"

    const/16 v3, 0x1f4

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v0, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "flymed_connector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v7, "thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementServiceFlyme;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/android/server/NetworkManagementServiceFlyme;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementServiceFlyme;-><init>(Landroid/content/Context;)V

    .local v0, "service":Lcom/android/server/NetworkManagementServiceFlyme;
    return-object v0
.end method

.method private static enforceSystemUid()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method public clearFirewallChain(Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "firewall"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "clear_fw_chain"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearMarkedForwardingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementServiceFlyme"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "fwmark"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "dest"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "remove"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearMarkedForwardingRouteWithAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "prifex"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementServiceFlyme"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "fwmark"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "route"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "remove"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public deleteVpnProfile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public doRawPingCheck([Ljava/lang/String;)Z
    .locals 14
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .local v5, "index":I
    const/16 v1, 0x384

    .local v1, "RtndsStatusCode":I
    const/16 v0, 0xc

    .local v0, "RTNDS_PING_ARG_CNT":I
    array-length v9, p1

    const/16 v10, 0xc

    if-lt v9, v10, :cond_0

    const/4 v9, 0x0

    return v9

    :cond_0
    const/16 v9, 0xc

    new-array v8, v9, [Ljava/lang/String;

    .local v8, "params":[Ljava/lang/String;
    const/4 v9, 0x0

    array-length v10, p1

    move v6, v5

    .end local v5    # "index":I
    .local v6, "index":I
    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v2, p1, v9

    .local v2, "arg":Ljava/lang/String;
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    aput-object v2, v8, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5    # "index":I
    .restart local v6    # "index":I
    goto :goto_0

    .end local v2    # "arg":Ljava/lang/String;
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :goto_1
    const/16 v9, 0xc

    if-ge v5, v9, :cond_1

    const/4 v9, 0x0

    aput-object v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "netdiagn"

    const/16 v11, 0xd

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "ping4"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    aget-object v12, v8, v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aget-object v12, v8, v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aget-object v12, v8, v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x3

    aget-object v12, v8, v12

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const/4 v12, 0x4

    aget-object v12, v8, v12

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const/4 v12, 0x5

    aget-object v12, v8, v12

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const/4 v12, 0x6

    aget-object v12, v8, v12

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const/4 v12, 0x7

    aget-object v12, v8, v12

    const/16 v13, 0x8

    aput-object v12, v11, v13

    const/16 v12, 0x8

    aget-object v12, v8, v12

    const/16 v13, 0x9

    aput-object v12, v11, v13

    const/16 v12, 0x9

    aget-object v12, v8, v12

    const/16 v13, 0xa

    aput-object v12, v11, v13

    const/16 v12, 0xa

    aget-object v12, v8, v12

    const/16 v13, 0xb

    aput-object v12, v11, v13

    const/16 v12, 0xb

    aget-object v12, v8, v12

    const/16 v13, 0xc

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v9, 0x384

    invoke-virtual {v4, v9}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v7

    .local v7, "msg":Ljava/lang/String;
    const-string v9, "ping4:ok"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    return v9

    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v7    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    return v9

    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v5    # "index":I
    .end local v7    # "msg":Ljava/lang/String;
    .restart local v6    # "index":I
    :cond_3
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto/16 :goto_1
.end method

.method public getAllVpnKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVVsersion()Ljava/lang/String;
    .locals 7

    .prologue
    iget-object v2, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementServiceFlyme"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/NetworkManagementServiceFlyme;->enforceSystemUid()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "misc"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "get_vversion"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getVpnProfile(Ljava/lang/String;Z)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "passwordIncluded"    # Z

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVpnProfileDefaultKey()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVpnProfileVersion(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    const-string v0, "NetworkManagementServiceFlyme"

    const-string v1, "flymed connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "onEvent::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " raw= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v2, " cooked = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p3, v2

    .local v1, "str":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const-string v2, "NetworkManagementServiceFlyme"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method public putVpnProfile(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    return-void
.end method

.method public setFirewallUidChainRule(IIZ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "networkType"    # I
    .param p3, "allow"    # Z

    .prologue
    const/4 v5, 0x1

    const-string v0, "mobile"

    .local v0, "MOBILE":Ljava/lang/String;
    const-string v1, "wifi"

    .local v1, "WIFI":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v4, "allow"

    .local v4, "rule":Ljava/lang/String;
    :goto_0
    if-ne p2, v5, :cond_1

    const-string v2, "wifi"

    .local v2, "chain":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "firewall"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "set_uid_fw_rule"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aput-object v2, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .end local v2    # "chain":Ljava/lang/String;
    .end local v4    # "rule":Ljava/lang/String;
    :cond_0
    const-string v4, "deny"

    .restart local v4    # "rule":Ljava/lang/String;
    goto :goto_0

    :cond_1
    const-string v2, "mobile"

    .restart local v2    # "chain":Ljava/lang/String;
    goto :goto_1

    :catch_0
    move-exception v3

    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5
.end method

.method public setMarkedForwardingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementServiceFlyme"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "fwmark"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "dest"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "add"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMarkedForwardingRouteWithAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "prifex"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementServiceFlyme"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementServiceFlyme;->mFlymeDaemonConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "fwmark"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "route"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "add"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setVpnProfileDefaultKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public setVpnProfileVersion(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method
