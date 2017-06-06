.class public abstract Landroid/hardware/usb/IUsbManager$Stub;
.super Landroid/os/Binder;
.source "IUsbManager.java"

# interfaces
.implements Landroid/hardware/usb/IUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbManager"

.field static final TRANSACTION_allowUsbDebugging:I = 0x12

.field static final TRANSACTION_clearDefaults:I = 0xe

.field static final TRANSACTION_clearUsbDebuggingKeys:I = 0x14

.field static final TRANSACTION_denyUsbDebugging:I = 0x13

.field static final TRANSACTION_getCurrentAccessory:I = 0x3

.field static final TRANSACTION_getDeviceList:I = 0x1

.field static final TRANSACTION_getPortStatus:I = 0x16

.field static final TRANSACTION_getPorts:I = 0x15

.field static final TRANSACTION_grantAccessoryPermission:I = 0xc

.field static final TRANSACTION_grantDevicePermission:I = 0xb

.field static final TRANSACTION_hasAccessoryPermission:I = 0x8

.field static final TRANSACTION_hasDefaults:I = 0xd

.field static final TRANSACTION_hasDevicePermission:I = 0x7

.field static final TRANSACTION_isFunctionEnabled:I = 0xf

.field static final TRANSACTION_openAccessory:I = 0x4

.field static final TRANSACTION_openDevice:I = 0x2

.field static final TRANSACTION_requestAccessoryPermission:I = 0xa

.field static final TRANSACTION_requestDevicePermission:I = 0x9

.field static final TRANSACTION_setAccessoryPackage:I = 0x6

.field static final TRANSACTION_setCurrentFunction:I = 0x10

.field static final TRANSACTION_setDevicePackage:I = 0x5

.field static final TRANSACTION_setPortRoles:I = 0x17

.field static final TRANSACTION_setUsbDataUnlocked:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.usb.IUsbManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.hardware.usb.IUsbManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/usb/IUsbManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/usb/IUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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

    move-result v15

    return v15

    :sswitch_0
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :sswitch_1
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "_arg0":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/usb/IUsbManager$Stub;->getDeviceList(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v15, 0x1

    return v15

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .local v12, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_1

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v15, 0x1

    return v15

    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v10

    .local v10, "_result":Landroid/hardware/usb/UsbAccessory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_2

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v15}, Landroid/hardware/usb/UsbAccessory;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v15, 0x1

    return v15

    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v10    # "_result":Landroid/hardware/usb/UsbAccessory;
    :sswitch_4
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_3

    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .restart local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_4

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v15, 0x1

    return v15

    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_3

    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .restart local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_5
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_5

    sget-object v15, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v8}, Landroid/hardware/usb/IUsbManager$Stub;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :cond_5
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_5

    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :sswitch_6
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_6

    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v8}, Landroid/hardware/usb/IUsbManager$Stub;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_6

    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :sswitch_7
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_7

    sget-object v15, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v13

    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_8

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    return v15

    .end local v13    # "_result":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_7

    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .restart local v13    # "_result":Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_8

    .end local v13    # "_result":Z
    :sswitch_8
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_9

    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v13

    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_a

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    return v15

    .end local v13    # "_result":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_9

    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .restart local v13    # "_result":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_a

    .end local v13    # "_result":Z
    :sswitch_9
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_b

    sget-object v15, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_c

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v9}, Landroid/hardware/usb/IUsbManager$Stub;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v7    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_b

    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    .restart local v7    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/app/PendingIntent;
    goto :goto_c

    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_a
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_d

    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_e

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v9}, Landroid/hardware/usb/IUsbManager$Stub;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v7    # "_arg1":Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_d

    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    .restart local v7    # "_arg1":Ljava/lang/String;
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_e

    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_b
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_f

    sget-object v15, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v6    # "_arg1":I
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    goto :goto_f

    .end local v2    # "_arg0":Landroid/hardware/usb/UsbDevice;
    :sswitch_c
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_10

    sget-object v15, Landroid/hardware/usb/UsbAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v6    # "_arg1":I
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    goto :goto_10

    .end local v1    # "_arg0":Landroid/hardware/usb/UsbAccessory;
    :sswitch_d
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/hardware/usb/IUsbManager$Stub;->hasDefaults(Ljava/lang/String;I)Z

    move-result v13

    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_11

    const/4 v15, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    return v15

    :cond_11
    const/4 v15, 0x0

    goto :goto_11

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v13    # "_result":Z
    :sswitch_e
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/hardware/usb/IUsbManager$Stub;->clearDefaults(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v13

    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_12

    const/4 v15, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    return v15

    :cond_12
    const/4 v15, 0x0

    goto :goto_12

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_10
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunction(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_13

    const/4 v5, 0x1

    .local v5, "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDataUnlocked(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v5    # "_arg0":Z
    :cond_13
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_13

    .end local v5    # "_arg0":Z
    :sswitch_12
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_14

    const/4 v5, 0x1

    .restart local v5    # "_arg0":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Landroid/hardware/usb/IUsbManager$Stub;->allowUsbDebugging(ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v5    # "_arg0":Z
    .end local v7    # "_arg1":Ljava/lang/String;
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_14

    .end local v5    # "_arg0":Z
    :sswitch_13
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->denyUsbDebugging()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_14
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->clearUsbDebuggingKeys()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_15
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v14

    .local v14, "_result":[Landroid/hardware/usb/UsbPort;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v15, 0x1

    return v15

    .end local v14    # "_result":[Landroid/hardware/usb/UsbPort;
    :sswitch_16
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/usb/IUsbManager$Stub;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v11

    .local v11, "_result":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_15

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v15}, Landroid/hardware/usb/UsbPortStatus;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_15
    const/4 v15, 0x1

    return v15

    :cond_15
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Landroid/hardware/usb/UsbPortStatus;
    :sswitch_17
    const-string v15, "android.hardware.usb.IUsbManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v8}, Landroid/hardware/usb/IUsbManager$Stub;->setPortRoles(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
