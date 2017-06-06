.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_answerCallWithCallWaitingResponse:I = 0x14

.field static final TRANSACTION_conference:I = 0xc

.field static final TRANSACTION_disconnectCall:I = 0x3

.field static final TRANSACTION_holdCall:I = 0x4

.field static final TRANSACTION_mergeConference:I = 0xe

.field static final TRANSACTION_mute:I = 0x6

.field static final TRANSACTION_phoneAccountSelected:I = 0xb

.field static final TRANSACTION_playDtmfTone:I = 0x8

.field static final TRANSACTION_postDialContinue:I = 0xa

.field static final TRANSACTION_rejectCall:I = 0x2

.field static final TRANSACTION_setAudioRoute:I = 0x7

.field static final TRANSACTION_splitFromConference:I = 0xd

.field static final TRANSACTION_stopDtmfTone:I = 0x9

.field static final TRANSACTION_swapConference:I = 0xf

.field static final TRANSACTION_switchToOtherActiveSub:I = 0x12

.field static final TRANSACTION_transferCall:I = 0x13

.field static final TRANSACTION_turnOffProximitySensor:I = 0x11

.field static final TRANSACTION_turnOnProximitySensor:I = 0x10

.field static final TRANSACTION_unholdCall:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telecom/IInCallAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v11

    return v11

    :sswitch_0
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_1
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_2
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    const/4 v7, 0x1

    .local v7, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v7, v9}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v7    # "_arg1":Z
    .end local v9    # "_arg2":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    :sswitch_3
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    const/4 v2, 0x1

    .local v2, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    const/4 v11, 0x1

    return v11

    .end local v2    # "_arg0":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_1

    .end local v2    # "_arg0":Z
    :sswitch_7
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(I)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    int-to-char v3, v11

    .local v3, "_arg1":C
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":C
    :sswitch_9
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v7, 0x1

    .restart local v7    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v1, v7}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    const/4 v11, 0x1

    return v11

    .end local v7    # "_arg1":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_2

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    :sswitch_b
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x1

    .local v10, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v1, v5, v10}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_arg2":Z
    :cond_3
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_3

    .end local v5    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Z
    goto :goto_4

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg2":Z
    :sswitch_c
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    const/4 v11, 0x1

    return v11

    :sswitch_11
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v2, 0x1

    .restart local v2    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    const/4 v11, 0x1

    return v11

    .end local v2    # "_arg0":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_5

    .end local v2    # "_arg0":Z
    :sswitch_12
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->switchToOtherActiveSub(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->transferCall(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v11, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg2":I
    invoke-virtual {p0, v1, v4, v8}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCallWithCallWaitingResponse(Ljava/lang/String;II)V

    const/4 v11, 0x1

    return v11

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
