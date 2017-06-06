.class public Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
.super Landroid/os/Handler;
.source "UsimDataDownloadHandler.java"


# static fields
.field private static final BER_SMS_PP_DOWNLOAD_TAG:I = 0xd1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_UICC:I = 0x81

.field private static final EVENT_SEND_ENVELOPE_RESPONSE:I = 0x2

.field private static final EVENT_START_DATA_DOWNLOAD:I = 0x1

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UsimDataDownloadHandler"


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "commandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method private acknowledgeSmsWithError(I)V
    .locals 3
    .param p1, "cause"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private static getEnvelopeBodyLength(II)I
    .locals 2
    .param p0, "scAddressLength"    # I
    .param p1, "tpduLength"    # I

    .prologue
    add-int/lit8 v0, p1, 0x5

    .local v0, "length":I
    const/16 v1, 0x7f

    if-le p1, v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    if-eqz p0, :cond_0

    add-int/lit8 v1, v0, 0x2

    add-int v0, v1, p0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V
    .locals 15
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    .prologue
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v1

    .local v1, "dcs":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v7

    .local v7, "pid":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v6

    .local v6, "pdu":[B
    const/4 v12, 0x0

    aget-byte v12, v6, v12

    and-int/lit16 v8, v12, 0xff

    .local v8, "scAddressLength":I
    add-int/lit8 v10, v8, 0x1

    .local v10, "tpduIndex":I
    array-length v12, v6

    sub-int v11, v12, v10

    .local v11, "tpduLength":I
    invoke-static {v8, v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getEnvelopeBodyLength(II)I

    move-result v0

    .local v0, "bodyLength":I
    add-int/lit8 v13, v0, 0x1

    const/16 v12, 0x7f

    if-le v0, v12, :cond_1

    const/4 v12, 0x2

    :goto_0
    add-int v9, v13, v12

    .local v9, "totalLength":I
    new-array v3, v9, [B

    .local v3, "envelope":[B
    const/4 v12, 0x0

    const/4 v4, 0x1

    .local v4, "index":I
    const/16 v13, -0x2f

    aput-byte v13, v3, v12

    const/16 v12, 0x7f

    if-le v0, v12, :cond_0

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    const/16 v12, -0x7f

    aput-byte v12, v3, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    :cond_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    int-to-byte v12, v0

    aput-byte v12, v3, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v3, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/4 v12, 0x2

    aput-byte v12, v3, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/16 v12, -0x7d

    aput-byte v12, v3, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/16 v12, -0x7f

    aput-byte v12, v3, v4

    if-eqz v8, :cond_4

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v3, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    int-to-byte v12, v8

    aput-byte v12, v3, v4

    const/4 v12, 0x1

    invoke-static {v6, v12, v3, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int v4, v5, v8

    .end local v5    # "index":I
    .restart local v4    # "index":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v3, v4

    const/16 v12, 0x7f

    if-le v11, v12, :cond_3

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    const/16 v12, -0x7f

    aput-byte v12, v3, v5

    :goto_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    int-to-byte v12, v11

    aput-byte v12, v3, v4

    invoke-static {v6, v10, v3, v5, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int v4, v5, v11

    .end local v5    # "index":I
    .restart local v4    # "index":I
    array-length v12, v3

    if-eq v4, v12, :cond_2

    const-string v12, "UsimDataDownloadHandler"

    const-string v13, "startDataDownload() calculated incorrect envelope length, aborting."

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0xff

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    return-void

    .end local v3    # "envelope":[B
    .end local v4    # "index":I
    .end local v9    # "totalLength":I
    :cond_1
    const/4 v12, 0x1

    goto/16 :goto_0

    .restart local v3    # "envelope":[B
    .restart local v4    # "index":I
    .restart local v9    # "totalLength":I
    :cond_2
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .local v2, "encodedEnvelope":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v1, v13, v14

    const/4 v14, 0x1

    aput v7, v13, v14

    const/4 v14, 0x2

    invoke-virtual {p0, v14, v13}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v12, v2, v13}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .end local v2    # "encodedEnvelope":Ljava/lang/String;
    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_3
    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    .end local v4    # "index":I
    .restart local v5    # "index":I
    :cond_4
    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_1
.end method

.method private static is7bitDcs(I)Z
    .locals 4
    .param p0, "dcs"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0x8c

    if-eqz v2, :cond_0

    and-int/lit16 v2, p0, 0xf4

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V
    .locals 12
    .param p1, "response"    # Lcom/android/internal/telephony/uicc/IccIoResult;
    .param p2, "dcs"    # I
    .param p3, "pid"    # I

    .prologue
    iget v6, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .local v6, "sw1":I
    iget v7, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .local v7, "sw2":I
    const/16 v8, 0x90

    if-ne v6, v8, :cond_2

    if-nez v7, :cond_2

    :cond_0
    const-string v8, "UsimDataDownloadHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USIM data download succeeded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .local v5, "success":Z
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .local v2, "responseBytes":[B
    if-eqz v2, :cond_1

    array-length v8, v2

    if-nez v8, :cond_7

    :cond_1
    if-eqz v5, :cond_6

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    :goto_1
    return-void

    .end local v2    # "responseBytes":[B
    .end local v5    # "success":Z
    :cond_2
    const/16 v8, 0x91

    if-eq v6, v8, :cond_0

    const/16 v8, 0x93

    if-ne v6, v8, :cond_3

    if-nez v7, :cond_3

    const-string v8, "UsimDataDownloadHandler"

    const-string v9, "USIM data download failed: Toolkit busy"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0xd4

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    return-void

    :cond_3
    const/16 v8, 0x62

    if-eq v6, v8, :cond_4

    const/16 v8, 0x63

    if-ne v6, v8, :cond_5

    :cond_4
    const-string v8, "UsimDataDownloadHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USIM data download failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .restart local v5    # "success":Z
    goto :goto_0

    .end local v5    # "success":Z
    :cond_5
    const-string v8, "UsimDataDownloadHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected SW1/SW2 response from UICC: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .restart local v5    # "success":Z
    goto :goto_0

    .restart local v2    # "responseBytes":[B
    :cond_6
    const/16 v8, 0xd5

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    array-length v8, v2

    add-int/lit8 v8, v8, 0x5

    new-array v4, v8, [B

    .local v4, "smsAckPdu":[B
    const/4 v8, 0x0

    const/4 v0, 0x1

    .local v0, "index":I
    const/4 v9, 0x0

    aput-byte v9, v4, v8

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    const/4 v8, 0x7

    aput-byte v8, v4, v0

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v8, p3

    aput-byte v8, v4, v0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    int-to-byte v8, p2

    aput-byte v8, v4, v1

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->is7bitDcs(I)Z

    move-result v8

    if-eqz v8, :cond_9

    array-length v8, v2

    mul-int/lit8 v8, v8, 0x8

    div-int/lit8 v3, v8, 0x7

    .local v3, "septetCount":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v8, v3

    aput-byte v8, v4, v0

    move v0, v1

    .end local v1    # "index":I
    .end local v3    # "septetCount":I
    .restart local v0    # "index":I
    :goto_3
    array-length v8, v2

    const/4 v9, 0x0

    invoke-static {v2, v9, v4, v0, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v5, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V

    return-void

    .end local v0    # "index":I
    .end local v4    # "smsAckPdu":[B
    :cond_8
    array-length v8, v2

    add-int/lit8 v8, v8, 0x6

    new-array v4, v8, [B

    .restart local v4    # "smsAckPdu":[B
    const/4 v8, 0x0

    const/4 v0, 0x1

    .restart local v0    # "index":I
    const/4 v9, 0x0

    aput-byte v9, v4, v8

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    const/16 v8, -0x2b

    aput-byte v8, v4, v0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/4 v8, 0x7

    aput-byte v8, v4, v1

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    array-length v8, v2

    int-to-byte v8, v8

    aput-byte v8, v4, v0

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "UsimDataDownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unexpected message, what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    const-string v2, "UsimDataDownloadHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UICC Send Envelope failure, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd5

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    return-void

    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, [I

    .local v1, "dcsPid":[I
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    aget v3, v1, v6

    aget v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "dcsPid":[I
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    const-string v2, "UsimDataDownloadHandler"

    const-string v3, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v4, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    :cond_1
    const-string v2, "UsimDataDownloadHandler"

    const-string v3, "Failed to write SMS-PP message to UICC"

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xff

    invoke-interface {v2, v6, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 5
    .param p1, "ust"    # Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .param p2, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    .prologue
    const/4 v4, 0x3

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UsimDataDownloadHandler"

    const-string v2, "Received SMS-PP data download, sending to UICC."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v1

    return v1

    :cond_0
    const-string v1, "UsimDataDownloadHandler"

    const-string v2, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .local v0, "smsc":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 v1, -0x1

    return v1
.end method

.method public startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 2
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-string v0, "UsimDataDownloadHandler"

    const-string v1, "startDataDownload failed to send message to start data download."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0
.end method
