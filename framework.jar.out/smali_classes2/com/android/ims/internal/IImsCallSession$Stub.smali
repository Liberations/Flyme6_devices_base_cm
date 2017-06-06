.class public abstract Lcom/android/ims/internal/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSession"

.field static final TRANSACTION_accept:I = 0xd

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_extendToConference:I = 0x14

.field static final TRANSACTION_getCallId:I = 0x2

.field static final TRANSACTION_getCallProfile:I = 0x3

.field static final TRANSACTION_getLocalCallProfile:I = 0x4

.field static final TRANSACTION_getProperty:I = 0x6

.field static final TRANSACTION_getRemoteCallProfile:I = 0x5

.field static final TRANSACTION_getState_6:I = 0x7

.field static final TRANSACTION_getVideoCallProvider_26:I = 0x1b

.field static final TRANSACTION_hold:I = 0x10

.field static final TRANSACTION_inviteParticipants_20:I = 0x15

.field static final TRANSACTION_isInCall:I = 0x8

.field static final TRANSACTION_isMultiparty:I = 0x1c

.field static final TRANSACTION_merge_17:I = 0x12

.field static final TRANSACTION_reject:I = 0xe

.field static final TRANSACTION_removeParticipants_21:I = 0x16

.field static final TRANSACTION_resume_16:I = 0x11

.field static final TRANSACTION_sendDtmf:I = 0x17

.field static final TRANSACTION_sendUssd:I = 0x1a

.field static final TRANSACTION_setListener:I = 0x9

.field static final TRANSACTION_setMute:I = 0xa

.field static final TRANSACTION_startConference:I = 0xc

.field static final TRANSACTION_startDtmf_23:I = 0x18

.field static final TRANSACTION_start_10:I = 0xb

.field static final TRANSACTION_stopDtmf:I = 0x19

.field static final TRANSACTION_terminate:I = 0xf

.field static final TRANSACTION_update:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.ims.internal.IImsCallSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSession;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :sswitch_1
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :sswitch_2
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v15

    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v13

    .local v13, "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_0

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v17, 0x1

    return v17

    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_4
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v13

    .restart local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_1

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v17, 0x1

    return v17

    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_5
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v13

    .restart local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_2

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/16 v17, 0x1

    return v17

    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v13    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_6
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/ims/internal/IImsCallSession$Stub;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getState()I

    move-result v12

    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v12    # "_result":I
    :sswitch_8
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isInCall()Z

    move-result v16

    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_3

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    .end local v16    # "_result":Z
    :sswitch_9
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v5

    .local v5, "_arg0":Lcom/android/ims/internal/IImsCallSessionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v5    # "_arg0":Lcom/android/ims/internal/IImsCallSessionListener;
    :sswitch_a
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_4

    const/4 v7, 0x1

    .local v7, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/ims/internal/IImsCallSession$Stub;->setMute(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v7    # "_arg0":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_4

    .end local v7    # "_arg0":Z
    :sswitch_b
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_5

    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ims/ImsCallProfile;

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/android/ims/internal/IImsCallSession$Stub;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_5
    const/4 v10, 0x0

    .local v10, "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_5

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_c
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_6

    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ims/ImsCallProfile;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/ims/internal/IImsCallSession$Stub;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_6

    .end local v8    # "_arg0":[Ljava/lang/String;
    .end local v10    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_d
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_7

    sget-object v17, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ims/ImsStreamMediaProfile;

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/android/ims/internal/IImsCallSession$Stub;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_7
    const/4 v11, 0x0

    .local v11, "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_7

    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_e
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->reject(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v3    # "_arg0":I
    :sswitch_f
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->terminate(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v3    # "_arg0":I
    :sswitch_10
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_8

    sget-object v17, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/ImsStreamMediaProfile;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_8
    const/4 v4, 0x0

    .local v4, "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_8

    .end local v4    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_11
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_9

    sget-object v17, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/ImsStreamMediaProfile;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_9

    .end local v4    # "_arg0":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_12
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->merge()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :sswitch_13
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_a

    sget-object v17, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ims/ImsStreamMediaProfile;

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/android/ims/internal/IImsCallSession$Stub;->update(ILcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_a
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_a

    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_14
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/ims/internal/IImsCallSession$Stub;->extendToConference([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v8    # "_arg0":[Ljava/lang/String;
    :sswitch_15
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/ims/internal/IImsCallSession$Stub;->inviteParticipants([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v8    # "_arg0":[Ljava/lang/String;
    :sswitch_16
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/ims/internal/IImsCallSession$Stub;->removeParticipants([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v8    # "_arg0":[Ljava/lang/String;
    :sswitch_17
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move/from16 v0, v17

    int-to-char v2, v0

    .local v2, "_arg0":C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_b

    sget-object v17, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Message;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendDtmf(CLandroid/os/Message;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_b
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/os/Message;
    goto :goto_b

    .end local v2    # "_arg0":C
    .end local v9    # "_arg1":Landroid/os/Message;
    :sswitch_18
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move/from16 v0, v17

    int-to-char v2, v0

    .restart local v2    # "_arg0":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->startDtmf(C)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v2    # "_arg0":C
    :sswitch_19
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->stopDtmf()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :sswitch_1a
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendUssd(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v14

    .local v14, "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_c

    invoke-interface {v14}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    :goto_c
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v17, 0x1

    return v17

    :cond_c
    const/16 v17, 0x0

    goto :goto_c

    .end local v14    # "_result":Lcom/android/ims/internal/IImsVideoCallProvider;
    :sswitch_1c
    const-string v17, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isMultiparty()Z

    move-result v16

    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_d

    const/16 v17, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_d
    const/16 v17, 0x0

    goto :goto_d

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
