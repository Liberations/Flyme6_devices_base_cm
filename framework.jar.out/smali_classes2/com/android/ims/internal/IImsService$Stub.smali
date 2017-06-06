.class public abstract Lcom/android/ims/internal/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/android/ims/internal/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsService"

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_createCallProfile:I = 0x6

.field static final TRANSACTION_createCallSession:I = 0x7

.field static final TRANSACTION_getConfigInterface:I = 0xa

.field static final TRANSACTION_getEcbmInterface:I = 0xd

.field static final TRANSACTION_getPendingCallSession:I = 0x8

.field static final TRANSACTION_getUtInterface:I = 0x9

.field static final TRANSACTION_isConnected:I = 0x3

.field static final TRANSACTION_isOpened:I = 0x4

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setRegistrationListener:I = 0x5

.field static final TRANSACTION_setUiTTYMode:I = 0xe

.field static final TRANSACTION_turnOffIms:I = 0xc

.field static final TRANSACTION_turnOnIms:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.ims.internal.IImsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.ims.internal.IImsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/ims/internal/IImsService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
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

    move-result v19

    return v19

    :sswitch_0
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    :sswitch_1
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_0

    sget-object v19, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v11

    .local v11, "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v8, v11}, Lcom/android/ims/internal/IImsService$Stub;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v12

    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    .end local v11    # "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v12    # "_result":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/app/PendingIntent;
    goto :goto_0

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_2
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->close(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    .end local v2    # "_arg0":I
    :sswitch_3
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/ims/internal/IImsService$Stub;->isConnected(III)Z

    move-result v18

    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_1

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v18    # "_result":Z
    :sswitch_4
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->isOpened(I)Z

    move-result v18

    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_2

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    .end local v2    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_5
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v5

    .local v5, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/ims/internal/IImsService$Stub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    :sswitch_6
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/ims/internal/IImsService$Stub;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v13

    .local v13, "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_3

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/16 v19, 0x1

    return v19

    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_7
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_4

    sget-object v19, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/ImsCallProfile;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v10

    .local v10, "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v10}, Lcom/android/ims/internal/IImsService$Stub;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v14

    .local v14, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_5

    invoke-interface {v14}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    :goto_5
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v19, 0x1

    return v19

    .end local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_4
    const/4 v4, 0x0

    .local v4, "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_4

    .end local v4    # "_arg1":Lcom/android/ims/ImsCallProfile;
    .restart local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .restart local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    .end local v2    # "_arg0":I
    .end local v10    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_8
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/ims/internal/IImsService$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v14

    .restart local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_6

    invoke-interface {v14}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    :goto_6
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v19, 0x1

    return v19

    :cond_6
    const/16 v19, 0x0

    goto :goto_6

    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_9
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v17

    .local v17, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    :goto_7
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v19, 0x1

    return v19

    :cond_7
    const/16 v19, 0x0

    goto :goto_7

    .end local v2    # "_arg0":I
    .end local v17    # "_result":Lcom/android/ims/internal/IImsUt;
    :sswitch_a
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v15

    .local v15, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_8

    invoke-interface {v15}, Lcom/android/ims/internal/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    :goto_8
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v19, 0x1

    return v19

    :cond_8
    const/16 v19, 0x0

    goto :goto_8

    .end local v2    # "_arg0":I
    .end local v15    # "_result":Lcom/android/ims/internal/IImsConfig;
    :sswitch_b
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOnIms(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    .end local v2    # "_arg0":I
    :sswitch_c
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOffIms(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    .end local v2    # "_arg0":I
    :sswitch_d
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v16

    .local v16, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Lcom/android/ims/internal/IImsEcbm;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    :goto_9
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v19, 0x1

    return v19

    :cond_9
    const/16 v19, 0x0

    goto :goto_9

    .end local v2    # "_arg0":I
    .end local v16    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :sswitch_e
    const-string v19, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_a

    sget-object v19, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Message;

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v9}, Lcom/android/ims/internal/IImsService$Stub;->setUiTTYMode(IILandroid/os/Message;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :cond_a
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/os/Message;
    goto :goto_a

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
