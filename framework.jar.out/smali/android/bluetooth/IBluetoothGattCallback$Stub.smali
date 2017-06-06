.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final TRANSACTION_onBatchScanResults:I = 0x4

.field static final TRANSACTION_onCharacteristicRead:I = 0xa

.field static final TRANSACTION_onCharacteristicWrite:I = 0xb

.field static final TRANSACTION_onClientConnectionState:I = 0x2

.field static final TRANSACTION_onClientRegistered:I = 0x1

.field static final TRANSACTION_onConfigureMTU:I = 0x13

.field static final TRANSACTION_onDescriptorRead:I = 0xd

.field static final TRANSACTION_onDescriptorWrite:I = 0xe

.field static final TRANSACTION_onExecuteWrite:I = 0xc

.field static final TRANSACTION_onFoundOrLost:I = 0x14

.field static final TRANSACTION_onGetCharacteristic:I = 0x7

.field static final TRANSACTION_onGetDescriptor:I = 0x8

.field static final TRANSACTION_onGetIncludedService:I = 0x6

.field static final TRANSACTION_onGetService:I = 0x5

.field static final TRANSACTION_onMultiAdvertiseCallback:I = 0x11

.field static final TRANSACTION_onNotify:I = 0xf

.field static final TRANSACTION_onReadRemoteRssi:I = 0x10

.field static final TRANSACTION_onScanManagerErrorCallback:I = 0x12

.field static final TRANSACTION_onScanResult:I = 0x3

