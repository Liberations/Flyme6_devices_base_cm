.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xd

.field static final TRANSACTION_cancelVibrate:I = 0x13

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xa

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0x9

.field static final TRANSACTION_getKeyboardLayouts:I = 0x8

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xc

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x6

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_isInTabletMode:I = 0x10

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0xf

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x11

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0x7

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/input/IInputManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
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

    move-result v28

    return v28

    :sswitch_0
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    :sswitch_1
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v22

    .local v22, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_0

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v28, 0x1

    return v28

    :cond_0
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v3    # "_arg0":I
    .end local v22    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v25

    .local v25, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/16 v28, 0x1

    return v28

    .end local v25    # "_result":[I
    :sswitch_3
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .local v15, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg3_length":I
    if-gez v18, :cond_1

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v9, v15, v1}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v24

    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_2

    const/16 v28, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    const/16 v28, 0x1

    return v28

    .end local v24    # "_result":Z
    :cond_1
    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .local v17, "_arg3":[Z
    goto :goto_1

    .end local v17    # "_arg3":[Z
    .restart local v24    # "_result":Z
    :cond_2
    const/16 v28, 0x0

    goto :goto_2

    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v15    # "_arg2":[I
    .end local v18    # "_arg3_length":I
    .end local v24    # "_result":Z
    :sswitch_4
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    .end local v3    # "_arg0":I
    :sswitch_5
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_3

    sget-object v28, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InputEvent;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v24

    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_4

    const/16 v28, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    return v28

    .end local v9    # "_arg1":I
    .end local v24    # "_result":Z
    :cond_3
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/view/InputEvent;
    goto :goto_3

    .end local v7    # "_arg0":Landroid/view/InputEvent;
    .restart local v9    # "_arg1":I
    .restart local v24    # "_result":Z
    :cond_4
    const/16 v28, 0x0

    goto :goto_4

    .end local v9    # "_arg1":I
    .end local v24    # "_result":Z
    :sswitch_6
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v21

    .local v21, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_5

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/16 v28, 0x1

    return v28

    :cond_5
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v21    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_7
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_6

    sget-object v28, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/input/TouchCalibration;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v14}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_6
    const/4 v14, 0x0

    .local v14, "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_6

    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v14    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_8
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v26

    .local v26, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v28, 0x1

    return v28

    .end local v26    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_9
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v20

    .local v20, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_7

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/16 v28, 0x1

    return v28

    :cond_7
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_a
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_8

    sget-object v28, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v23

    .local v23, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    .end local v23    # "_result":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_8

    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_b
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_9

    sget-object v28, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    .end local v11    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_9

    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_c
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_a

    sget-object v28, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v27

    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    .end local v27    # "_result":[Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_a

    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_d
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_b

    sget-object v28, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    .end local v11    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_b

    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_e
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_c

    sget-object v28, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    .end local v11    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_c

    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_f
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v4

    .local v4, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    .end local v4    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_10
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v19

    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    return v28

    .end local v19    # "_result":I
    :sswitch_11
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v5

    .local v5, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    .end local v5    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :sswitch_12
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v12

    .local v12, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .local v16, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v12, v13, v1}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    .end local v3    # "_arg0":I
    .end local v12    # "_arg1":[J
    .end local v13    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/IBinder;
    :sswitch_13
    const-string v28, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .local v10, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
