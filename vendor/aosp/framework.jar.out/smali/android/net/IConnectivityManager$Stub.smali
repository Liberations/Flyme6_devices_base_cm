.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x3d

.field static final TRANSACTION_checkMobileProvisioning:I = 0x2d

.field static final TRANSACTION_establishVpn:I = 0x27

.field static final TRANSACTION_factoryReset:I = 0x40

.field static final TRANSACTION_getActiveLinkProperties:I = 0xb

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x3

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x10

.field static final TRANSACTION_getAllNetworkInfo:I = 0x6

.field static final TRANSACTION_getAllNetworkState:I = 0xf

.field static final TRANSACTION_getAllNetworks:I = 0x8

.field static final TRANSACTION_getAllVpnInfo:I = 0x2b

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0x9

.field static final TRANSACTION_getGlobalProxy:I = 0x22

.field static final TRANSACTION_getLastTetherError:I = 0x15

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2a

.field static final TRANSACTION_getLinkProperties:I = 0xd

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xc

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x2e

.field static final TRANSACTION_getNetworkCapabilities:I = 0xe

.field static final TRANSACTION_getNetworkForType:I = 0x7

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkInfoForNetwork:I = 0x5

.field static final TRANSACTION_getProxyForNetwork:I = 0x24

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x3c

.field static final TRANSACTION_getTetherConnectedSta:I = 0x1f

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x1d

.field static final TRANSACTION_getTetherableIfaces:I = 0x17

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1b

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1c

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1a

.field static final TRANSACTION_getTetheredIfaces:I = 0x18

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x19

.field static final TRANSACTION_getVpnConfig:I = 0x28

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x11

.field static final TRANSACTION_isNetworkSupported:I = 0xa

.field static final TRANSACTION_isTetheringSupported:I = 0x16

.field static final TRANSACTION_listenForNetwork:I = 0x38

.field static final TRANSACTION_pendingListenForNetwork:I = 0x39

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x36

.field static final TRANSACTION_prepareVpn:I = 0x25

.field static final TRANSACTION_registerNetworkAgent:I = 0x34

.field static final TRANSACTION_registerNetworkFactory:I = 0x31

.field static final TRANSACTION_releaseNetworkRequest:I = 0x3a

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x37

.field static final TRANSACTION_removeVpnAddress:I = 0x3e

.field static final TRANSACTION_reportInetCondition:I = 0x20

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x21

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x32

.field static final TRANSACTION_requestNetwork:I = 0x35

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x12

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x3b

.field static final TRANSACTION_setAirplaneMode:I = 0x30

.field static final TRANSACTION_setGlobalProxy:I = 0x23

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x2f

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x3f

.field static final TRANSACTION_setUsbTethering:I = 0x1e

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x26

.field static final TRANSACTION_startLegacyVpn:I = 0x29

.field static final TRANSACTION_startNattKeepalive:I = 0x41

.field static final TRANSACTION_stopKeepalive:I = 0x42

.field static final TRANSACTION_tether:I = 0x13

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x33

.field static final TRANSACTION_untether:I = 0x14

