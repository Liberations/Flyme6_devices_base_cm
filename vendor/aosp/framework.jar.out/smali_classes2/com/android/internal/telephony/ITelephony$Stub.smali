.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_addProtectedSmsAddress:I = 0x48

.field static final TRANSACTION_answerRingingCallForSubscriber_5:I = 0x6

.field static final TRANSACTION_answerRingingCall_4:I = 0x5

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x7a

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x6a

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x6b

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x27

.field static final TRANSACTION_disableLocationUpdates:I = 0x24

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x25

.field static final TRANSACTION_enableDataConnectivity:I = 0x26

.field static final TRANSACTION_enableLocationUpdates:I = 0x22

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x23

.field static final TRANSACTION_enableVideoCalling:I = 0x78

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x84

.field static final TRANSACTION_getActivePhoneType:I = 0x2f

.field static final TRANSACTION_getActivePhoneTypeForSubscriber:I = 0x30

.field static final TRANSACTION_getAllCellInfo:I = 0x45

.field static final TRANSACTION_getAtr:I = 0x87

.field static final TRANSACTION_getAtrUsingSubId:I = 0x88

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x5c

.field static final TRANSACTION_getCallState:I = 0x2b

.field static final TRANSACTION_getCallStateForSubscriber:I = 0x2c

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone_107:I = 0x6c

.field static final TRANSACTION_getCarrierPrivilegeStatus_104:I = 0x69

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x31

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x32

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x33

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x34

.field static final TRANSACTION_getCdmaEriText:I = 0x35

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x36

.field static final TRANSACTION_getCdmaMdn:I = 0x67

.field static final TRANSACTION_getCdmaMin:I = 0x68

.field static final TRANSACTION_getCellLocation:I = 0x29

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x60

.field static final TRANSACTION_getDataActivity:I = 0x2d

.field static final TRANSACTION_getDataEnabled:I = 0x64

.field static final TRANSACTION_getDataNetworkType:I = 0x3d

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x3e

.field static final TRANSACTION_getDataState:I = 0x2e

.field static final TRANSACTION_getDefaultSim:I = 0x4a

.field static final TRANSACTION_getDeviceId_129:I = 0x82

.field static final TRANSACTION_getIccOperatorNumericForData:I = 0x40

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x6f

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x6e

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x85

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x44

.field static final TRANSACTION_getLteOnCdmaMode_66:I = 0x43

.field static final TRANSACTION_getLteOnGsmMode:I = 0x47

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x70

.field static final TRANSACTION_getModemActivityInfo:I = 0x86

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2a

.field static final TRANSACTION_getNetworkType:I = 0x3b

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x3c

.field static final TRANSACTION_getPcscfAddress:I = 0x65

.field static final TRANSACTION_getPreferredNetworkType:I = 0x5d

.field static final TRANSACTION_getRadioAccessFamily:I = 0x77

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x83

.field static final TRANSACTION_getTetherApnRequired_93:I = 0x5e

.field static final TRANSACTION_getVoiceMessageCount:I = 0x39

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x3a

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x3f

.field static final TRANSACTION_handlePinMmi:I = 0x19

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1a

.field static final TRANSACTION_hasIccCard:I = 0x41

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x42

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4f

.field static final TRANSACTION_iccCloseLogicalChannelUsingSubId:I = 0x50

.field static final TRANSACTION_iccExchangeSimIO:I = 0x55

.field static final TRANSACTION_iccExchangeSimIOUsingSubId:I = 0x56

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x4b

.field static final TRANSACTION_iccOpenLogicalChannelUsingSubId:I = 0x4d

.field static final TRANSACTION_iccOpenLogicalChannelUsingSubIdWithP2:I = 0x4e

.field static final TRANSACTION_iccOpenLogicalChannelWithP2:I = 0x4c

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x53

.field static final TRANSACTION_iccTransmitApduBasicChannelUsingSubId:I = 0x54

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x51

.field static final TRANSACTION_iccTransmitApduLogicalChannelUsingSubId:I = 0x52

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x73

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x28

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x7d

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isIdleForSubscriber:I = 0xd

.field static final TRANSACTION_isImsRegistered:I = 0x7e

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x9

.field static final TRANSACTION_isRadioOn:I = 0xe

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isRingingForSubscriber_9:I = 0xa

.field static final TRANSACTION_isSimPinEnabled:I = 0x10

.field static final TRANSACTION_isTtyModeSupported:I = 0x7c

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x79

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x81

.field static final TRANSACTION_isVolteAvailable:I = 0x80

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x7f

.field static final TRANSACTION_isWorldPhone:I = 0x7b

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x74

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x37

.field static final TRANSACTION_nvReadItem:I = 0x58

