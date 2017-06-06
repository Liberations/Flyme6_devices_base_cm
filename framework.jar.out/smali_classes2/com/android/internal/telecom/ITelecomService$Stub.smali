.class public abstract Lcom/android/internal/telecom/ITelecomService$Stub;
.super Landroid/os/Binder;
.source "ITelecomService.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomService"

.field static final TRANSACTION_acceptRingingCall:I = 0x1c

.field static final TRANSACTION_addNewIncomingCall:I = 0x23

.field static final TRANSACTION_addNewUnknownCall:I = 0x24

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x1d

.field static final TRANSACTION_clearAccounts:I = 0x10

.field static final TRANSACTION_enablePhoneAccount:I = 0x26

.field static final TRANSACTION_endCall:I = 0x1b

.field static final TRANSACTION_getActiveSubscription:I = 0x28

.field static final TRANSACTION_getAdnUriForPhoneAccount:I = 0x20

.field static final TRANSACTION_getAllPhoneAccountHandles:I = 0xb

.field static final TRANSACTION_getAllPhoneAccounts:I = 0xa

.field static final TRANSACTION_getAllPhoneAccountsCount:I = 0x9

.field static final TRANSACTION_getCallCapablePhoneAccounts:I = 0x5

.field static final TRANSACTION_getCallState:I = 0x1a

.field static final TRANSACTION_getCurrentTtyMode:I = 0x22

.field static final TRANSACTION_getDefaultDialerPackage:I = 0x15

.field static final TRANSACTION_getDefaultOutgoingPhoneAccount:I = 0x2

.field static final TRANSACTION_getDefaultPhoneApp:I = 0x14

.field static final TRANSACTION_getLine1Number:I = 0x13

.field static final TRANSACTION_getPhoneAccount:I = 0x8

.field static final TRANSACTION_getPhoneAccountsForPackage:I = 0x7

.field static final TRANSACTION_getPhoneAccountsSupportingScheme:I = 0x6

.field static final TRANSACTION_getSimCallManager:I = 0xc

.field static final TRANSACTION_getSimCallManagerForUser:I = 0xd

.field static final TRANSACTION_getSystemDialerPackage:I = 0x16

.field static final TRANSACTION_getUserSelectedOutgoingPhoneAccount:I = 0x3

.field static final TRANSACTION_getVoiceMailNumber:I = 0x12

.field static final TRANSACTION_handlePinMmi:I = 0x1e

.field static final TRANSACTION_handlePinMmiForPhoneAccount:I = 0x1f

.field static final TRANSACTION_isInCall:I = 0x18

.field static final TRANSACTION_isRinging:I = 0x19

.field static final TRANSACTION_isTtySupported:I = 0x21

.field static final TRANSACTION_isVoiceMailNumber:I = 0x11

.field static final TRANSACTION_placeCall:I = 0x25

.field static final TRANSACTION_registerPhoneAccount:I = 0xe

.field static final TRANSACTION_setDefaultDialer:I = 0x27

.field static final TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final TRANSACTION_showInCallScreen:I = 0x1

.field static final TRANSACTION_silenceRinger:I = 0x17

.field static final TRANSACTION_switchToOtherActiveSub:I = 0x29

