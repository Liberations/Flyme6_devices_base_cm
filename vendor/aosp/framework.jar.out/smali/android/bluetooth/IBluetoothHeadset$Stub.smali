.class public abstract Landroid/bluetooth/IBluetoothHeadset$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadset"

.field static final TRANSACTION_acceptIncomingConnect:I = 0xd

.field static final TRANSACTION_clccResponse:I = 0x18

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x11

.field static final TRANSACTION_disableWBS:I = 0x1a

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x12

.field static final TRANSACTION_enableWBS:I = 0x19

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x14

.field static final TRANSACTION_getAudioState:I = 0xf

.field static final TRANSACTION_getBatteryUsageHint:I = 0xc

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_isAudioConnected:I = 0xa

.field static final TRANSACTION_isAudioOn:I = 0x10

.field static final TRANSACTION_phoneStateChanged:I = 0x17

.field static final TRANSACTION_rejectIncomingConnect:I = 0xe

.field static final TRANSACTION_sendVendorSpecificResultCode:I = 0xb

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x13

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_startScoUsingVirtualVoiceCall:I = 0x15

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopScoUsingVirtualVoiceCall:I = 0x16

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothHeadset"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothHeadset;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
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
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    .local v25, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v25    # "_result":Z
    :cond_0
    const/16 v18, 0x0

    .local v18, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v25    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .end local v25    # "_result":Z
    :sswitch_2
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v25    # "_result":Z
    :cond_2
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v25    # "_result":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .end local v25    # "_result":Z
    :sswitch_3
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v24

    .local v24, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v20

    .local v20, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v24

    .restart local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v20    # "_arg0":[I
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v23

    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v23    # "_result":I
    :cond_4
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":I
    .end local v25    # "_result":Z
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "_arg1":I
    .restart local v25    # "_result":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .end local v6    # "_arg1":I
    .end local v25    # "_result":Z
    :sswitch_7
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v23

    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v23    # "_result":I
    :cond_7
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v25    # "_result":Z
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v25    # "_result":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .end local v25    # "_result":Z
    :sswitch_9
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v25    # "_result":Z
    :cond_a
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v25    # "_result":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .end local v25    # "_result":Z
    :sswitch_a
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v25    # "_result":Z
    :cond_c
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v25    # "_result":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .end local v25    # "_result":Z
    :sswitch_b
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .local v22, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v25    # "_result":Z
    :cond_e
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v21    # "_arg1":Ljava/lang/String;
    .restart local v22    # "_arg2":Ljava/lang/String;
    .restart local v25    # "_result":Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .end local v21    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v25    # "_result":Z
    :sswitch_c
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v23

    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v23    # "_result":I
    :cond_10
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_d
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_12

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v25    # "_result":Z
    :cond_11
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v25    # "_result":Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    .end local v25    # "_result":Z
    :sswitch_e
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_14

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v25    # "_result":Z
    :cond_13
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v25    # "_result":Z
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .end local v25    # "_result":Z
    :sswitch_f
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v23

    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v23    # "_result":I
    :cond_15
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_10
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioOn()Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_16

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_16
    const/4 v4, 0x0

    goto :goto_16

    .end local v25    # "_result":Z
    :sswitch_11
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectAudio()Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_17

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_17
    const/4 v4, 0x0

    goto :goto_17

    .end local v25    # "_result":Z
    :sswitch_12
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectAudio()Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_18

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_18
    const/4 v4, 0x0

    goto :goto_18

    .end local v25    # "_result":Z
    :sswitch_13
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    const/16 v19, 0x1

    .local v19, "_arg0":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setAudioRouteAllowed(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v19    # "_arg0":Z
    :cond_19
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Z
    goto :goto_19

    .end local v19    # "_arg0":Z
    :sswitch_14
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioRouteAllowed()Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .end local v25    # "_result":Z
    :sswitch_15
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_1c

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v25    # "_result":Z
    :cond_1b
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v25    # "_result":Z
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1c

    .end local v25    # "_result":Z
    :sswitch_16
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/BluetoothDevice;

    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_1e

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v25    # "_result":Z
    :cond_1d
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1d

    .end local v18    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v25    # "_result":Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1e

    .end local v25    # "_result":Z
    :sswitch_17
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/IBluetoothHeadset$Stub;->phoneStateChanged(IIILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :sswitch_18
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v15, 0x1

    .local v15, "_arg4":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg6":I
    move-object/from16 v10, p0

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-virtual/range {v10 .. v17}, Landroid/bluetooth/IBluetoothHeadset$Stub;->clccResponse(IIIIZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v15    # "_arg4":Z
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":I
    :cond_1f
    const/4 v15, 0x0

    .restart local v15    # "_arg4":Z
    goto :goto_1f

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":Z
    :sswitch_19
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->enableWBS()Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_20

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_20
    const/4 v4, 0x0

    goto :goto_20

    .end local v25    # "_result":Z
    :sswitch_1a
    const-string v4, "android.bluetooth.IBluetoothHeadset"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disableWBS()Z

    move-result v25

    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_21

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_21
    const/4 v4, 0x0

    goto :goto_21

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
