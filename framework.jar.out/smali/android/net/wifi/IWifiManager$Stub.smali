.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x23

.field static final TRANSACTION_acquireWifiLock:I = 0x1e

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x6

.field static final TRANSACTION_addToBlacklist:I = 0x2c

.field static final TRANSACTION_buildWifiConfig:I = 0x28

.field static final TRANSACTION_clearBlacklist:I = 0x2d

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x43

.field static final TRANSACTION_disableNetwork:I = 0x9

.field static final TRANSACTION_disconnect:I = 0xf

.field static final TRANSACTION_enableAggressiveHandover:I = 0x3a

.field static final TRANSACTION_enableAutoJoinWhenAssociated:I = 0x40

.field static final TRANSACTION_enableNetwork:I = 0x8

.field static final TRANSACTION_enableTdls:I = 0x30

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x31

.field static final TRANSACTION_enableVerboseLogging:I = 0x38

.field static final TRANSACTION_factoryReset:I = 0x44

.field static final TRANSACTION_getAggressiveHandover:I = 0x3b

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3d

.field static final TRANSACTION_getBatchedScanResults:I = 0x34

.field static final TRANSACTION_getChannelList:I = 0xb

.field static final TRANSACTION_getConfigFile:I = 0x2f

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x12

.field static final TRANSACTION_getConnectionStatistics:I = 0x42

.field static final TRANSACTION_getCountryCode:I = 0x16

.field static final TRANSACTION_getCurrentNetwork:I = 0x45

.field static final TRANSACTION_getDhcpInfo:I = 0x1c

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x41

.field static final TRANSACTION_getFrequencyBand:I = 0x18

.field static final TRANSACTION_getHalBasedAutojoinOffload:I = 0x3f

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x5

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getScanResults:I = 0xe

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x39

.field static final TRANSACTION_getWifiApConfiguration:I = 0x27

.field static final TRANSACTION_getWifiApEnabledState:I = 0x26

.field static final TRANSACTION_getWifiEnabledState:I = 0x14

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2e

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x37

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x21

.field static final TRANSACTION_isBatchedScanSupported:I = 0x35

.field static final TRANSACTION_isDualBandSupported:I = 0x19

.field static final TRANSACTION_isIbssSupported:I = 0x1a

.field static final TRANSACTION_isMulticastEnabled:I = 0x22

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1d

.field static final TRANSACTION_pingSupplicant:I = 0xa

.field static final TRANSACTION_pollBatchedScan:I = 0x36

.field static final TRANSACTION_reassociate:I = 0x11

.field static final TRANSACTION_reconnect:I = 0x10

.field static final TRANSACTION_releaseMulticastLock:I = 0x24

.field static final TRANSACTION_releaseWifiLock:I = 0x20

.field static final TRANSACTION_removeNetwork:I = 0x7

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x32

.field static final TRANSACTION_saveConfiguration:I = 0x1b

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3c

.field static final TRANSACTION_setCountryCode:I = 0x15

.field static final TRANSACTION_setFrequencyBand:I = 0x17

.field static final TRANSACTION_setHalBasedAutojoinOffload:I = 0x3e

.field static final TRANSACTION_setWifiApConfiguration:I = 0x29

.field static final TRANSACTION_setWifiApEnabled:I = 0x25

.field static final TRANSACTION_setWifiEnabled:I = 0x13

.field static final TRANSACTION_startLocationRestrictedScan:I = 0xd

.field static final TRANSACTION_startScan:I = 0xc

.field static final TRANSACTION_startWifi:I = 0x2a

.field static final TRANSACTION_stopBatchedScan:I = 0x33