.field static final TRANSACTION_unregisterPhoneAccount:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telecom.ITelecomService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telecom/ITelecomService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
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

    move-result v22

    return v22

    :sswitch_0
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_1
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_0

    const/4 v8, 0x1

    .local v8, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->showInCallScreen(ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v8    # "_arg0":Z
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_0

    .end local v8    # "_arg0":Z
    :sswitch_2
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v17

    .local v17, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_1

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v22, 0x1

    return v22

    :cond_1
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_3
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v17

    .restart local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_2

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/16 v22, 0x1

    return v22

    :cond_2
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_4
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_3

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telecom/ITelecomService$Stub;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_3

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_5
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_4

    const/4 v8, 0x1

    .restart local v8    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallCapablePhoneAccounts(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v20

    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v22, 0x1

    return v22

    .end local v8    # "_arg0":Z
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_4

    .end local v8    # "_arg0":Z
    :sswitch_6
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v22, 0x1

    return v22

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_7
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v22, 0x1

    return v22

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_8
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_5

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v16

    .local v16, "_result":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_6

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/16 v22, 0x1

    return v22

    .end local v16    # "_result":Landroid/telecom/PhoneAccount;
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_5

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v16    # "_result":Landroid/telecom/PhoneAccount;
    :cond_6
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v16    # "_result":Landroid/telecom/PhoneAccount;
    :sswitch_9
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountsCount()I

    move-result v13

    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v13    # "_result":I
    :sswitch_a
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccounts()Ljava/util/List;

    move-result-object v19

    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v22, 0x1

    return v22

    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    :sswitch_b
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v20

    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v22, 0x1

    return v22

    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_c
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v17

    .restart local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_7

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/16 v22, 0x1

    return v22

    :cond_7
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_d
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v17

    .restart local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_8

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/16 v22, 0x1

    return v22

    :cond_8
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .end local v3    # "_arg0":I
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_e
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_9

    sget-object v22, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccount;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_9
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_9

    .end local v5    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_f
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_a

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telecom/ITelecomService$Stub;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_a

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_10
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->clearAccounts(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_b

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_c

    const/16 v22, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_b

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v21    # "_result":Z
    :cond_c
    const/16 v22, 0x0

    goto :goto_c

    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_12
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_d

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_d

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_13
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_e

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":Ljava/lang/String;
    :cond_e
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_e

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_14
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v14

    .local v14, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_f

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f
    const/16 v22, 0x1

    return v22

    :cond_f
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .end local v14    # "_result":Landroid/content/ComponentName;
    :sswitch_15
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall(Ljava/lang/String;)Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_10

    const/16 v22, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_10
    const/16 v22, 0x0

    goto :goto_10

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_19
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_11

    const/16 v22, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_11
    const/16 v22, 0x0

    goto :goto_11

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_1a
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v13    # "_result":I
    :sswitch_1b
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall()Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_12

    const/16 v22, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_12
    const/16 v22, 0x0

    goto :goto_12

    .end local v21    # "_result":Z
    :sswitch_1c
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_1d
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_13

    const/16 v22, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_13
    const/16 v22, 0x0

    goto :goto_13

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_1f
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_14

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_15

    const/16 v22, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :cond_14
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_14

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v21    # "_result":Z
    :cond_15
    const/16 v22, 0x0

    goto :goto_15

    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_20
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_16

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .local v15, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_17

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    const/16 v22, 0x1

    return v22

    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Landroid/net/Uri;
    :cond_16
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_16

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v15    # "_result":Landroid/net/Uri;
    :cond_17
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Landroid/net/Uri;
    :sswitch_21
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported(Ljava/lang/String;)Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_18

    const/16 v22, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_18
    const/16 v22, 0x0

    goto :goto_18

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_22
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode(Ljava/lang/String;)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_23
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_19

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1a

    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_19
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_19

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1a
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/os/Bundle;
    goto :goto_1a

    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_24
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1b

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1c

    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_1b
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1b

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1c
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1c

    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_25
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1d

    sget-object v22, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1e

    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v12    # "_arg2":Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/net/Uri;
    goto :goto_1d

    .end local v4    # "_arg0":Landroid/net/Uri;
    :cond_1e
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1e

    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_26
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1f

    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_20

    const/4 v11, 0x1

    .local v11, "_arg1":Z
    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/android/internal/telecom/ITelecomService$Stub;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_21

    const/16 v22, 0x1

    :goto_21
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v11    # "_arg1":Z
    .end local v21    # "_result":Z
    :cond_1f
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1f

    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_20
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Z
    goto :goto_20

    .restart local v21    # "_result":Z
    :cond_21
    const/16 v22, 0x0

    goto :goto_21

    .end local v11    # "_arg1":Z
    .end local v21    # "_result":Z
    :sswitch_27
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->setDefaultDialer(Ljava/lang/String;)Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_22

    const/16 v22, 0x1

    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_22
    const/16 v22, 0x0

    goto :goto_22

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_28
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getActiveSubscription()I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v13    # "_result":I
    :sswitch_29
    const-string v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->switchToOtherActiveSub(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

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
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
