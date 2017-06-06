.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final TRANSACTION_addOnSubscriptionsChangedListener:I = 0x1

.field static final TRANSACTION_listen:I = 0x3

.field static final TRANSACTION_listenForSubscriber:I = 0x4

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0xb

.field static final TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xc

.field static final TRANSACTION_notifyCallState:I = 0x5

.field static final TRANSACTION_notifyCallStateForSubscriber:I = 0x6

.field static final TRANSACTION_notifyCarrierNetworkChange:I = 0x20

.field static final TRANSACTION_notifyCellInfo:I = 0x16

.field static final TRANSACTION_notifyCellInfoForSubscriber:I = 0x1b

.field static final TRANSACTION_notifyCellLocation:I = 0x13

.field static final TRANSACTION_notifyCellLocationForSubscriber:I = 0x14

.field static final TRANSACTION_notifyDataActivity:I = 0xd

.field static final TRANSACTION_notifyDataActivityForSubscriber:I = 0xe

.field static final TRANSACTION_notifyDataConnection:I = 0xf

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x11

.field static final TRANSACTION_notifyDataConnectionFailedForSubscriber:I = 0x12

.field static final TRANSACTION_notifyDataConnectionForSubscriber:I = 0x10

.field static final TRANSACTION_notifyDataConnectionRealTimeInfo:I = 0x1c

.field static final TRANSACTION_notifyDisconnectCause:I = 0x19

.field static final TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0xa

.field static final TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x1e

.field static final TRANSACTION_notifyOtaspChanged:I = 0x15

.field static final TRANSACTION_notifyPreciseCallState:I = 0x17

.field static final TRANSACTION_notifyPreciseCallStateForSubscriber:I = 0x18

.field static final TRANSACTION_notifyPreciseDataConnectionFailed:I = 0x1a

.field static final TRANSACTION_notifyServiceStateForPhoneId:I = 0x7

.field static final TRANSACTION_notifySignalStrength:I = 0x8

.field static final TRANSACTION_notifySignalStrengthForSubscriber:I = 0x9

.field static final TRANSACTION_notifySubscriptionInfoChanged:I = 0x1f

.field static final TRANSACTION_notifyVoLteServiceStateChanged:I = 0x1d

