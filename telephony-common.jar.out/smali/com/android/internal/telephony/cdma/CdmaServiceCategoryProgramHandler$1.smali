.class Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceCategoryProgramHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendScpResults()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultCode()I

    move-result v8

    .local v8, "resultCode":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    const/4 v11, 0x1

    if-eq v8, v11, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SCP results error: result code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v6

    .local v6, "extras":Landroid/os/Bundle;
    if-nez v6, :cond_1

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v12, "SCP results error: missing extras"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v11, "sender"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "sender":Ljava/lang/String;
    if-nez v10, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v12, "SCP results error: missing sender extra."

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v11, "results"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    if-nez v9, :cond_3

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v12, "SCP results error: missing results extra."

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .local v0, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v11, 0x2

    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v11

    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .local v5, "encodedBearerData":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x64

    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v3, "dos":Ljava/io/DataOutputStream;
    const/16 v11, 0x1006

    :try_start_0
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v12, v12

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v13, v12}, Ljava/io/DataOutputStream;->write([BII)V

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    array-length v11, v5

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    array-length v11, v5

    const/4 v12, 0x0

    invoke-virtual {v3, v5, v12, v11}, Ljava/io/DataOutputStream;->write([BII)V

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_0
    return-void

    .restart local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_0
    move-exception v7

    .local v7, "ignored":Ljava/io/IOException;
    goto :goto_0

    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v7    # "ignored":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v12, "exception creating SCP results PDU"

    invoke-static {v11, v12, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap2(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v7

    .restart local v7    # "ignored":Ljava/io/IOException;
    goto :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v11

    :catch_3
    move-exception v7

    .restart local v7    # "ignored":Ljava/io/IOException;
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->sendScpResults()V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const-string v1, "mScpResultsReceiver finished"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap0(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->sendMessage(I)V

    return-void
.end method
