.class public Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    const/4 v13, 0x0

    .local v13, "retryCount":I
    const-string v14, "rild"

    .local v14, "rilSocket":Ljava/lang/String;
    :goto_0
    const/4 v15, 0x0

    .local v15, "s":Landroid/net/LocalSocket;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_2

    :cond_0
    sget-object v19, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v14, v19, v20
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    new-instance v16, Landroid/net/LocalSocket;

    invoke-direct/range {v16 .. v16}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .end local v15    # "s":Landroid/net/LocalSocket;
    .local v16, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v10, Landroid/net/LocalSocketAddress;

    sget-object v19, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v19

    invoke-direct {v10, v14, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v10, "l":Landroid/net/LocalSocketAddress;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    const/4 v13, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") Connected to \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' socket"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const-string v20, "qcomdsds"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/RIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v17, "SUB1"

    .local v17, "str":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v4

    .local v4, "data":[B
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    const-string v19, "RILJ"

    const-string v20, "Data sent!!"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .end local v4    # "data":[B
    .end local v17    # "str":Ljava/lang/String;
    :cond_1
    :goto_2
    const/4 v11, 0x0

    .local v11, "length":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .local v9, "is":Ljava/io/InputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/android/internal/telephony/RIL;->-wrap1(Ljava/io/InputStream;[B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    move-result v11

    if-gez v11, :cond_6

    .end local v9    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_6
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") Disconnected from \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' socket"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v15, v16

    .end local v16    # "s":Landroid/net/LocalSocket;
    .local v15, "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .end local v10    # "l":Landroid/net/LocalSocketAddress;
    .end local v11    # "length":I
    .local v15, "s":Landroid/net/LocalSocket;
    :cond_2
    :try_start_9
    sget-object v19, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-object v14, v19, v20
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v6

    .end local v15    # "s":Landroid/net/LocalSocket;
    .local v6, "ex":Ljava/io/IOException;
    :goto_6
    if-eqz v15, :cond_3

    :try_start_a
    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    :cond_3
    :goto_7
    const/16 v19, 0x8

    move/from16 v0, v19

    if-ne v13, v0, :cond_5

    :try_start_b
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Couldn\'t find \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' socket after "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " times, continuing to retry silently"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    :cond_4
    :goto_8
    const-wide/16 v20, 0xfa0

    :try_start_c
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    .local v7, "ex2":Ljava/io/IOException;
    goto :goto_7

    .end local v7    # "ex2":Ljava/io/IOException;
    :cond_5
    if-ltz v13, :cond_4

    const/16 v19, 0x8

    move/from16 v0, v19

    if-ge v13, v0, :cond_4

    :try_start_d
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Couldn\'t find \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' socket; retrying after timeout"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_8

    .end local v6    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v18

    .local v18, "tr":Ljava/lang/Throwable;
    :goto_a
    const-string v19, "RILJ"

    const-string v20, "Uncaught exception"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V

    return-void

    .end local v18    # "tr":Ljava/lang/Throwable;
    .restart local v6    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .local v5, "er":Ljava/lang/InterruptedException;
    goto :goto_9

    .end local v5    # "er":Ljava/lang/InterruptedException;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v4    # "data":[B
    .restart local v10    # "l":Landroid/net/LocalSocketAddress;
    .restart local v16    # "s":Landroid/net/LocalSocket;
    .restart local v17    # "str":Ljava/lang/String;
    :catch_4
    move-exception v8

    .local v8, "exc":Ljava/lang/RuntimeException;
    :try_start_e
    const-string v19, "RILJ"

    const-string v20, "Uncaught exception "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v4    # "data":[B
    .end local v8    # "exc":Ljava/lang/RuntimeException;
    .end local v10    # "l":Landroid/net/LocalSocketAddress;
    .end local v17    # "str":Ljava/lang/String;
    :catch_5
    move-exception v18

    .restart local v18    # "tr":Ljava/lang/Throwable;
    move-object/from16 v15, v16

    .end local v16    # "s":Landroid/net/LocalSocket;
    .local v15, "s":Landroid/net/LocalSocket;
    goto :goto_a

    .end local v15    # "s":Landroid/net/LocalSocket;
    .end local v18    # "tr":Ljava/lang/Throwable;
    .restart local v4    # "data":[B
    .restart local v10    # "l":Landroid/net/LocalSocketAddress;
    .restart local v16    # "s":Landroid/net/LocalSocket;
    .restart local v17    # "str":Ljava/lang/String;
    :catch_6
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    const-string v19, "RILJ"

    const-string v20, "IOException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    .end local v4    # "data":[B
    .end local v6    # "ex":Ljava/io/IOException;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v11    # "length":I
    :cond_6
    :try_start_f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .local v12, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1, v11}, Landroid/os/Parcel;->unmarshall([BII)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_3

    .end local v9    # "is":Ljava/io/InputStream;
    .end local v12    # "p":Landroid/os/Parcel;
    :catch_7
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    :try_start_10
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' socket closed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .end local v6    # "ex":Ljava/io/IOException;
    :catch_8
    move-exception v18

    .restart local v18    # "tr":Ljava/lang/Throwable;
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Uncaught exception read length="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Exception:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_4

    .end local v18    # "tr":Ljava/lang/Throwable;
    :catch_9
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto/16 :goto_5

    .end local v6    # "ex":Ljava/io/IOException;
    .end local v10    # "l":Landroid/net/LocalSocketAddress;
    .end local v11    # "length":I
    :catch_a
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    move-object/from16 v15, v16

    .end local v16    # "s":Landroid/net/LocalSocket;
    .restart local v15    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_6
.end method
