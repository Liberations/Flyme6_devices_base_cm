.class public abstract Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetClient"

.field static final TRANSACTION_acceptCall:I = 0xe

.field static final TRANSACTION_acceptIncomingConnect:I = 0x3

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x1a

.field static final TRANSACTION_dial:I = 0x15

.field static final TRANSACTION_dialMemory:I = 0x16

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x1b

.field static final TRANSACTION_enterPrivateMode:I = 0x12

.field static final TRANSACTION_explicitCallTransfer:I = 0x13

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x1d

.field static final TRANSACTION_getAudioState:I = 0x19

.field static final TRANSACTION_getConnectedDevices:I = 0x5

.field static final TRANSACTION_getConnectionState:I = 0x7

.field static final TRANSACTION_getCurrentAgEvents:I = 0xd

.field static final TRANSACTION_getCurrentAgFeatures:I = 0x1e

.field static final TRANSACTION_getCurrentCalls:I = 0xc

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x6

.field static final TRANSACTION_getLastVoiceTagNumber:I = 0x18

.field static final TRANSACTION_getPriority:I = 0x9

.field static final TRANSACTION_holdCall:I = 0xf

.field static final TRANSACTION_redial:I = 0x14

.field static final TRANSACTION_rejectCall:I = 0x10

.field static final TRANSACTION_rejectIncomingConnect:I = 0x4

.field static final TRANSACTION_sendDTMF:I = 0x17

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x1c

.field static final TRANSACTION_setPriority:I = 0x8

.field static final TRANSACTION_startVoiceRecognition:I = 0xa

.field static final TRANSACTION_stopVoiceRecognition:I = 0xb

.field static final TRANSACTION_terminateCall:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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

    move-result v11

    return v11

    :sswitch_0
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_1
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .end local v10    # "_result":Z
    :sswitch_2
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .end local v10    # "_result":Z
    :sswitch_3
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_5

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    .end local v10    # "_result":Z
    :sswitch_4
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_6
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_7

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_7

    .end local v10    # "_result":Z
    :sswitch_5
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v8

    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    return v11

    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_6
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v8

    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    return v11

    .end local v2    # "_arg0":[I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_7
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_8
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v6    # "_result":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_9

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_a

    const/4 v11, 0x1

    :goto_a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_a

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_9
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_b

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_b
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v6    # "_result":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_a
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_c

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_d

    const/4 v11, 0x1

    :goto_d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    goto :goto_d

    .end local v10    # "_result":Z
    :sswitch_b
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_e

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_e
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_f

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_f

    .end local v10    # "_result":Z
    :sswitch_c
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_10

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_10
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v9

    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    return v11

    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHeadsetClientCall;>;"
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_d
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_11

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_11
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v7

    .local v7, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_12

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_12
    const/4 v11, 0x1

    return v11

    .end local v7    # "_result":Landroid/os/Bundle;
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v7    # "_result":Landroid/os/Bundle;
    :cond_12
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .end local v7    # "_result":Landroid/os/Bundle;
    :sswitch_e
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_13

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_14

    const/4 v11, 0x1

    :goto_14
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_14
    const/4 v11, 0x0

    goto :goto_14

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_f
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_15

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_15
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_16

    const/4 v11, 0x1

    :goto_16
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_15
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_16
    const/4 v11, 0x0

    goto :goto_16

    .end local v10    # "_result":Z
    :sswitch_10
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_17

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_17
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_18

    const/4 v11, 0x1

    :goto_18
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_18
    const/4 v11, 0x0

    goto :goto_18

    .end local v10    # "_result":Z
    :sswitch_11
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_19

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1a

    const/4 v11, 0x1

    :goto_1a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_1a
    const/4 v11, 0x0

    goto :goto_1a

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_12
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1b

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1c

    const/4 v11, 0x1

    :goto_1c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_1b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_1c
    const/4 v11, 0x0

    goto :goto_1c

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_13
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1d

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_1d
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1e

    const/4 v11, 0x1

    :goto_1e
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1d

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_1e
    const/4 v11, 0x0

    goto :goto_1e

    .end local v10    # "_result":Z
    :sswitch_14
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1f

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_1f
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->redial(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_20

    const/4 v11, 0x1

    :goto_20
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1f

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_20
    const/4 v11, 0x0

    goto :goto_20

    .end local v10    # "_result":Z
    :sswitch_15
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_21

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v5}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_22

    const/4 v11, 0x1

    :goto_22
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Z
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_21

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v10    # "_result":Z
    :cond_22
    const/4 v11, 0x0

    goto :goto_22

    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_16
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_23

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_24

    const/4 v11, 0x1

    :goto_24
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_23

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_24
    const/4 v11, 0x0

    goto :goto_24

    .end local v4    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_17
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_25

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .local v3, "_arg1":B
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_26

    const/4 v11, 0x1

    :goto_26
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v3    # "_arg1":B
    .end local v10    # "_result":Z
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_25

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":B
    .restart local v10    # "_result":Z
    :cond_26
    const/4 v11, 0x0

    goto :goto_26

    .end local v3    # "_arg1":B
    .end local v10    # "_result":Z
    :sswitch_18
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_27

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_27
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_28

    const/4 v11, 0x1

    :goto_28
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_27

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_28
    const/4 v11, 0x0

    goto :goto_28

    .end local v10    # "_result":Z
    :sswitch_19
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_29

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_29
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v6    # "_result":I
    :cond_29
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_29

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1a
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connectAudio()Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_2a

    const/4 v11, 0x1

    :goto_2a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_2a
    const/4 v11, 0x0

    goto :goto_2a

    .end local v10    # "_result":Z
    :sswitch_1b
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnectAudio()Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_2b

    const/4 v11, 0x1

    :goto_2b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_2b
    const/4 v11, 0x0

    goto :goto_2b

    .end local v10    # "_result":Z
    :sswitch_1c
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_2c
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setAudioRouteAllowed(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Z
    :cond_2c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_2c

    .end local v1    # "_arg0":Z
    :sswitch_1d
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioRouteAllowed()Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_2d

    const/4 v11, 0x1

    :goto_2d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_2d
    const/4 v11, 0x0

    goto :goto_2d

    .end local v10    # "_result":Z
    :sswitch_1e
    const-string v11, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2e

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_2e
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v7

    .restart local v7    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2f

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2f
    const/4 v11, 0x1

    return v11

    .end local v7    # "_result":Landroid/os/Bundle;
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v7    # "_result":Landroid/os/Bundle;
    :cond_2f
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
