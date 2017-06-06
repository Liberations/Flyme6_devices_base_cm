.class public abstract Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattServerCallback"

.field static final TRANSACTION_onCharacteristicReadRequest:I = 0x5

.field static final TRANSACTION_onCharacteristicWriteRequest:I = 0x7

.field static final TRANSACTION_onDescriptorReadRequest:I = 0x6

.field static final TRANSACTION_onDescriptorWriteRequest:I = 0x8

.field static final TRANSACTION_onExecuteWrite:I = 0x9

.field static final TRANSACTION_onMtuChanged:I = 0xb

.field static final TRANSACTION_onNotificationSent:I = 0xa

.field static final TRANSACTION_onScanResult:I = 0x2

.field static final TRANSACTION_onServerConnectionState:I = 0x3

.field static final TRANSACTION_onServerRegistered:I = 0x1

.field static final TRANSACTION_onServiceAdded:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 47
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
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1, v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerRegistered(II)V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":I
    .end local v42    # "_arg0":I
    :sswitch_2
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v44

    .local v44, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v6, v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onScanResult(Ljava/lang/String;I[B)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v44    # "_arg2":[B
    :sswitch_3
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .restart local v42    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v43, 0x1

    .local v43, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .local v46, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerConnectionState(IIZLjava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v43    # "_arg2":Z
    .end local v46    # "_arg3":Ljava/lang/String;
    :cond_0
    const/16 v43, 0x0

    .restart local v43    # "_arg2":Z
    goto :goto_0

    .end local v6    # "_arg1":I
    .end local v42    # "_arg0":I
    .end local v43    # "_arg2":Z
    :sswitch_4
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .restart local v42    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/ParcelUuid;

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    const/4 v4, 0x1

    return v4

    :cond_1
    const/16 v45, 0x0

    .local v45, "_arg3":Landroid/os/ParcelUuid;
    goto :goto_1

    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v42    # "_arg0":I
    .end local v45    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_5
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x1

    .local v8, "_arg3":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    :goto_4
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v13}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    const/4 v4, 0x1

    return v4

    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_2

    .restart local v9    # "_arg4":I
    .restart local v10    # "_arg5":I
    :cond_3
    const/4 v11, 0x0

    .local v11, "_arg6":Landroid/os/ParcelUuid;
    goto :goto_3

    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v12    # "_arg7":I
    :cond_4
    const/4 v13, 0x0

    .local v13, "_arg8":Landroid/os/ParcelUuid;
    goto :goto_4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_6
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v8, 0x1

    .restart local v8    # "_arg3":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ParcelUuid;

    :goto_8
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    const/4 v4, 0x1

    return v4

    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":I
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_5

    .restart local v9    # "_arg4":I
    .restart local v10    # "_arg5":I
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_6

    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v12    # "_arg7":I
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_7

    .end local v13    # "_arg8":Landroid/os/ParcelUuid;
    :cond_8
    const/4 v14, 0x0

    .local v14, "_arg9":Landroid/os/ParcelUuid;
    goto :goto_8

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v12    # "_arg7":I
    .end local v14    # "_arg9":Landroid/os/ParcelUuid;
    :sswitch_7
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v20, 0x1

    .local v20, "_arg4":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v21, 0x1

    .local v21, "_arg5":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/ParcelUuid;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v27

    .local v27, "_arg11":[B
    move-object/from16 v15, p0

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v23, v12

    move-object/from16 v24, v13

    invoke-virtual/range {v15 .. v27}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg7":I
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v25    # "_arg9":I
    .end local v27    # "_arg11":[B
    :cond_9
    const/16 v20, 0x0

    .restart local v20    # "_arg4":Z
    goto :goto_9

    :cond_a
    const/16 v21, 0x0

    .restart local v21    # "_arg5":Z
    goto :goto_a

    .restart local v12    # "_arg7":I
    .restart local v22    # "_arg6":I
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_b

    .end local v13    # "_arg8":Landroid/os/ParcelUuid;
    .restart local v25    # "_arg9":I
    :cond_c
    const/16 v26, 0x0

    .local v26, "_arg10":Landroid/os/ParcelUuid;
    goto :goto_c

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg7":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Landroid/os/ParcelUuid;
    :sswitch_8
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v20, 0x1

    .restart local v20    # "_arg4":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    const/16 v21, 0x1

    .restart local v21    # "_arg5":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .restart local v22    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .restart local v25    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/ParcelUuid;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/ParcelUuid;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v41

    .local v41, "_arg12":[B
    move-object/from16 v28, p0

    move-object/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v19

    move/from16 v33, v20

    move/from16 v34, v21

    move/from16 v35, v22

    move/from16 v36, v12

    move-object/from16 v37, v13

    move/from16 v38, v25

    move-object/from16 v39, v26

    invoke-virtual/range {v28 .. v41}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg7":I
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v25    # "_arg9":I
    .end local v41    # "_arg12":[B
    :cond_d
    const/16 v20, 0x0

    .restart local v20    # "_arg4":Z
    goto :goto_d

    :cond_e
    const/16 v21, 0x0

    .restart local v21    # "_arg5":Z
    goto :goto_e

    .restart local v12    # "_arg7":I
    .restart local v22    # "_arg6":I
    :cond_f
    const/4 v13, 0x0

    .restart local v13    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_f

    .end local v13    # "_arg8":Landroid/os/ParcelUuid;
    .restart local v25    # "_arg9":I
    :cond_10
    const/16 v26, 0x0

    .restart local v26    # "_arg10":Landroid/os/ParcelUuid;
    goto :goto_10

    .end local v26    # "_arg10":Landroid/os/ParcelUuid;
    :cond_11
    const/16 v40, 0x0

    .local v40, "_arg11":Landroid/os/ParcelUuid;
    goto :goto_11

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v12    # "_arg7":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v25    # "_arg9":I
    .end local v40    # "_arg11":Landroid/os/ParcelUuid;
    :sswitch_9
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v43, 0x1

    .restart local v43    # "_arg2":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v5, v6, v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onExecuteWrite(Ljava/lang/String;IZ)V

    const/4 v4, 0x1

    return v4

    .end local v43    # "_arg2":Z
    :cond_12
    const/16 v43, 0x0

    .restart local v43    # "_arg2":Z
    goto :goto_12

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_arg2":Z
    :sswitch_a
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onNotificationSent(Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_b
    const-string v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onMtuChanged(Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
