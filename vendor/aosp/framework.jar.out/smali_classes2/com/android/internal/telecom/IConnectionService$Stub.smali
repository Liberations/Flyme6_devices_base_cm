.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final TRANSACTION_abort:I = 0x4

.field static final TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final TRANSACTION_addParticipantWithConference:I = 0x16

.field static final TRANSACTION_answer:I = 0x6

.field static final TRANSACTION_answerVideo:I = 0x5

.field static final TRANSACTION_conference:I = 0x10

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_explicitTransfer:I = 0x17

.field static final TRANSACTION_hold:I = 0xb

.field static final TRANSACTION_mergeConference:I = 0x12

.field static final TRANSACTION_onCallAudioStateChanged:I = 0xd

.field static final TRANSACTION_onPostDialContinue:I = 0x14

.field static final TRANSACTION_playDtmfTone:I = 0xe

.field static final TRANSACTION_reject:I = 0x7

.field static final TRANSACTION_rejectWithMessage:I = 0x8

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_setLocalCallHold:I = 0x15

.field static final TRANSACTION_silence:I = 0xa

.field static final TRANSACTION_splitFromConference:I = 0x11

.field static final TRANSACTION_stopDtmfTone:I = 0xf

.field static final TRANSACTION_swapConference:I = 0x13

.field static final TRANSACTION_unhold:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telecom.IConnectionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telecom/IConnectionService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v0

    return v0

    :sswitch_0
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v6

    .local v6, "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {p0, v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    const/4 v0, 0x1

    return v0

    .end local v6    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_2
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v6

    .restart local v6    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual {p0, v6}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    const/4 v0, 0x1

    return v0

    .end local v6    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_3
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/ConnectionRequest;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .local v4, "_arg3":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    .local v5, "_arg4":Z
    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    const/4 v0, 0x1

    return v0

    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_0

    .end local v1    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v2    # "_arg1":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_1

    .end local v3    # "_arg2":Landroid/telecom/ConnectionRequest;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Z
    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Z
    goto :goto_3

    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    :sswitch_4
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg1":I
    invoke-virtual {p0, v7, v9}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    :sswitch_6
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->silence(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telecom/CallAudioState;

    :goto_4
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/telecom/CallAudioState;
    goto :goto_4

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/telecom/CallAudioState;
    :sswitch_e
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v8, v0

    .local v8, "_arg1":C
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;C)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":C
    :sswitch_f
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v11, 0x1

    .local v11, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v7, v11}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    return v0

    .end local v11    # "_arg1":Z
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Z
    goto :goto_5

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Z
    :sswitch_15
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v11, 0x1

    .restart local v11    # "_arg1":Z
    :goto_6
    invoke-virtual {p0, v7, v11}, Lcom/android/internal/telecom/IConnectionService$Stub;->setLocalCallHold(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    return v0

    .end local v11    # "_arg1":Z
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Z
    goto :goto_6

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Z
    :sswitch_16
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->explicitTransfer(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

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
