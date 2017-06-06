.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final TRANSACTION_addConferenceCall:I = 0xc

.field static final TRANSACTION_addExistingConnection:I = 0x18

.field static final TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final TRANSACTION_onPostDialChar:I = 0xf

.field static final TRANSACTION_onPostDialWait:I = 0xe

.field static final TRANSACTION_queryRemoteConnectionServices:I = 0x10

.field static final TRANSACTION_removeCall:I = 0xd

.field static final TRANSACTION_resetCdmaConnectionTime:I = 0x1a

.field static final TRANSACTION_setActive:I = 0x2

.field static final TRANSACTION_setAddress:I = 0x15

.field static final TRANSACTION_setCallerDisplayName:I = 0x16

.field static final TRANSACTION_setConferenceMergeFailed:I = 0xb

.field static final TRANSACTION_setConferenceableConnections:I = 0x17

.field static final TRANSACTION_setConnectionCapabilities:I = 0x8

.field static final TRANSACTION_setConnectionProperties:I = 0x9

.field static final TRANSACTION_setDialing:I = 0x4

.field static final TRANSACTION_setDisconnected:I = 0x5

.field static final TRANSACTION_setExtras:I = 0x19

.field static final TRANSACTION_setIsConferenced:I = 0xa

.field static final TRANSACTION_setIsVoipAudioMode:I = 0x13

.field static final TRANSACTION_setOnHold:I = 0x6

.field static final TRANSACTION_setRingbackRequested:I = 0x7

.field static final TRANSACTION_setRinging:I = 0x3

.field static final TRANSACTION_setStatusHints:I = 0x14

.field static final TRANSACTION_setVideoProvider:I = 0x11

.field static final TRANSACTION_setVideoState:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    :sswitch_1
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_0

    sget-object v19, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/ConnectionRequest;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_1

    sget-object v19, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telecom/ParcelableConnection;

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v8, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    const/16 v19, 0x1

    return v19

    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/telecom/ConnectionRequest;
    goto :goto_0

    .end local v8    # "_arg1":Landroid/telecom/ConnectionRequest;
    :cond_1
    const/16 v18, 0x0

    .local v18, "_arg2":Landroid/telecom/ParcelableConnection;
    goto :goto_1

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/telecom/ParcelableConnection;
    :sswitch_2
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setActive(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRinging(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDialing(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_2

    sget-object v19, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telecom/DisconnectCause;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    const/16 v19, 0x1

    return v19

    :cond_2
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/telecom/DisconnectCause;
    goto :goto_2

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Landroid/telecom/DisconnectCause;
    :sswitch_6
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setOnHold(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_3

    const/16 v16, 0x1

    .local v16, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRingbackRequested(Ljava/lang/String;Z)V

    const/16 v19, 0x1

    return v19

    .end local v16    # "_arg1":Z
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_3

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_8
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionCapabilities(Ljava/lang/String;I)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_9
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionProperties(Ljava/lang/String;I)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_a
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_4

    sget-object v19, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telecom/ParcelableConference;

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    const/16 v19, 0x1

    return v19

    :cond_4
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/telecom/ParcelableConference;
    goto :goto_4

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/telecom/ParcelableConference;
    :sswitch_d
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move/from16 v0, v19

    int-to-char v4, v0

    .local v4, "_arg1":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;C)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":C
    :sswitch_10
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    move-result-object v2

    .local v2, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    const/16 v19, 0x1

    return v19

    .end local v2    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    :sswitch_11
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v13

    .local v13, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    :sswitch_12
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;I)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_13
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_5

    const/16 v16, 0x1

    .restart local v16    # "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    const/16 v19, 0x1

    return v19

    .end local v16    # "_arg1":Z
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Z
    goto :goto_5

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    :sswitch_14
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_6

    sget-object v19, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/StatusHints;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    const/16 v19, 0x1

    return v19

    :cond_6
    const/4 v12, 0x0

    .local v12, "_arg1":Landroid/telecom/StatusHints;
    goto :goto_6

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/StatusHints;
    :sswitch_15
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_7

    sget-object v19, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v6, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    const/16 v19, 0x1

    return v19

    .end local v17    # "_arg2":I
    :cond_7
    const/4 v6, 0x0

    .local v6, "_arg1":Landroid/net/Uri;
    goto :goto_7

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Landroid/net/Uri;
    :sswitch_16
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v14, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    :sswitch_17
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .local v15, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_18
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_8

    sget-object v19, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telecom/ParcelableConnection;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    const/16 v19, 0x1

    return v19

    :cond_8
    const/4 v11, 0x0

    .local v11, "_arg1":Landroid/telecom/ParcelableConnection;
    goto :goto_8

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Landroid/telecom/ParcelableConnection;
    :sswitch_19
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_9

    sget-object v19, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v19, 0x1

    return v19

    :cond_9
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_9

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    :sswitch_1a
    const-string v19, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->resetCdmaConnectionTime(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

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