.field static final TRANSACTION_nvResetConfig:I = 0x5b

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x5a

.field static final TRANSACTION_nvWriteItem_88:I = 0x59

.field static final TRANSACTION_revokeProtectedSmsAddress:I = 0x49

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x57

.field static final TRANSACTION_setCellInfoListRate:I = 0x46

.field static final TRANSACTION_setDataEnabled:I = 0x63

.field static final TRANSACTION_setImsRegistrationState:I = 0x66

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x6d

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x5f

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x61

.field static final TRANSACTION_setOperatorBrandOverride_112:I = 0x71

.field static final TRANSACTION_setPreferredNetworkType:I = 0x62

.field static final TRANSACTION_setRadio:I = 0x1d

.field static final TRANSACTION_setRadioCapability:I = 0x76

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1e

.field static final TRANSACTION_setRadioPower:I = 0x1f

.field static final TRANSACTION_setRoamingOverride_113:I = 0x72

.field static final TRANSACTION_setVoiceMailNumber:I = 0x38

.field static final TRANSACTION_shutdownMobileRadios:I = 0x75

.field static final TRANSACTION_silenceRinger_6:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0x11

.field static final TRANSACTION_supplyPinForSubscriber_17:I = 0x12

.field static final TRANSACTION_supplyPinReportResult:I = 0x15

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x16

.field static final TRANSACTION_supplyPuk:I = 0x13

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x14

.field static final TRANSACTION_supplyPukReportResult:I = 0x17

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x18

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1b

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1c