.field static final TRANSACTION_updateLockdownVpn:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 60
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    move-result-object v42

    .local v42, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v42    # "_result":Landroid/net/Network;
    :sswitch_2
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v44

    .local v44, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v44, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v44    # "_result":Landroid/net/NetworkInfo;
    :sswitch_3
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v44

    .restart local v44    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v44, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v24    # "_arg0":I
    .end local v44    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v44

    .restart local v44    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v44, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v4, 0x1

    return v4

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v24    # "_arg0":I
    .end local v44    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForNetwork(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v44

    .restart local v44    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v44, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v4, 0x1

    return v4

    .end local v44    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/16 v17, 0x0

    .local v17, "_arg0":Landroid/net/Network;
    goto :goto_4

    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v44    # "_result":Landroid/net/NetworkInfo;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v44    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v56

    .local v56, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    .end local v56    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v42

    .restart local v42    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v4, 0x1

    return v4

    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v24    # "_arg0":I
    .end local v42    # "_result":Landroid/net/Network;
    :sswitch_8
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v54

    .local v54, "_result":[Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    .end local v54    # "_result":[Landroid/net/Network;
    :sswitch_9
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v55

    .local v55, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    .end local v24    # "_arg0":I
    .end local v55    # "_result":[Landroid/net/NetworkCapabilities;
    :sswitch_a
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v53

    .local v53, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .end local v24    # "_arg0":I
    .end local v53    # "_result":Z
    :sswitch_b
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v41

    .local v41, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v41, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/4 v4, 0x1

    return v4

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .end local v41    # "_result":Landroid/net/LinkProperties;
    :sswitch_c
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v41

    .restart local v41    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v41, :cond_9

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v4, 0x1

    return v4

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v24    # "_arg0":I
    .end local v41    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v41

    .restart local v41    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v41, :cond_b

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    const/4 v4, 0x1

    return v4

    .end local v41    # "_result":Landroid/net/LinkProperties;
    :cond_a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_a

    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v41    # "_result":Landroid/net/LinkProperties;
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .end local v41    # "_result":Landroid/net/LinkProperties;
    :sswitch_e
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v43

    .local v43, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d
    const/4 v4, 0x1

    return v4

    .end local v43    # "_result":Landroid/net/NetworkCapabilities;
    :cond_c
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_c

    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v43    # "_result":Landroid/net/NetworkCapabilities;
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .end local v43    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_f
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v57

    .local v57, "_result":[Landroid/net/NetworkState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    .end local v57    # "_result":[Landroid/net/NetworkState;
    :sswitch_10
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v45

    .local v45, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v45, :cond_e

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    const/4 v4, 0x1

    return v4

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .end local v45    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_11
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .end local v53    # "_result":Z
    :sswitch_12
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v36

    .local v36, "_arg1":[B
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_10

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_10
    const/4 v4, 0x0

    goto :goto_10

    .end local v24    # "_arg0":I
    .end local v36    # "_arg1":[B
    .end local v53    # "_result":Z
    :sswitch_13
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v40

    .local v40, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":I
    :sswitch_14
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v40

    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":I
    :sswitch_15
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v40

    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":I
    :sswitch_16
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .end local v53    # "_result":Z
    :sswitch_17
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v59

    .local v59, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_18
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v59

    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_19
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v59

    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v59

    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v59

    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v59

    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v59

    .restart local v59    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v59    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v31, 0x1

    .local v31, "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v40

    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v31    # "_arg0":Z
    .end local v40    # "_result":I
    :cond_12
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Z
    goto :goto_12

    .end local v31    # "_arg0":Z
    :sswitch_1f
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v52

    .local v52, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v52    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    :sswitch_20
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v18    # "_arg1":I
    .end local v24    # "_arg0":I
    :sswitch_21
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/16 v35, 0x1

    .local v35, "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v35    # "_arg1":Z
    :cond_13
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_13

    .end local v17    # "_arg0":Landroid/net/Network;
    :cond_14
    const/16 v35, 0x0

    .restart local v35    # "_arg1":Z
    goto :goto_14

    .end local v35    # "_arg1":Z
    :sswitch_22
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v47

    .local v47, "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_15

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_15
    const/4 v4, 0x1

    return v4

    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .end local v47    # "_result":Landroid/net/ProxyInfo;
    :sswitch_23
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/ProxyInfo;

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_16
    const/16 v27, 0x0

    .local v27, "_arg0":Landroid/net/ProxyInfo;
    goto :goto_16

    .end local v27    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_24
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v47

    .restart local v47    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_18

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_18
    const/4 v4, 0x1

    return v4

    .end local v47    # "_result":Landroid/net/ProxyInfo;
    :cond_17
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_17

    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v47    # "_result":Landroid/net/ProxyInfo;
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .end local v47    # "_result":Landroid/net/ProxyInfo;
    :sswitch_25
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .local v34, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v14}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_19

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_19
    const/4 v4, 0x0

    goto :goto_19

    .end local v14    # "_arg2":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_26
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v39, 0x1

    .local v39, "_arg2":Z
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v39    # "_arg2":Z
    :cond_1a
    const/16 v39, 0x0

    .restart local v39    # "_arg2":Z
    goto :goto_1a

    .end local v18    # "_arg1":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg2":Z
    :sswitch_27
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/net/VpnConfig;

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v48

    .local v48, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_1c

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1c
    const/4 v4, 0x1

    return v4

    .end local v48    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1b
    const/16 v28, 0x0

    .local v28, "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_1b

    .end local v28    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .restart local v48    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .end local v48    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_28
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v50

    .local v50, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_1d

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    const/4 v4, 0x1

    return v4

    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .end local v24    # "_arg0":I
    .end local v50    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_29
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v4, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/net/VpnProfile;

    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_1e
    const/16 v29, 0x0

    .local v29, "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_1e

    .end local v29    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_2a
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v49

    .local v49, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v49, :cond_1f

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1f
    const/4 v4, 0x1

    return v4

    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .end local v24    # "_arg0":I
    .end local v49    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_2b
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v58

    .local v58, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    .end local v58    # "_result":[Lcom/android/internal/net/VpnInfo;
    :sswitch_2c
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_20

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_20
    const/4 v4, 0x0

    goto :goto_20

    .end local v53    # "_result":Z
    :sswitch_2d
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v40

    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v24    # "_arg0":I
    .end local v40    # "_result":I
    :sswitch_2e
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v51

    .local v51, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v51    # "_result":Ljava/lang/String;
    :sswitch_2f
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    const/16 v31, 0x1

    .restart local v31    # "_arg0":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .local v38, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v18

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v18    # "_arg1":I
    .end local v31    # "_arg0":Z
    .end local v38    # "_arg2":Ljava/lang/String;
    :cond_21
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Z
    goto :goto_21

    .end local v31    # "_arg0":Z
    :sswitch_30
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    const/16 v31, 0x1

    .restart local v31    # "_arg0":Z
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v31    # "_arg0":Z
    :cond_22
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Z
    goto :goto_22

    .end local v31    # "_arg0":Z
    :sswitch_31
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .restart local v34    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v34    # "_arg1":Ljava/lang/String;
    :cond_23
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/os/Messenger;
    goto :goto_23

    .end local v5    # "_arg0":Landroid/os/Messenger;
    :sswitch_32
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_25

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v53    # "_result":Z
    :cond_24
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_24

    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v53    # "_result":Z
    :cond_25
    const/4 v4, 0x0

    goto :goto_25

    .end local v53    # "_result":Z
    :sswitch_33
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_26
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/Messenger;
    goto :goto_26

    .end local v5    # "_arg0":Landroid/os/Messenger;
    :sswitch_34
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    sget-object v4, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    sget-object v4, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkCapabilities;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v4, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkMisc;

    :goto_2b
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v40

    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v9    # "_arg4":I
    .end local v40    # "_result":I
    :cond_27
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/Messenger;
    goto :goto_27

    .end local v5    # "_arg0":Landroid/os/Messenger;
    :cond_28
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/net/NetworkInfo;
    goto :goto_28

    .end local v6    # "_arg1":Landroid/net/NetworkInfo;
    :cond_29
    const/4 v7, 0x0

    .local v7, "_arg2":Landroid/net/LinkProperties;
    goto :goto_29

    .end local v7    # "_arg2":Landroid/net/LinkProperties;
    :cond_2a
    const/4 v8, 0x0

    .local v8, "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_2a

    .end local v8    # "_arg3":Landroid/net/NetworkCapabilities;
    .restart local v9    # "_arg4":I
    :cond_2b
    const/4 v10, 0x0

    .local v10, "_arg5":Landroid/net/NetworkMisc;
    goto :goto_2b

    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_35
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkCapabilities;

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Messenger;

    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .local v15, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v11, p0

    move/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v46

    .local v46, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v46, :cond_2e

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2e
    const/4 v4, 0x1

    return v4

    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v46    # "_result":Landroid/net/NetworkRequest;
    :cond_2c
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_2c

    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_2d
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/os/Messenger;
    goto :goto_2d

    .end local v13    # "_arg1":Landroid/os/Messenger;
    .restart local v9    # "_arg4":I
    .restart local v14    # "_arg2":I
    .restart local v15    # "_arg3":Landroid/os/IBinder;
    .restart local v46    # "_result":Landroid/net/NetworkRequest;
    :cond_2e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v46    # "_result":Landroid/net/NetworkRequest;
    :sswitch_36
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkCapabilities;

    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/PendingIntent;

    :goto_30
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v12, v1}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    move-result-object v46

    .restart local v46    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v46, :cond_31

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_31
    const/4 v4, 0x1

    return v4

    .end local v46    # "_result":Landroid/net/NetworkRequest;
    :cond_2f
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_2f

    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_30
    const/16 v33, 0x0

    .local v33, "_arg1":Landroid/app/PendingIntent;
    goto :goto_30

    .end local v33    # "_arg1":Landroid/app/PendingIntent;
    .restart local v46    # "_result":Landroid/net/NetworkRequest;
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .end local v46    # "_result":Landroid/net/NetworkRequest;
    :sswitch_37
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/PendingIntent;

    :goto_32
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_32
    const/16 v25, 0x0

    .local v25, "_arg0":Landroid/app/PendingIntent;
    goto :goto_32

    .end local v25    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_38
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkCapabilities;

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Messenger;

    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v37

    .local v37, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v12, v13, v1}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v46

    .restart local v46    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v46, :cond_35

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_35
    const/4 v4, 0x1

    return v4

    .end local v37    # "_arg2":Landroid/os/IBinder;
    .end local v46    # "_result":Landroid/net/NetworkRequest;
    :cond_33
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_33

    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_34
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/os/Messenger;
    goto :goto_34

    .end local v13    # "_arg1":Landroid/os/Messenger;
    .restart local v37    # "_arg2":Landroid/os/IBinder;
    .restart local v46    # "_result":Landroid/net/NetworkRequest;
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .end local v37    # "_arg2":Landroid/os/IBinder;
    .end local v46    # "_result":Landroid/net/NetworkRequest;
    :sswitch_39
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    sget-object v4, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkCapabilities;

    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/PendingIntent;

    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v12, v1}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_36
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_36

    .end local v12    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_37
    const/16 v33, 0x0

    .restart local v33    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_37

    .end local v33    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3a
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    sget-object v4, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkRequest;

    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_38
    const/16 v26, 0x0

    .local v26, "_arg0":Landroid/net/NetworkRequest;
    goto :goto_38

    .end local v26    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_3b
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    const/16 v35, 0x1

    .restart local v35    # "_arg1":Z
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    const/16 v39, 0x1

    .restart local v39    # "_arg2":Z
    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v35

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v35    # "_arg1":Z
    .end local v39    # "_arg2":Z
    :cond_39
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_39

    .end local v17    # "_arg0":Landroid/net/Network;
    :cond_3a
    const/16 v35, 0x0

    .restart local v35    # "_arg1":Z
    goto :goto_3a

    :cond_3b
    const/16 v39, 0x0

    .restart local v39    # "_arg2":Z
    goto :goto_3b

    .end local v35    # "_arg1":Z
    .end local v39    # "_arg2":Z
    :sswitch_3c
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .restart local v24    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v40

    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v24    # "_arg0":I
    .end local v40    # "_result":I
    :sswitch_3d
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_3c

    const/4 v4, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_3c
    const/4 v4, 0x0

    goto :goto_3c

    .end local v18    # "_arg1":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_3e
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_3d

    const/4 v4, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_3d
    const/4 v4, 0x0

    goto :goto_3d

    .end local v18    # "_arg1":I
    .end local v30    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_3f
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Landroid/net/Network;

    .local v32, "_arg0":[Landroid/net/Network;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_3e

    const/4 v4, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_3e
    const/4 v4, 0x0

    goto :goto_3e

    .end local v32    # "_arg0":[Landroid/net/Network;
    .end local v53    # "_result":Z
    :sswitch_40
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_41
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Messenger;

    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .restart local v15    # "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, "_arg6":Ljava/lang/String;
    move-object/from16 v16, p0

    move-object/from16 v20, v15

    invoke-virtual/range {v16 .. v23}, Landroid/net/IConnectivityManager$Stub;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v15    # "_arg3":Landroid/os/IBinder;
    .end local v18    # "_arg1":I
    .end local v21    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":Ljava/lang/String;
    :cond_3f
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_3f

    .end local v17    # "_arg0":Landroid/net/Network;
    .restart local v18    # "_arg1":I
    :cond_40
    const/16 v19, 0x0

    .local v19, "_arg2":Landroid/os/Messenger;
    goto :goto_40

    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":Landroid/os/Messenger;
    :sswitch_42
    const-string v4, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Network;

    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopKeepalive(Landroid/net/Network;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v18    # "_arg1":I
    :cond_41
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/net/Network;
    goto :goto_41

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
