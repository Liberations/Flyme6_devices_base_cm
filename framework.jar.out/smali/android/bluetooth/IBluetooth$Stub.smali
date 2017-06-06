.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_cancelBondProcess:I = 0x15

.field static final TRANSACTION_cancelDiscovery:I = 0xf

.field static final TRANSACTION_configHciSnoopLog:I = 0x32

.field static final TRANSACTION_connectSocket:I = 0x30

.field static final TRANSACTION_createBond:I = 0x14

.field static final TRANSACTION_createMapMnsSdpRecord:I = 0x21

.field static final TRANSACTION_createPbapPceSdpRecord:I = 0x22

.field static final TRANSACTION_createSocketChannel:I = 0x31

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_dump:I = 0x3b

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_enableNoAutoConnect:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x33

.field static final TRANSACTION_fetchRemoteUuids:I = 0x1f

.field static final TRANSACTION_getActivityEnergyInfoFromController:I = 0x39

.field static final TRANSACTION_getAdapterConnectionState:I = 0x11

.field static final TRANSACTION_getAddress:I = 0x6

.field static final TRANSACTION_getBondState:I = 0x17

.field static final TRANSACTION_getBondedDevices:I = 0x13

.field static final TRANSACTION_getConnectionState:I = 0x18

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_getMessageAccessPermission:I = 0x29

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPhonebookAccessPermission:I = 0x27

.field static final TRANSACTION_getProfileConnectionState:I = 0x12

.field static final TRANSACTION_getRemoteAlias:I = 0x1b

.field static final TRANSACTION_getRemoteClass:I = 0x1d

.field static final TRANSACTION_getRemoteName:I = 0x19

.field static final TRANSACTION_getRemoteType:I = 0x1a

.field static final TRANSACTION_getRemoteUuids:I = 0x1e

.field static final TRANSACTION_getScanMode:I = 0xa

.field static final TRANSACTION_getSimAccessPermission:I = 0x2b

.field static final TRANSACTION_getSocketOpt:I = 0x3f

.field static final TRANSACTION_getState:I = 0x2

.field static final TRANSACTION_getUuids:I = 0x7

.field static final TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x38

.field static final TRANSACTION_isDiscovering:I = 0x10

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0x34

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0x36

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0x37

.field static final TRANSACTION_isPeripheralModeSupported:I = 0x35

.field static final TRANSACTION_onBrEdrDown:I = 0x3d

.field static final TRANSACTION_onLeServiceUp:I = 0x3c

.field static final TRANSACTION_registerCallback:I = 0x2e

.field static final TRANSACTION_removeBond:I = 0x16

.field static final TRANSACTION_removeSdpRecord:I = 0x23

.field static final TRANSACTION_reportActivityInfo:I = 0x3a

.field static final TRANSACTION_sdpSearch:I = 0x20

.field static final TRANSACTION_sendConnectionStateChange:I = 0x2d

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_setMessageAccessPermission:I = 0x2a

.field static final TRANSACTION_setName:I = 0x8

.field static final TRANSACTION_setPairingConfirmation:I = 0x26

.field static final TRANSACTION_setPasskey:I = 0x25

.field static final TRANSACTION_setPhonebookAccessPermission:I = 0x28

.field static final TRANSACTION_setPin:I = 0x24

.field static final TRANSACTION_setRemoteAlias:I = 0x1c

.field static final TRANSACTION_setScanMode:I = 0xb

.field static final TRANSACTION_setSimAccessPermission:I = 0x2c

.field static final TRANSACTION_setSocketOpt:I = 0x3e

.field static final TRANSACTION_startDiscovery:I = 0xe