.field static final TRANSACTION_removeOnSubscriptionsChangedListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 48
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

    move-result v5

    return v5

    :sswitch_0
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :sswitch_1
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .local v36, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v41

    .local v41, "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v36    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :sswitch_2
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v41

    .restart local v41    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v36    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    :sswitch_3
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v42

    .local v42, "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .local v45, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/16 v47, 0x1

    .local v47, "_arg3":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v42

    move/from16 v3, v45

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v47    # "_arg3":Z
    :cond_0
    const/16 v47, 0x0

    .restart local v47    # "_arg3":Z
    goto :goto_0

    .end local v36    # "_arg0":Ljava/lang/String;
    .end local v42    # "_arg1":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v45    # "_arg2":I
    .end local v47    # "_arg3":Z
    :sswitch_4
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v8

    .local v8, "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v10, 0x1

    .local v10, "_arg4":Z
    :goto_1
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v10    # "_arg4":Z
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "_arg4":Z
    goto :goto_1

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Z
    :sswitch_5
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1, v14}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForSubscriber(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v23    # "_arg1":I
    :sswitch_7
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/telephony/ServiceState;

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v46

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_2
    const/16 v46, 0x0

    .local v46, "_arg2":Landroid/telephony/ServiceState;
    goto :goto_2

    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v46    # "_arg2":Landroid/telephony/ServiceState;
    :sswitch_8
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/SignalStrength;

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrength(Landroid/telephony/SignalStrength;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_3
    const/16 v34, 0x0

    .local v34, "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_3

    .end local v34    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_9
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/telephony/SignalStrength;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_4
    const/16 v40, 0x0

    .local v40, "_arg1":Landroid/telephony/SignalStrength;
    goto :goto_4

    .end local v6    # "_arg0":I
    .end local v40    # "_arg1":Landroid/telephony/SignalStrength;
    :sswitch_a
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v24, 0x1

    .local v24, "_arg2":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg2":Z
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_5

    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v24    # "_arg2":Z
    :sswitch_b
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v38, 0x1

    .local v38, "_arg0":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v38    # "_arg0":Z
    :cond_6
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Z
    goto :goto_6

    .end local v38    # "_arg0":Z
    :sswitch_c
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v13, 0x1

    .local v13, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v13    # "_arg1":Z
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Z
    goto :goto_7

    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Z
    :sswitch_d
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_e
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    :sswitch_f
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v13, 0x1

    .restart local v13    # "_arg1":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/LinkProperties;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/NetworkCapabilities;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/16 v20, 0x1

    .local v20, "_arg8":Z
    :goto_b
    move-object/from16 v11, p0

    move v12, v6

    invoke-virtual/range {v11 .. v20}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":Z
    :cond_8
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Z
    goto :goto_8

    .restart local v14    # "_arg2":Ljava/lang/String;
    .restart local v15    # "_arg3":Ljava/lang/String;
    .restart local v16    # "_arg4":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    .local v17, "_arg5":Landroid/net/LinkProperties;
    goto :goto_9

    .end local v17    # "_arg5":Landroid/net/LinkProperties;
    :cond_a
    const/16 v18, 0x0

    .local v18, "_arg6":Landroid/net/NetworkCapabilities;
    goto :goto_a

    .end local v18    # "_arg6":Landroid/net/NetworkCapabilities;
    .restart local v19    # "_arg7":I
    :cond_b
    const/16 v20, 0x0

    .restart local v20    # "_arg8":Z
    goto :goto_b

    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":Z
    :sswitch_10
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v24, 0x1

    .restart local v24    # "_arg2":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .local v27, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/LinkProperties;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/NetworkCapabilities;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v31, 0x1

    .local v31, "_arg9":Z
    :goto_f
    move-object/from16 v21, p0

    move/from16 v22, v6

    move-object/from16 v25, v15

    move-object/from16 v26, v16

    invoke-virtual/range {v21 .. v31}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v24    # "_arg2":Z
    .end local v27    # "_arg5":Ljava/lang/String;
    .end local v30    # "_arg8":I
    .end local v31    # "_arg9":Z
    :cond_c
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Z
    goto :goto_c

    .restart local v15    # "_arg3":Ljava/lang/String;
    .restart local v16    # "_arg4":Ljava/lang/String;
    .restart local v27    # "_arg5":Ljava/lang/String;
    :cond_d
    const/16 v28, 0x0

    .local v28, "_arg6":Landroid/net/LinkProperties;
    goto :goto_d

    .end local v28    # "_arg6":Landroid/net/LinkProperties;
    :cond_e
    const/16 v29, 0x0

    .local v29, "_arg7":Landroid/net/NetworkCapabilities;
    goto :goto_e

    .end local v29    # "_arg7":Landroid/net/NetworkCapabilities;
    .restart local v30    # "_arg8":I
    :cond_f
    const/16 v31, 0x0

    .restart local v31    # "_arg9":Z
    goto :goto_f

    .end local v6    # "_arg0":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg1":I
    .end local v24    # "_arg2":Z
    .end local v27    # "_arg5":Ljava/lang/String;
    .end local v30    # "_arg8":I
    .end local v31    # "_arg9":Z
    :sswitch_11
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v14}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/Bundle;

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_10
    const/16 v32, 0x0

    .local v32, "_arg0":Landroid/os/Bundle;
    goto :goto_10

    .end local v32    # "_arg0":Landroid/os/Bundle;
    :sswitch_14
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Bundle;

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_11
    const/16 v39, 0x0

    .local v39, "_arg1":Landroid/os/Bundle;
    goto :goto_11

    .end local v6    # "_arg0":I
    .end local v39    # "_arg1":Landroid/os/Bundle;
    :sswitch_15
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_16
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v37

    .local v37, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v37    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_17
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .restart local v45    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v45

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    .end local v45    # "_arg2":I
    :sswitch_18
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .restart local v45    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v45

    invoke-virtual {v0, v6, v1, v2, v9}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallStateForSubscriber(IIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v9    # "_arg3":I
    .end local v23    # "_arg1":I
    .end local v45    # "_arg2":I
    :sswitch_19
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v23    # "_arg1":I
    :sswitch_1a
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v7, v14, v15}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v36    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    sget-object v5, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v43

    .local v43, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v43    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_1c
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/telephony/DataConnectionRealTimeInfo;

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_12
    const/16 v33, 0x0

    .local v33, "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    goto :goto_12

    .end local v33    # "_arg0":Landroid/telephony/DataConnectionRealTimeInfo;
    :sswitch_1d
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/telephony/VoLteServiceState;

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_13
    const/16 v35, 0x0

    .local v35, "_arg0":Landroid/telephony/VoLteServiceState;
    goto :goto_13

    .end local v35    # "_arg0":Landroid/telephony/VoLteServiceState;
    :sswitch_1e
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v44

    .local v44, "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v44    # "_arg1":[B
    :sswitch_1f
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_20
    const-string v5, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v38, 0x1

    .restart local v38    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v38    # "_arg0":Z
    :cond_14
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Z
    goto :goto_14

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
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
