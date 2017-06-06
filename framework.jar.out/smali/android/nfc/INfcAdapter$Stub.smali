.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x14

.field static final TRANSACTION_disable:I = 0x6

.field static final TRANSACTION_disableNdefPush:I = 0x9

.field static final TRANSACTION_dispatch:I = 0x11

.field static final TRANSACTION_enable:I = 0x7

.field static final TRANSACTION_enableNdefPush:I = 0x8

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcAdapterVendorInterface:I = 0x4

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getState:I = 0x5

.field static final TRANSACTION_invokeBeam:I = 0xf

.field static final TRANSACTION_invokeBeamInternal:I = 0x10

.field static final TRANSACTION_isNdefPushEnabled:I = 0xa

.field static final TRANSACTION_pausePolling:I = 0xb

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x15

.field static final TRANSACTION_resumePolling:I = 0xc

.field static final TRANSACTION_setAppCallback:I = 0xe

.field static final TRANSACTION_setForegroundDispatch:I = 0xd

.field static final TRANSACTION_setP2pModes:I = 0x13

.field static final TRANSACTION_setReaderMode:I = 0x12

.field static final TRANSACTION_verifyNfcPermission:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/nfc/INfcAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
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

    move-result v24

    return v24

    :sswitch_0
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v24, 0x1

    return v24

    :sswitch_1
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v21

    .local v21, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v24, 0x1

    return v24

    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .end local v21    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v20

    .local v20, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v24, 0x1

    return v24

    :cond_1
    const/16 v24, 0x0

    goto :goto_1

    .end local v20    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v19

    .local v19, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v24, 0x1

    return v24

    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_4
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterVendorInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    .local v22, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v24, 0x1

    return v24

    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":Landroid/os/IBinder;
    :sswitch_5
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v18

    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    .end local v18    # "_result":I
    :sswitch_6
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_3

    const/4 v10, 0x1

    .local v10, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v23

    .local v23, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_4

    const/16 v24, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    .end local v10    # "_arg0":Z
    .end local v23    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_3

    .restart local v23    # "_result":Z
    :cond_4
    const/16 v24, 0x0

    goto :goto_4

    .end local v10    # "_arg0":Z
    .end local v23    # "_result":Z
    :sswitch_7
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v23

    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_5

    const/16 v24, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_5
    const/16 v24, 0x0

    goto :goto_5

    .end local v23    # "_result":Z
    :sswitch_8
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v23

    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_6

    const/16 v24, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_6
    const/16 v24, 0x0

    goto :goto_6

    .end local v23    # "_result":Z
    :sswitch_9
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v23

    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_7

    const/16 v24, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_7
    const/16 v24, 0x0

    goto :goto_7

    .end local v23    # "_result":Z
    :sswitch_a
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v23

    .restart local v23    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_8

    const/16 v24, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_8
    const/16 v24, 0x0

    goto :goto_8

    .end local v23    # "_result":Z
    :sswitch_b
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    .end local v2    # "_arg0":I
    :sswitch_c
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :sswitch_d
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_9

    sget-object v24, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    :goto_9
    sget-object v24, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/IntentFilter;

    .local v14, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_a

    sget-object v24, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/nfc/TechListParcel;

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v14, v1}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_9
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/app/PendingIntent;
    goto :goto_9

    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .restart local v14    # "_arg1":[Landroid/content/IntentFilter;
    :cond_a
    const/16 v16, 0x0

    .local v16, "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_a

    .end local v14    # "_arg1":[Landroid/content/IntentFilter;
    .end local v16    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_e
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v5

    .local v5, "_arg0":Landroid/nfc/IAppCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    .end local v5    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_f
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    const/16 v24, 0x1

    return v24

    :sswitch_10
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_b

    sget-object v24, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/BeamShareData;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    const/16 v24, 0x1

    return v24

    :cond_b
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/nfc/BeamShareData;
    goto :goto_b

    .end local v4    # "_arg0":Landroid/nfc/BeamShareData;
    :sswitch_11
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_c

    sget-object v24, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/Tag;

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :cond_c
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/nfc/Tag;
    goto :goto_c

    .end local v7    # "_arg0":Landroid/nfc/Tag;
    :sswitch_12
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v12

    .local v12, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_d

    sget-object v24, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v12, v15, v1}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :cond_d
    const/16 v17, 0x0

    .local v17, "_arg3":Landroid/os/Bundle;
    goto :goto_d

    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v12    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v15    # "_arg2":I
    .end local v17    # "_arg3":Landroid/os/Bundle;
    :sswitch_13
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    .end local v2    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_14
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v6

    .local v6, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    .local v13, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v13    # "_arg1":[I
    :sswitch_15
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v6

    .restart local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    .end local v6    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :sswitch_16
    const-string v24, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