.field static final TRANSACTION_updateServiceLocation:I = 0x20

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 54
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
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :sswitch_1
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .local v31, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v50

    .local v50, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .end local v50    # "_result":Z
    :sswitch_4
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .end local v6    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_5
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_6
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_7
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_8
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_9
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(ILjava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_3

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_a
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(ILjava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_4

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_b
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_5

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_c
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_6

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_d
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_7

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_e
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_8

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_f
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_9

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_9
    const/4 v5, 0x0

    goto :goto_9

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_10
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_11
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_12
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_c

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_c
    const/4 v5, 0x0

    goto :goto_c

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_d

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_d
    const/4 v5, 0x0

    goto :goto_d

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_14
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .local v37, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_e

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_15
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v52

    .local v52, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v52    # "_result":[I
    :sswitch_16
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v52

    .restart local v52    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v52    # "_result":[I
    :sswitch_17
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v52

    .restart local v52    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v52    # "_result":[I
    :sswitch_18
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .restart local v37    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v52

    .restart local v52    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v52    # "_result":[I
    :sswitch_19
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_f

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_f
    const/4 v5, 0x0

    goto :goto_f

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_1a
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_10

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_10
    const/4 v5, 0x0

    goto :goto_10

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_1b
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_1c
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_1d
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v26, 0x1

    .local v26, "_arg0":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_12

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v26    # "_arg0":Z
    .end local v50    # "_result":Z
    :cond_11
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_11

    .restart local v50    # "_result":Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_12

    .end local v26    # "_arg0":Z
    .end local v50    # "_result":Z
    :sswitch_1e
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v33, 0x1

    .local v33, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_14

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v33    # "_arg1":Z
    .end local v50    # "_result":Z
    :cond_13
    const/16 v33, 0x0

    .restart local v33    # "_arg1":Z
    goto :goto_13

    .restart local v50    # "_result":Z
    :cond_14
    const/4 v5, 0x0

    goto :goto_14

    .end local v6    # "_arg0":I
    .end local v33    # "_arg1":Z
    .end local v50    # "_result":Z
    :sswitch_1f
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v26, 0x1

    .restart local v26    # "_arg0":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_16

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v26    # "_arg0":Z
    .end local v50    # "_result":Z
    :cond_15
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_15

    .restart local v50    # "_result":Z
    :cond_16
    const/4 v5, 0x0

    goto :goto_16

    .end local v26    # "_arg0":Z
    .end local v50    # "_result":Z
    :sswitch_20
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_21
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_22
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_23
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_24
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_25
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_26
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_17

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_17
    const/4 v5, 0x0

    goto :goto_17

    .end local v50    # "_result":Z
    :sswitch_27
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_18

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_18
    const/4 v5, 0x0

    goto :goto_18

    .end local v50    # "_result":Z
    :sswitch_28
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_19

    const/4 v5, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_19
    const/4 v5, 0x0

    goto :goto_19

    .end local v50    # "_result":Z
    :sswitch_29
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v42

    .local v42, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_1a

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    const/4 v5, 0x1

    return v5

    :cond_1a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Landroid/os/Bundle;
    :sswitch_2a
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v48

    .local v48, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2b
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v41

    .local v41, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_2c
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscriber(I)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v41    # "_result":I
    :sswitch_2d
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_2e
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_2f
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_30
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSubscriber(I)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v41    # "_result":I
    :sswitch_31
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_32
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_33
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_34
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_35
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .local v46, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_1b

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_1b
    const/4 v5, 0x0

    goto :goto_1b

    .end local v50    # "_result":Z
    :sswitch_38
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .restart local v37    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_1c

    const/4 v5, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_1c
    const/4 v5, 0x0

    goto :goto_1c

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_39
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_3a
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v41    # "_result":I
    :sswitch_3b
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_3c
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_3d
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_3e
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_3f
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_40
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_1d

    const/4 v5, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_1d
    const/4 v5, 0x0

    goto :goto_1d

    .end local v50    # "_result":Z
    :sswitch_42
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_1e

    const/4 v5, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_1e
    const/4 v5, 0x0

    goto :goto_1e

    .end local v6    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_43
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_44
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_45
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v47

    .local v47, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v47    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_46
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_47
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnGsmMode()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_48
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->addProtectedSmsAddress(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    :sswitch_49
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->revokeProtectedSmsAddress(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_1f

    const/4 v5, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_1f
    const/4 v5, 0x0

    goto :goto_1f

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_4a
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_4b
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v43

    .local v43, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_20

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_20
    const/4 v5, 0x1

    return v5

    :cond_20
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4c
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v29

    .local v29, "_arg1":B
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelWithP2(Ljava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v43

    .restart local v43    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_21

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_21
    const/4 v5, 0x1

    return v5

    :cond_21
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":B
    .end local v43    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4d
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelUsingSubId(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v43

    .restart local v43    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_22

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_22
    const/4 v5, 0x1

    return v5

    :cond_22
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4e
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v36

    .local v36, "_arg2":B
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v36

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelUsingSubIdWithP2(ILjava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v43

    .restart local v43    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_23

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_23
    const/4 v5, 0x1

    return v5

    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg2":B
    .end local v43    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4f
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(I)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_24

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_24
    const/4 v5, 0x0

    goto :goto_24

    .end local v6    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_50
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannelUsingSubId(II)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_25

    const/4 v5, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_25
    const/4 v5, 0x0

    goto :goto_25

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v50    # "_result":Z
    :sswitch_51
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, "_arg7":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v13 .. v21}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelUsingSubId(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg5":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_54
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelUsingSubId(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_55
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg5":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v51

    .local v51, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v51    # "_result":[B
    :sswitch_56
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIOUsingSubId(IIIIIILjava/lang/String;)[B

    move-result-object v51

    .restart local v51    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v51    # "_result":[B
    :sswitch_57
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_58
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_26

    const/4 v5, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_26
    const/4 v5, 0x0

    goto :goto_26

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_5a
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v27

    .local v27, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_27

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_27
    const/4 v5, 0x0

    goto :goto_27

    .end local v27    # "_arg0":[B
    .end local v50    # "_result":Z
    :sswitch_5b
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_28

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_28
    const/4 v5, 0x0

    goto :goto_28

    .end local v6    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_5c
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_5d
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType(I)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v41    # "_result":I
    :sswitch_5e
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_5f
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_60
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v45

    .local v45, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v45, :cond_29

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    const/4 v5, 0x1

    return v5

    :cond_29
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .end local v6    # "_arg0":I
    .end local v45    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_61
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/OperatorInfo;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v39, 0x1

    .local v39, "_arg2":Z
    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v39

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_2c

    const/4 v5, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v39    # "_arg2":Z
    .end local v50    # "_result":Z
    :cond_2a
    const/16 v30, 0x0

    .local v30, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_2a

    .end local v30    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    :cond_2b
    const/16 v39, 0x0

    .restart local v39    # "_arg2":Z
    goto :goto_2b

    .restart local v50    # "_result":Z
    :cond_2c
    const/4 v5, 0x0

    goto :goto_2c

    .end local v6    # "_arg0":I
    .end local v39    # "_arg2":Z
    .end local v50    # "_result":Z
    :sswitch_62
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(II)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_2d

    const/4 v5, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_2d
    const/4 v5, 0x0

    goto :goto_2d

    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v50    # "_result":Z
    :sswitch_63
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v33, 0x1

    .restart local v33    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v33    # "_arg1":Z
    :cond_2e
    const/16 v33, 0x0

    .restart local v33    # "_arg1":Z
    goto :goto_2e

    .end local v6    # "_arg0":I
    .end local v33    # "_arg1":Z
    :sswitch_64
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_2f

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_2f
    const/4 v5, 0x0

    goto :goto_2f

    .end local v6    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_65
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v53

    .local v53, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v53    # "_result":[Ljava/lang/String;
    :sswitch_66
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    const/16 v26, 0x1

    .restart local v26    # "_arg0":Z
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v26    # "_arg0":Z
    :cond_30
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_30

    .end local v26    # "_arg0":Z
    :sswitch_67
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_68
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :sswitch_6a
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_6b
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_6c
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Intent;

    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v49

    .local v49, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v5, 0x1

    return v5

    .end local v7    # "_arg1":I
    .end local v49    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_31
    const/16 v22, 0x0

    .local v22, "_arg0":Landroid/content/Intent;
    goto :goto_31

    .end local v22    # "_arg0":Landroid/content/Intent;
    :sswitch_6d
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .restart local v37    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v37

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_32

    const/4 v5, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_32
    const/4 v5, 0x0

    goto :goto_32

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v37    # "_arg2":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_6e
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_6f
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_70
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v53

    .restart local v53    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":[Ljava/lang/String;
    :sswitch_71
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_33

    const/4 v5, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_33
    const/4 v5, 0x0

    goto :goto_33

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_72
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v25

    .local v25, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v32

    .local v32, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v38

    .local v38, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v40

    .local v40, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v32

    move-object/from16 v3, v38

    move-object/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_34

    const/4 v5, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_34
    const/4 v5, 0x0

    goto :goto_34

    .end local v25    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v50    # "_result":Z
    :sswitch_73
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v27

    .restart local v27    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .local v35, "_arg1_length":I
    if-gez v35, :cond_35

    const/16 v34, 0x0

    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :cond_35
    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v34, v0

    .local v34, "_arg1":[B
    goto :goto_35

    .end local v27    # "_arg0":[B
    .end local v34    # "_arg1":[B
    .end local v35    # "_arg1_length":I
    :sswitch_74
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_36

    const/4 v5, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_36
    const/4 v5, 0x0

    goto :goto_36

    .end local v50    # "_result":Z
    :sswitch_75
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_76
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Landroid/telephony/RadioAccessFamily;

    .local v28, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v28    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_77
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    .end local v31    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_78
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37

    const/16 v26, 0x1

    .restart local v26    # "_arg0":Z
    :goto_37
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v26    # "_arg0":Z
    :cond_37
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_37

    .end local v26    # "_arg0":Z
    :sswitch_79
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;)Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_38

    const/4 v5, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_38
    const/4 v5, 0x0

    goto :goto_38

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_7a
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_39

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_39
    const/4 v5, 0x0

    goto :goto_39

    .end local v50    # "_result":Z
    :sswitch_7b
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_3a

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_3a
    const/4 v5, 0x0

    goto :goto_3a

    .end local v50    # "_result":Z
    :sswitch_7c
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_3b

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_3b
    const/4 v5, 0x0

    goto :goto_3b

    .end local v50    # "_result":Z
    :sswitch_7d
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_3c

    const/4 v5, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_3c
    const/4 v5, 0x0

    goto :goto_3c

    .end local v50    # "_result":Z
    :sswitch_7e
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_3d

    const/4 v5, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_3d
    const/4 v5, 0x0

    goto :goto_3d

    .end local v50    # "_result":Z
    :sswitch_7f
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_3e

    const/4 v5, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_3e
    const/4 v5, 0x0

    goto :goto_3e

    .end local v50    # "_result":Z
    :sswitch_80
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVolteAvailable()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_3f

    const/4 v5, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_3f
    const/4 v5, 0x0

    goto :goto_3f

    .end local v50    # "_result":Z
    :sswitch_81
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable()Z

    move-result v50

    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_40

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :cond_40
    const/4 v5, 0x0

    goto :goto_40

    .end local v50    # "_result":Z
    :sswitch_82
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_83
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    sget-object v5, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telecom/PhoneAccount;

    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    .end local v41    # "_result":I
    :cond_41
    const/16 v23, 0x0

    .local v23, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_41

    .end local v23    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_84
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    .end local v6    # "_arg0":I
    :sswitch_85
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocaleFromDefaultSim()Ljava/lang/String;

    move-result-object v46

    .restart local v46    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    .end local v46    # "_result":Ljava/lang/String;
    :sswitch_86
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemActivityInfo()Landroid/telephony/ModemActivityInfo;

    move-result-object v44

    .local v44, "_result":Landroid/telephony/ModemActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v44, :cond_42

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/ModemActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_42
    const/4 v5, 0x1

    return v5

    :cond_42
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .end local v44    # "_result":Landroid/telephony/ModemActivityInfo;
    :sswitch_87
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()[B

    move-result-object v51

    .restart local v51    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v5, 0x1

    return v5

    .end local v51    # "_result":[B
    :sswitch_88
    const-string v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtrUsingSubId(I)[B

    move-result-object v51

    .restart local v51    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v5, 0x1

    return v5

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
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