.field static final TRANSACTION_unregisterCallback:I = 0x2f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetooth;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 35
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

    move-result v3

    return v3

    :sswitch_0
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v32

    .local v32, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .end local v32    # "_result":Z
    :sswitch_2
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getState()I

    move-result v28

    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :sswitch_3
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_1

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .end local v32    # "_result":Z
    :sswitch_4
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .end local v32    # "_result":Z
    :sswitch_5
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disable()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_3

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .end local v32    # "_result":Z
    :sswitch_6
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v31

    .local v31, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v34

    .local v34, "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    .end local v34    # "_result":[Landroid/os/ParcelUuid;
    :sswitch_8
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_4

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":Z
    :sswitch_9
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    .end local v31    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :sswitch_b
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_5

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .end local v5    # "_arg1":I
    .end local v14    # "_arg0":I
    .end local v32    # "_result":Z
    :sswitch_c
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :sswitch_d
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_6

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    .end local v14    # "_arg0":I
    .end local v32    # "_result":Z
    :sswitch_e
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_7

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    .end local v32    # "_result":Z
    :sswitch_f
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_8

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_8
    const/4 v3, 0x0

    goto :goto_8

    .end local v32    # "_result":Z
    :sswitch_10
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_9

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_9
    const/4 v3, 0x0

    goto :goto_9

    .end local v32    # "_result":Z
    :sswitch_11
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :sswitch_12
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v14    # "_arg0":I
    .end local v28    # "_result":I
    :sswitch_13
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v33

    .local v33, "_result":[Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    .end local v33    # "_result":[Landroid/bluetooth/BluetoothDevice;
    :sswitch_14
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_b

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v5    # "_arg1":I
    .end local v32    # "_result":Z
    :cond_a
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":I
    .restart local v32    # "_result":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    .end local v5    # "_arg1":I
    .end local v32    # "_result":Z
    :sswitch_15
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_d

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v32    # "_result":Z
    :cond_c
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v32    # "_result":Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_d

    .end local v32    # "_result":Z
    :sswitch_16
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_f

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v32    # "_result":Z
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v32    # "_result":Z
    :cond_f
    const/4 v3, 0x0

    goto :goto_f

    .end local v32    # "_result":Z
    :sswitch_17
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :cond_10
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_18
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :cond_11
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_19
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    .end local v31    # "_result":Ljava/lang/String;
    :cond_12
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1a
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :cond_13
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1b
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    .end local v31    # "_result":Ljava/lang/String;
    :cond_14
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1c
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_16

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v32    # "_result":Z
    :cond_15
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v15    # "_arg1":Ljava/lang/String;
    .restart local v32    # "_result":Z
    :cond_16
    const/4 v3, 0x0

    goto :goto_16

    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v32    # "_result":Z
    :sswitch_1d
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :cond_17
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1e
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v34

    .restart local v34    # "_result":[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    .end local v34    # "_result":[Landroid/os/ParcelUuid;
    :cond_18
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_18

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1f
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_1a

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v32    # "_result":Z
    :cond_19
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v32    # "_result":Z
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1a

    .end local v32    # "_result":Z
    :sswitch_20
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/ParcelUuid;

    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v1}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_1d

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v32    # "_result":Z
    :cond_1b
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_1c
    const/16 v25, 0x0

    .local v25, "_arg1":Landroid/os/ParcelUuid;
    goto :goto_1c

    .end local v25    # "_arg1":Landroid/os/ParcelUuid;
    .restart local v32    # "_result":Z
    :cond_1d
    const/4 v3, 0x0

    goto :goto_1d

    .end local v32    # "_result":Z
    :sswitch_21
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg4":I
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->createMapMnsSdpRecord(Ljava/lang/String;IIII)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v28    # "_result":I
    :sswitch_22
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->createPbapPceSdpRecord(Ljava/lang/String;I)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v28    # "_result":I
    :sswitch_23
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/bluetooth/IBluetooth$Stub;->removeSdpRecord(I)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_1e

    const/4 v3, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1e

    .end local v14    # "_arg0":I
    .end local v32    # "_result":Z
    :sswitch_24
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    const/16 v26, 0x1

    .local v26, "_arg1":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .local v20, "_arg3":[B
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v6, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_21

    const/4 v3, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":I
    .end local v20    # "_arg3":[B
    .end local v26    # "_arg1":Z
    .end local v32    # "_result":Z
    :cond_1f
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1f

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_20
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Z
    goto :goto_20

    .restart local v6    # "_arg2":I
    .restart local v20    # "_arg3":[B
    .restart local v32    # "_result":Z
    :cond_21
    const/4 v3, 0x0

    goto :goto_21

    .end local v6    # "_arg2":I
    .end local v20    # "_arg3":[B
    .end local v26    # "_arg1":Z
    .end local v32    # "_result":Z
    :sswitch_25
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    const/16 v26, 0x1

    .restart local v26    # "_arg1":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .restart local v20    # "_arg3":[B
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v6, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_24

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":I
    .end local v20    # "_arg3":[B
    .end local v26    # "_arg1":Z
    .end local v32    # "_result":Z
    :cond_22
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_22

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_23
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Z
    goto :goto_23

    .restart local v6    # "_arg2":I
    .restart local v20    # "_arg3":[B
    .restart local v32    # "_result":Z
    :cond_24
    const/4 v3, 0x0

    goto :goto_24

    .end local v6    # "_arg2":I
    .end local v20    # "_arg3":[B
    .end local v26    # "_arg1":Z
    .end local v32    # "_result":Z
    :sswitch_26
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    const/16 v26, 0x1

    .restart local v26    # "_arg1":Z
    :goto_26
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v10, v1}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_27

    const/4 v3, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v26    # "_arg1":Z
    .end local v32    # "_result":Z
    :cond_25
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_25

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :cond_26
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Z
    goto :goto_26

    .restart local v32    # "_result":Z
    :cond_27
    const/4 v3, 0x0

    goto :goto_27

    .end local v26    # "_arg1":Z
    .end local v32    # "_result":Z
    :sswitch_27
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :cond_28
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_28

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_28
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_2a

    const/4 v3, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v5    # "_arg1":I
    .end local v32    # "_result":Z
    :cond_29
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_29

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":I
    .restart local v32    # "_result":Z
    :cond_2a
    const/4 v3, 0x0

    goto :goto_2a

    .end local v5    # "_arg1":I
    .end local v32    # "_result":Z
    :sswitch_29
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :cond_2b
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2b

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2a
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_2d

    const/4 v3, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v5    # "_arg1":I
    .end local v32    # "_result":Z
    :cond_2c
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2c

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":I
    .restart local v32    # "_result":Z
    :cond_2d
    const/4 v3, 0x0

    goto :goto_2d

    .end local v5    # "_arg1":I
    .end local v32    # "_result":Z
    :sswitch_2b
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :cond_2e
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2c
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_30

    const/4 v3, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v5    # "_arg1":I
    .end local v32    # "_result":Z
    :cond_2f
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2f

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":I
    .restart local v32    # "_result":Z
    :cond_30
    const/4 v3, 0x0

    goto :goto_30

    .end local v5    # "_arg1":I
    .end local v32    # "_result":Z
    :sswitch_2d
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5, v6, v7}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    :cond_31
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_31

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2e
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v22

    .local v22, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v22    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_2f
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v22

    .restart local v22    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v22    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    :sswitch_30
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg4":I
    move-object/from16 v9, p0

    move v11, v5

    move v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Landroid/bluetooth/IBluetooth$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v30

    .local v30, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_34

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_34
    const/4 v3, 0x1

    return v3

    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v30    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_32
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_32

    .end local v10    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":I
    :cond_33
    const/4 v12, 0x0

    .local v12, "_arg2":Landroid/os/ParcelUuid;
    goto :goto_33

    .end local v12    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":I
    .restart local v30    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_34
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v30    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_31
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    sget-object v3, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg4":I
    move-object/from16 v13, p0

    move-object/from16 v16, v12

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v13 .. v18}, Landroid/bluetooth/IBluetooth$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v30

    .restart local v30    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_36

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_36
    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v30    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_35
    const/4 v12, 0x0

    .restart local v12    # "_arg2":Landroid/os/ParcelUuid;
    goto :goto_35

    .end local v12    # "_arg2":Landroid/os/ParcelUuid;
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":I
    .restart local v30    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_36
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_32
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    const/16 v24, 0x1

    .local v24, "_arg0":Z
    :goto_37
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->configHciSnoopLog(Z)Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_38

    const/4 v3, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v24    # "_arg0":Z
    .end local v32    # "_result":Z
    :cond_37
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Z
    goto :goto_37

    .restart local v32    # "_result":Z
    :cond_38
    const/4 v3, 0x0

    goto :goto_38

    .end local v24    # "_arg0":Z
    .end local v32    # "_result":Z
    :sswitch_33
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_39

    const/4 v3, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_39
    const/4 v3, 0x0

    goto :goto_39

    .end local v32    # "_result":Z
    :sswitch_34
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_3a

    const/4 v3, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_3a
    const/4 v3, 0x0

    goto :goto_3a

    .end local v32    # "_result":Z
    :sswitch_35
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isPeripheralModeSupported()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_3b

    const/4 v3, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_3b
    const/4 v3, 0x0

    goto :goto_3b

    .end local v32    # "_result":Z
    :sswitch_36
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_3c

    const/4 v3, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_3c
    const/4 v3, 0x0

    goto :goto_3c

    .end local v32    # "_result":Z
    :sswitch_37
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_3d

    const/4 v3, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_3d
    const/4 v3, 0x0

    goto :goto_3d

    .end local v32    # "_result":Z
    :sswitch_38
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported()Z

    move-result v32

    .restart local v32    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_3e

    const/4 v3, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_3e
    const/4 v3, 0x0

    goto :goto_3e

    .end local v32    # "_result":Z
    :sswitch_39
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getActivityEnergyInfoFromController()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_3a
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v29

    .local v29, "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_3f

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3f
    const/4 v3, 0x1

    return v3

    :cond_3f
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .end local v29    # "_result":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :sswitch_3b
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_40

    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/ParcelFileDescriptor;

    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->dump(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_40
    const/16 v23, 0x0

    .local v23, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_40

    .end local v23    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_3c
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUp()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_3d
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->onBrEdrDown()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_3e
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .restart local v20    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg4":I
    move-object/from16 v16, p0

    move/from16 v17, v14

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Landroid/bluetooth/IBluetooth$Stub;->setSocketOpt(III[BI)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v8    # "_arg4":I
    .end local v14    # "_arg0":I
    .end local v20    # "_arg3":[B
    .end local v28    # "_result":I
    :sswitch_3f
    const-string v3, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "_arg3_length":I
    if-gez v27, :cond_41

    const/16 v20, 0x0

    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v5, v6, v1}, Landroid/bluetooth/IBluetooth$Stub;->getSocketOpt(III[B)I

    move-result v28

    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":I
    :cond_41
    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .restart local v20    # "_arg3":[B
    goto :goto_41

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