.field static final TRANSACTION_onSearchComplete:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 50
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
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1, v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientRegistered(II)V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":I
    .end local v41    # "_arg0":I
    :sswitch_2
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v48, 0x1

    .local v48, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .local v49, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v48

    move-object/from16 v3, v49

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientConnectionState(IIZLjava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v48    # "_arg2":Z
    .end local v49    # "_arg3":Ljava/lang/String;
    :cond_0
    const/16 v48, 0x0

    .restart local v48    # "_arg2":Z
    goto :goto_0

    .end local v6    # "_arg1":I
    .end local v41    # "_arg0":I
    .end local v48    # "_arg2":Z
    :sswitch_3
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/bluetooth/le/ScanResult;

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    const/4 v4, 0x1

    return v4

    :cond_1
    const/16 v42, 0x0

    .local v42, "_arg0":Landroid/bluetooth/le/ScanResult;
    goto :goto_1

    .end local v42    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :sswitch_4
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v43

    .local v43, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onBatchScanResults(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v43    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    :sswitch_5
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V

    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v8, 0x0

    .local v8, "_arg3":Landroid/os/ParcelUuid;
    goto :goto_2

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_6
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    :goto_4
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V

    const/4 v4, 0x1

    return v4

    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_3

    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    .restart local v9    # "_arg4":I
    .restart local v10    # "_arg5":I
    :cond_4
    const/4 v11, 0x0

    .local v11, "_arg6":Landroid/os/ParcelUuid;
    goto :goto_4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_7
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/ParcelUuid;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v12, p0

    move-object v13, v5

    move v14, v6

    move v15, v7

    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v12 .. v19}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    const/4 v4, 0x1

    return v4

    .end local v9    # "_arg4":I
    .end local v19    # "_arg6":I
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_5

    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    .restart local v9    # "_arg4":I
    :cond_6
    const/16 v18, 0x0

    .local v18, "_arg5":Landroid/os/ParcelUuid;
    goto :goto_6

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/ParcelUuid;
    :sswitch_8
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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

    if-eqz v4, :cond_7

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/ParcelUuid;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/ParcelUuid;

    :goto_9
    move-object/from16 v12, p0

    move-object v13, v5

    move v14, v6

    move v15, v7

    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v12 .. v20}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    const/4 v4, 0x1

    return v4

    .end local v9    # "_arg4":I
    .end local v19    # "_arg6":I
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_7

    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    .restart local v9    # "_arg4":I
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_8

    .end local v18    # "_arg5":Landroid/os/ParcelUuid;
    .restart local v19    # "_arg6":I
    :cond_9
    const/16 v20, 0x0

    .local v20, "_arg7":Landroid/os/ParcelUuid;
    goto :goto_9

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v19    # "_arg6":I
    .end local v20    # "_arg7":Landroid/os/ParcelUuid;
    :sswitch_9
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSearchComplete(Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_a
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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

    move-result v25

    .local v25, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/ParcelUuid;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v29

    .local v29, "_arg7":[B
    move-object/from16 v21, p0

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {v21 .. v29}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    const/4 v4, 0x1

    return v4

    .end local v10    # "_arg5":I
    .end local v29    # "_arg7":[B
    :cond_a
    const/16 v26, 0x0

    .local v26, "_arg4":Landroid/os/ParcelUuid;
    goto :goto_a

    .end local v26    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v10    # "_arg5":I
    :cond_b
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_b

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .end local v25    # "_arg3":I
    :sswitch_b
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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

    move-result v25

    .restart local v25    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/ParcelUuid;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    :goto_d
    move-object/from16 v21, p0

    move-object/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v27, v10

    move-object/from16 v28, v11

    invoke-virtual/range {v21 .. v28}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    const/4 v4, 0x1

    return v4

    .end local v10    # "_arg5":I
    :cond_c
    const/16 v26, 0x0

    .restart local v26    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_c

    .end local v26    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v10    # "_arg5":I
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_d

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .end local v25    # "_arg3":I
    :sswitch_c
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onExecuteWrite(Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_d
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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

    move-result v25

    .restart local v25    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/ParcelUuid;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .local v38, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/ParcelUuid;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .local v40, "_arg9":[B
    move-object/from16 v30, p0

    move-object/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v25

    move-object/from16 v35, v26

    move/from16 v36, v10

    move-object/from16 v37, v11

    invoke-virtual/range {v30 .. v40}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    const/4 v4, 0x1

    return v4

    .end local v10    # "_arg5":I
    .end local v38    # "_arg7":I
    .end local v40    # "_arg9":[B
    :cond_e
    const/16 v26, 0x0

    .restart local v26    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_e

    .end local v26    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v10    # "_arg5":I
    :cond_f
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_f

    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v38    # "_arg7":I
    :cond_10
    const/16 v39, 0x0

    .local v39, "_arg8":Landroid/os/ParcelUuid;
    goto :goto_10

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v10    # "_arg5":I
    .end local v25    # "_arg3":I
    .end local v38    # "_arg7":I
    .end local v39    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_e
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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

    move-result v25

    .restart local v25    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/ParcelUuid;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .restart local v38    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/ParcelUuid;

    :goto_13
    move-object/from16 v30, p0

    move-object/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v25

    move-object/from16 v35, v26

    move/from16 v36, v10

    move-object/from16 v37, v11

    invoke-virtual/range {v30 .. v39}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    const/4 v4, 0x1

    return v4

    .end local v10    # "_arg5":I
    .end local v38    # "_arg7":I
    :cond_11
    const/16 v26, 0x0

    .restart local v26    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_11

    .end local v26    # "_arg4":Landroid/os/ParcelUuid;
    .restart local v10    # "_arg5":I
    :cond_12
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_12

    .end local v11    # "_arg6":Landroid/os/ParcelUuid;
    .restart local v38    # "_arg7":I
    :cond_13
    const/16 v39, 0x0

    .restart local v39    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_13

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v10    # "_arg5":I
    .end local v25    # "_arg3":I
    .end local v38    # "_arg7":I
    .end local v39    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_f
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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

    if-eqz v4, :cond_14

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/ParcelUuid;

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v37

    .local v37, "_arg6":[B
    move-object/from16 v30, p0

    move-object/from16 v31, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move-object/from16 v34, v8

    move/from16 v35, v9

    move-object/from16 v36, v18

    invoke-virtual/range {v30 .. v37}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    const/4 v4, 0x1

    return v4

    .end local v9    # "_arg4":I
    .end local v37    # "_arg6":[B
    :cond_14
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_14

    .end local v8    # "_arg3":Landroid/os/ParcelUuid;
    .restart local v9    # "_arg4":I
    :cond_15
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_15

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/ParcelUuid;
    :sswitch_10
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;II)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_11
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .restart local v41    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/16 v46, 0x1

    .local v46, "_arg1":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/bluetooth/le/AdvertiseSettings;

    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v46

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    const/4 v4, 0x1

    return v4

    .end local v46    # "_arg1":Z
    :cond_16
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Z
    goto :goto_16

    :cond_17
    const/16 v47, 0x0

    .local v47, "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_17

    .end local v41    # "_arg0":I
    .end local v46    # "_arg1":Z
    .end local v47    # "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_12
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .restart local v41    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanManagerErrorCallback(I)V

    const/4 v4, 0x1

    return v4

    .end local v41    # "_arg0":I
    :sswitch_13
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

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
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConfigureMTU(Ljava/lang/String;II)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_14
    const-string v4, "android.bluetooth.IBluetoothGattCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    const/16 v44, 0x1

    .local v44, "_arg0":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/bluetooth/le/ScanResult;

    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    const/4 v4, 0x1

    return v4

    .end local v44    # "_arg0":Z
    :cond_18
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_18

    :cond_19
    const/16 v45, 0x0

    .local v45, "_arg1":Landroid/bluetooth/le/ScanResult;
    goto :goto_19

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
