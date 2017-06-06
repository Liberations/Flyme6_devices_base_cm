.class public Landroid/net/wifi/passpoint/WifiPasspointInfo;
.super Ljava/lang/Object;
.source "WifiPasspointInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;,
        Landroid/net/wifi/passpoint/WifiPasspointInfo$1;
    }
.end annotation


# static fields
.field public static final ANQP_CAPABILITY:I = 0x1

.field public static final CELLULAR_NETWORK:I = 0x40

.field public static final CONNECTION_CAPABILITY:I = 0x800

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOMAIN_NAME:I = 0x80

.field public static final HOTSPOT_CAPABILITY:I = 0x100

.field public static final IP_ADDR_TYPE_AVAILABILITY:I = 0x10

.field public static final NAI_REALM:I = 0x20

.field public static final NETWORK_AUTH_TYPE:I = 0x4

.field public static final OPERATOR_FRIENDLY_NAME:I = 0x200

.field public static final OSU_PROVIDER:I = 0x1000

.field public static final PRESET_ALL:I = 0x1fff

.field public static final PRESET_CRED_MATCH:I = 0x1e1

.field public static final ROAMING_CONSORTIUM:I = 0x8

.field public static final VENUE_NAME:I = 0x2

.field public static final WAN_METRICS:I = 0x400


# instance fields
.field public bssid:Ljava/lang/String;

.field public cellularNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public connectionCapabilityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;",
            ">;"
        }
    .end annotation
.end field

.field public domainNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

.field public naiRealmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;",
            ">;"
        }
    .end annotation
.end field

.field public networkAuthTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;",
            ">;"
        }
    .end annotation
.end field

.field public operatorFriendlyName:Ljava/lang/String;

.field public osuProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;",
            ">;"
        }
    .end annotation
.end field

.field public roamingConsortiumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public venueName:Ljava/lang/String;

.field public wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAnqpSubtypes(I)Ljava/lang/String;
    .locals 2
    .param p0, "mask"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "257,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "258,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "260,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "261,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "262,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, "263,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, "264,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, "268,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    const-string v1, "hs20:2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    const-string v1, "hs20:3,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_a

    const-string v1, "hs20:4,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_b

    const-string v1, "hs20:5,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_c

    const-string v1, "hs20:8,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .prologue
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .local v15, "sb":Ljava/lang/StringBuffer;
    const-string v16, "BSSID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    const-string v16, " venueName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\n"

    const-string v19, "\\n"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    const-string v16, " networkAuthType: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "auth$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;

    .local v1, "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v1}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v1    # "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    .end local v2    # "auth$iterator":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    const-string v16, " roamingConsortium: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "oi$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "oi":Ljava/lang/String;
    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .end local v7    # "oi":Ljava/lang/String;
    .end local v8    # "oi$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    const-string v16, " ipAddrTypeAvaibility: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    const-string v16, " naiRealm: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "realm$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;

    .local v13, "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v13}, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v13    # "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    .end local v14    # "realm$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    const-string v16, " cellularNetwork: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "plmn$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;

    .local v11, "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v11}, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .end local v11    # "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    .end local v12    # "plmn$iterator":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    const-string v16, " domainName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "fqdn$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "fqdn":Ljava/lang/String;
    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .end local v3    # "fqdn":Ljava/lang/String;
    .end local v4    # "fqdn$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    const-string v16, " operatorFriendlyName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    const-string v16, " wanMetrics: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    const-string v16, " connectionCapability: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "ip$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;

    .local v5, "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v5}, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .end local v5    # "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    .end local v6    # "ip$iterator":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    const-string v16, " osuProviderList: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "osu$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    .local v9, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v9}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .end local v9    # "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    .end local v10    # "osu$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 20
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->bssid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->venueName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->operatorFriendlyName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->networkAuthTypeList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "auth$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;

    .local v4, "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    iget v0, v4, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->type:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, v4, Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;->redirectUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .end local v4    # "auth":Landroid/net/wifi/passpoint/WifiPasspointInfo$NetworkAuthType;
    .end local v5    # "auth$iterator":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->roamingConsortiumList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "oi$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "oi":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .end local v10    # "oi":Ljava/lang/String;
    .end local v11    # "oi$iterator":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->ipAddrTypeAvailability:Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpAddressType;->availability:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->naiRealmList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "realm$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;

    .local v16, "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->encoding:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;->realm:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .end local v16    # "realm":Landroid/net/wifi/passpoint/WifiPasspointInfo$NaiRealm;
    .end local v17    # "realm$iterator":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->cellularNetworkList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "plmn$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;

    .local v14, "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    iget-object v0, v14, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mcc:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, v14, Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;->mnc:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .end local v14    # "plmn":Landroid/net/wifi/passpoint/WifiPasspointInfo$CellularNetwork;
    .end local v15    # "plmn$iterator":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->domainNameList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "fqdn$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "fqdn":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .end local v6    # "fqdn":Ljava/lang/String;
    .end local v7    # "fqdn$iterator":Ljava/util/Iterator;
    :cond_d
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->wanInfo:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkSpeed:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkSpeed:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->downlinkLoad:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->uplinkLoad:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->wanMetrics:Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo$WanMetrics;->lmd:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->connectionCapabilityList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "ip$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;

    .local v8, "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    iget v0, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->proto:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->port:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, v8, Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;->status:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v8    # "ip":Landroid/net/wifi/passpoint/WifiPasspointInfo$IpProtoPort;
    .end local v9    # "ip$iterator":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/passpoint/WifiPasspointInfo;->osuProviderList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "osu$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;

    .local v12, "osu":Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8
.end method
