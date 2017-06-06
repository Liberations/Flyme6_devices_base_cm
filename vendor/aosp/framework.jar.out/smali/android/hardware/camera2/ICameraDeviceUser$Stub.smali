.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final TRANSACTION_beginConfigure_4:I = 0x5

.field static final TRANSACTION_cancelRequest:I = 0x4

.field static final TRANSACTION_createDefaultRequest:I = 0xb

.field static final TRANSACTION_createInputStream:I = 0x9

.field static final TRANSACTION_createStream:I = 0x8

.field static final TRANSACTION_deleteStream:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_endConfigure:I = 0x6

.field static final TRANSACTION_flush:I = 0xe

.field static final TRANSACTION_getCameraInfo:I = 0xc

.field static final TRANSACTION_getInputSurface:I = 0xa

.field static final TRANSACTION_prepare:I = 0xf

.field static final TRANSACTION_prepare2:I = 0x11

.field static final TRANSACTION_submitRequest:I = 0x2

.field static final TRANSACTION_submitRequestList:I = 0x3

.field static final TRANSACTION_tearDown:I = 0x10

.field static final TRANSACTION_waitUntilIdle:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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

    move-result v17

    return v17

    :sswitch_0
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :sswitch_1
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :sswitch_2
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_0

    sget-object v17, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1

    const/4 v13, 0x1

    .local v13, "_arg1":Z
    :goto_1
    new-instance v15, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v15}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .local v15, "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v15}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v16

    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v15, :cond_2

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/16 v17, 0x1

    return v17

    .end local v13    # "_arg1":Z
    .end local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_0

    .end local v3    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :cond_1
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Z
    goto :goto_1

    .restart local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .restart local v16    # "_result":I
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v13    # "_arg1":Z
    .end local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :sswitch_3
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v17, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .local v8, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_3

    const/4 v13, 0x1

    .restart local v13    # "_arg1":Z
    :goto_3
    new-instance v15, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v15}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .restart local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13, v15}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v15, :cond_4

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/16 v17, 0x1

    return v17

    .end local v13    # "_arg1":Z
    .end local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Z
    goto :goto_3

    .restart local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .restart local v16    # "_result":I
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v13    # "_arg1":Z
    .end local v15    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :sswitch_4
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    new-instance v12, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v12}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .local v12, "_arg1":Landroid/hardware/camera2/utils/LongParcelable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v12, :cond_5

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/16 v17, 0x1

    return v17

    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v2    # "_arg0":I
    .end local v12    # "_arg1":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :sswitch_5
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v16    # "_result":I
    :sswitch_6
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_6

    const/4 v9, 0x1

    .local v9, "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(Z)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v9    # "_arg0":Z
    .end local v16    # "_result":I
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Z
    goto :goto_6

    .end local v9    # "_arg0":Z
    :sswitch_7
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v2    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_8
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_7

    sget-object v17, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/OutputConfiguration;

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v16    # "_result":I
    :cond_7
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_7

    .end local v5    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    :sswitch_9
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v14}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(III)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v2    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v16    # "_result":I
    :sswitch_a
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    .local v7, "_arg0":Landroid/view/Surface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface(Landroid/view/Surface;)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v7, :cond_8

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/16 v17, 0x1

    return v17

    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .end local v7    # "_arg0":Landroid/view/Surface;
    .end local v16    # "_result":I
    :sswitch_b
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    new-instance v11, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .local v11, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v11, :cond_9

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/16 v17, 0x1

    return v17

    :cond_9
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "_result":I
    :sswitch_c
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .local v4, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v4, :cond_a

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/16 v17, 0x1

    return v17

    :cond_a
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .end local v4    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v16    # "_result":I
    :sswitch_d
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v16    # "_result":I
    :sswitch_e
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v6, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v6}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .local v6, "_arg0":Landroid/hardware/camera2/utils/LongParcelable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush(Landroid/hardware/camera2/utils/LongParcelable;)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v6, :cond_b

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    const/16 v17, 0x1

    return v17

    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .end local v6    # "_arg0":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v16    # "_result":I
    :sswitch_f
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v2    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_10
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v2    # "_arg0":I
    .end local v16    # "_result":I
    :sswitch_11
    const-string v17, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)I

    move-result v16

    .restart local v16    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