.field static final TRANSACTION_stopWifi:I = 0x2b

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 36
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

    move-result v35

    return v35

    :sswitch_0
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v35, 0x1

    return v35

    :sswitch_1
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v21

    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v21    # "_result":I
    :sswitch_2
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v24

    .local v24, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_0

    const/16 v35, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v35, 0x1

    return v35

    :cond_0
    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v24    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v33

    .local v33, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v35, 0x1

    return v35

    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v33

    .restart local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v35, 0x1

    return v35

    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_1

    sget-object v35, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    .local v25, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_2

    const/16 v35, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/16 v35, 0x1

    return v35

    .end local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_1

    .end local v5    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_3

    sget-object v35, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v21

    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v21    # "_result":I
    :cond_3
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_3

    .end local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v34

    .local v34, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_4

    const/16 v35, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_4
    const/16 v35, 0x0

    goto :goto_4

    .end local v3    # "_arg0":I
    .end local v34    # "_result":Z
    :sswitch_8
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_5

    const/16 v16, 0x1

    .local v16, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_6

    const/16 v35, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v16    # "_arg1":Z
    .end local v34    # "_result":Z
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_5

    .restart local v34    # "_result":Z
    :cond_6
    const/16 v35, 0x0

    goto :goto_6

    .end local v3    # "_arg0":I
    .end local v16    # "_arg1":Z
    .end local v34    # "_result":Z
    :sswitch_9
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_7

    const/16 v35, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_7
    const/16 v35, 0x0

    goto :goto_7

    .end local v3    # "_arg0":I
    .end local v34    # "_result":Z
    :sswitch_a
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_8

    const/16 v35, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_8
    const/16 v35, 0x0

    goto :goto_8

    .end local v34    # "_result":Z
    :sswitch_b
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v32

    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v35, 0x1

    return v35

    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_c
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_9

    sget-object v35, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanSettings;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_a

    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/WorkSource;

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :cond_9
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_9

    .end local v6    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_a
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/os/WorkSource;
    goto :goto_a

    .end local v14    # "_arg1":Landroid/os/WorkSource;
    :sswitch_d
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_b

    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/WorkSource;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->startLocationRestrictedScan(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :cond_b
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/os/WorkSource;
    goto :goto_b

    .end local v9    # "_arg0":Landroid/os/WorkSource;
    :sswitch_e
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v31

    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v35, 0x1

    return v35

    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_f
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_10
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_11
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_12
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v27

    .local v27, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_c

    const/16 v35, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    const/16 v35, 0x1

    return v35

    :cond_c
    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .end local v27    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_13
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_d

    const/4 v11, 0x1

    .local v11, "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_e

    const/16 v35, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v11    # "_arg0":Z
    .end local v34    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_d

    .restart local v34    # "_result":Z
    :cond_e
    const/16 v35, 0x0

    goto :goto_e

    .end local v11    # "_arg0":Z
    .end local v34    # "_result":Z
    :sswitch_14
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v21

    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v21    # "_result":I
    :sswitch_15
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_f

    const/16 v16, 0x1

    .restart local v16    # "_arg1":Z
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v16    # "_arg1":Z
    :cond_f
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_f

    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_16
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v29

    .local v29, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v35, 0x1

    return v35

    .end local v29    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_10

    const/16 v16, 0x1

    .restart local v16    # "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v16    # "_arg1":Z
    :cond_10
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_10

    .end local v3    # "_arg0":I
    .end local v16    # "_arg1":Z
    :sswitch_18
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v21

    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v21    # "_result":I
    :sswitch_19
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_11

    const/16 v35, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_11
    const/16 v35, 0x0

    goto :goto_11

    .end local v34    # "_result":Z
    :sswitch_1a
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isIbssSupported()Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_12

    const/16 v35, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_12
    const/16 v35, 0x0

    goto :goto_12

    .end local v34    # "_result":Z
    :sswitch_1b
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_13

    const/16 v35, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_13
    const/16 v35, 0x0

    goto :goto_13

    .end local v34    # "_result":Z
    :sswitch_1c
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v22

    .local v22, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_14

    const/16 v35, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_14
    const/16 v35, 0x1

    return v35

    :cond_14
    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .end local v22    # "_result":Landroid/net/DhcpInfo;
    :sswitch_1d
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_15

    const/16 v35, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_15
    const/16 v35, 0x0

    goto :goto_15

    .end local v34    # "_result":Z
    :sswitch_1e
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_16

    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/WorkSource;

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v8, v12, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_17

    const/16 v35, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v34    # "_result":Z
    :cond_16
    const/16 v20, 0x0

    .local v20, "_arg3":Landroid/os/WorkSource;
    goto :goto_16

    .end local v20    # "_arg3":Landroid/os/WorkSource;
    .restart local v34    # "_result":Z
    :cond_17
    const/16 v35, 0x0

    goto :goto_17

    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_1f
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .restart local v8    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_18

    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/WorkSource;

    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :cond_18
    const/4 v14, 0x0

    .restart local v14    # "_arg1":Landroid/os/WorkSource;
    goto :goto_18

    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Landroid/os/WorkSource;
    :sswitch_20
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .restart local v8    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_19

    const/16 v35, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_19
    const/16 v35, 0x0

    goto :goto_19

    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v34    # "_result":Z
    :sswitch_21
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_22
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_1a

    const/16 v35, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_1a
    const/16 v35, 0x0

    goto :goto_1a

    .end local v34    # "_result":Z
    :sswitch_23
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .restart local v8    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Ljava/lang/String;
    :sswitch_24
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_25
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_1b

    sget-object v35, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_1c

    const/16 v16, 0x1

    .restart local v16    # "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v16    # "_arg1":Z
    :cond_1b
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1b

    .end local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1c
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_1c

    .end local v16    # "_arg1":Z
    :sswitch_26
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v21

    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v21    # "_result":I
    :sswitch_27
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    .restart local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_1d

    const/16 v35, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    const/16 v35, 0x1

    return v35

    :cond_1d
    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .end local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_28
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .local v19, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v15, v1}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    .restart local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_1e

    const/16 v35, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1e
    const/16 v35, 0x1

    return v35

    :cond_1e
    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":[B
    .end local v25    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_29
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_1f

    sget-object v35, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :cond_1f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1f

    .end local v7    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2a
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_2b
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_2c
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v10    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_2e
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v28

    .local v28, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_20

    const/16 v35, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_20
    const/16 v35, 0x1

    return v35

    :cond_20
    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .end local v28    # "_result":Landroid/os/Messenger;
    :sswitch_2f
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v35, 0x1

    return v35

    .end local v29    # "_result":Ljava/lang/String;
    :sswitch_30
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_21

    const/16 v16, 0x1

    .restart local v16    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v16    # "_arg1":Z
    :cond_21
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_21

    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_31
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_22

    const/16 v16, 0x1

    .restart local v16    # "_arg1":Z
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v16    # "_arg1":Z
    :cond_22
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_22

    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_32
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_23

    sget-object v35, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/BatchedScanSettings;

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .local v13, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_24

    sget-object v35, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/WorkSource;

    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_25

    const/16 v35, 0x1

    :goto_25
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v13    # "_arg1":Landroid/os/IBinder;
    .end local v34    # "_result":Z
    :cond_23
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_23

    .end local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .restart local v13    # "_arg1":Landroid/os/IBinder;
    :cond_24
    const/16 v17, 0x0

    .local v17, "_arg2":Landroid/os/WorkSource;
    goto :goto_24

    .end local v17    # "_arg2":Landroid/os/WorkSource;
    .restart local v34    # "_result":Z
    :cond_25
    const/16 v35, 0x0

    goto :goto_25

    .end local v13    # "_arg1":Landroid/os/IBinder;
    .end local v34    # "_result":Z
    :sswitch_33
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_26

    sget-object v35, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/BatchedScanSettings;

    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :cond_26
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_26

    .end local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_34
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v30

    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v35, 0x1

    return v35

    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_35
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_27

    const/16 v35, 0x1

    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_27
    const/16 v35, 0x0

    goto :goto_27

    .end local v34    # "_result":Z
    :sswitch_36
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_37
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v35, 0x1

    return v35

    .end local v3    # "_arg0":I
    .end local v29    # "_result":Ljava/lang/String;
    :sswitch_38
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v3    # "_arg0":I
    :sswitch_39
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v21

    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v21    # "_result":I
    :sswitch_3a
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v3    # "_arg0":I
    :sswitch_3b
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v21

    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v21    # "_result":I
    :sswitch_3c
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v3    # "_arg0":I
    :sswitch_3d
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v21

    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v21    # "_result":I
    :sswitch_3e
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/IWifiManager$Stub;->setHalBasedAutojoinOffload(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v3    # "_arg0":I
    :sswitch_3f
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHalBasedAutojoinOffload()I

    move-result v21

    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v21    # "_result":I
    :sswitch_40
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    if-eqz v35, :cond_28

    const/4 v11, 0x1

    .restart local v11    # "_arg0":Z
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->enableAutoJoinWhenAssociated(Z)Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_29

    const/16 v35, 0x1

    :goto_29
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    .end local v11    # "_arg0":Z
    .end local v34    # "_result":Z
    :cond_28
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_28

    .restart local v34    # "_result":Z
    :cond_29
    const/16 v35, 0x0

    goto :goto_29

    .end local v11    # "_arg0":Z
    .end local v34    # "_result":Z
    :sswitch_41
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v34

    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_2a

    const/16 v35, 0x1

    :goto_2a
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    return v35

    :cond_2a
    const/16 v35, 0x0

    goto :goto_2a

    .end local v34    # "_result":Z
    :sswitch_42
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v26

    .local v26, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_2b

    const/16 v35, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2b
    const/16 v35, 0x1

    return v35

    :cond_2b
    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .end local v26    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_43
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    .end local v10    # "_arg0":Ljava/lang/String;
    :sswitch_44
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v35, 0x1

    return v35

    :sswitch_45
    const-string v35, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v23

    .local v23, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_2c

    const/16 v35, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v35, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2c
    const/16 v35, 0x1

    return v35

    :cond_2c
    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

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
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
