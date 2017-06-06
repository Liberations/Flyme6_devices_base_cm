.class public Lcom/android/internal/telephony/dataconnection/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public active:I

.field public addresses:[Ljava/lang/String;

.field public cid:I

.field public dnses:[Ljava/lang/String;

.field public gateways:[Ljava/lang/String;

.field public ifname:Ljava/lang/String;

.field public mtu:I

.field public pcscf:[Ljava/lang/String;

.field public status:I

.field public suggestedRetryTime:I

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->DBG:Z

    const-string v0, "DataCallResponse"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    return-void
.end method


# virtual methods
.method public setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 20
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .param p2, "okToUseSystemPropertyDns"    # Z

    .prologue
    if-nez p1, :cond_1

    new-instance p1, Landroid/net/LinkProperties;

    .end local p1    # "linkProperties":Landroid/net/LinkProperties;
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    .restart local p1    # "linkProperties":Landroid/net/LinkProperties;
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    sget-object v15, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v15}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v15

    if-ne v14, v15, :cond_15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "net."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "propertyPrefix":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    aget-object v2, v15, v14

    .local v2, "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .end local v2    # "addr":Ljava/lang/String;
    .end local v11    # "propertyPrefix":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    goto :goto_0

    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v11    # "propertyPrefix":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "ap":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v17, 0x0

    aget-object v2, v4, v17

    const/16 v17, 0x1

    aget-object v17, v4, v17

    const-string v18, "[\\D]"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .local v3, "addrPrefixLen":I
    :goto_3
    :try_start_2
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .local v9, "ia":Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_0

    if-nez v3, :cond_3

    instance-of v0, v9, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v3, 0x20

    :cond_3
    :goto_4
    const-string v17, "DataCallResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addr/pl="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v9, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .local v10, "la":Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v9    # "ia":Ljava/net/InetAddress;
    .end local v10    # "la":Landroid/net/LinkAddress;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/net/UnknownHostException;
    const-string v14, "DataCallResponse"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setLinkProperties: UnknownHostException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v11    # "propertyPrefix":Ljava/lang/String;
    .local v12, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :goto_5
    sget-object v14, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    if-eq v12, v14, :cond_4

    const-string v14, "DataCallResponse"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setLinkProperties: error clearing LinkProperties status="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " result="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    :cond_4
    return-object v12

    .end local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v4    # "ap":[Ljava/lang/String;
    .restart local v11    # "propertyPrefix":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "addrPrefixLen":I
    goto/16 :goto_3

    :catch_1
    move-exception v7

    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric ip addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "ia":Ljava/net/InetAddress;
    :cond_6
    const/16 v3, 0x80

    goto/16 :goto_4

    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v9    # "ia":Ljava/net/InetAddress;
    :cond_7
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no address for ifname="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_6
    move/from16 v0, v16

    if-ge v14, v0, :cond_f

    aget-object v2, v15, v14

    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    :try_start_5
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v9

    .restart local v9    # "ia":Ljava/net/InetAddress;
    :try_start_6
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_7

    .end local v9    # "ia":Ljava/net/InetAddress;
    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric dns addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v2    # "addr":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    if-eqz p2, :cond_e

    const/4 v14, 0x2

    new-array v6, v14, [Ljava/lang/String;

    .local v6, "dnsServers":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "dns1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v6, v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "dns2"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v6, v15

    const/4 v14, 0x0

    array-length v15, v6

    :goto_8
    if-ge v14, v15, :cond_f

    aget-object v5, v6, v14

    .local v5, "dnsAddr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v16

    if-eqz v16, :cond_d

    :cond_c
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_d
    :try_start_7
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v9

    .restart local v9    # "ia":Ljava/net/InetAddress;
    :try_start_8
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v16

    if-nez v16, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_9

    .end local v9    # "ia":Ljava/net/InetAddress;
    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric dns addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v5    # "dnsAddr":Ljava/lang/String;
    .end local v6    # "dnsServers":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    new-instance v14, Ljava/net/UnknownHostException;

    const-string v15, "Empty dns response and no system default dns"

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v14, v14

    if-nez v14, :cond_11

    :cond_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "gw"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "sysGateways":Ljava/lang/String;
    if-eqz v13, :cond_12

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .end local v13    # "sysGateways":Ljava/lang/String;
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_b
    move/from16 v0, v16

    if-ge v14, v0, :cond_14

    aget-object v2, v15, v14

    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_13

    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .end local v2    # "addr":Ljava/lang/String;
    .restart local v13    # "sysGateways":Ljava/lang/String;
    :cond_12
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_a

    .end local v13    # "sysGateways":Ljava/lang/String;
    .restart local v2    # "addr":Ljava/lang/String;
    :cond_13
    :try_start_9
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v9

    .restart local v9    # "ia":Ljava/net/InetAddress;
    :try_start_a
    new-instance v17, Landroid/net/RouteInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_c

    .end local v9    # "ia":Ljava/net/InetAddress;
    :catch_4
    move-exception v7

    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric gateway addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v2    # "addr":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_14
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/LinkProperties;->setMtu(I)V

    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0

    .restart local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    .end local v11    # "propertyPrefix":Ljava/lang/String;
    .end local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_15
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    const/4 v15, 0x4

    if-ge v14, v15, :cond_16

    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    .end local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_16
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v12    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v3, "DataCallResponse: {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " retry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ifname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " mtu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " addresses=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_1
    const-string v3, "] dnses=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_3
    const-string v3, "] gateways=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "addr":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_5
    const-string v3, "] pcscf=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_6

    aget-object v0, v3, v2

    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "addr":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_7
    const-string v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
