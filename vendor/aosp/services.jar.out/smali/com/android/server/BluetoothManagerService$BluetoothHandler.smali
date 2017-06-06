.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0xc9

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .local v19, "saveMsg":Landroid/os/Message;
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v19    # "saveMsg":Landroid/os/Message;
    :cond_2
    :goto_1
    monitor-exit v25

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v24, "BluetoothManagerService"

    const-string v26, "Binding to service to get name and address"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .local v21, "timeoutMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v26, 0xbb8

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v11, Landroid/content/Intent;

    const-class v24, Landroid/bluetooth/IBluetooth;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v11, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v28, 0x41

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v28

    move-object/from16 v3, v27

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v24

    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .end local v11    # "i":Landroid/content/Intent;
    .end local v21    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v24

    monitor-exit v25

    throw v24

    .restart local v11    # "i":Landroid/content/Intent;
    .restart local v21    # "timeoutMsg":Landroid/os/Message;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    goto/16 :goto_1

    .end local v11    # "i":Landroid/content/Intent;
    .end local v21    # "timeoutMsg":Landroid/os/Message;
    .restart local v19    # "saveMsg":Landroid/os/Message;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v26, 0x1f4

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .end local v19    # "saveMsg":Landroid/os/Message;
    :sswitch_1
    const/16 v22, 0x0

    .local v22, "unbind":Z
    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_SAVE_NAME_AND_ADDRESS"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v24

    if-eqz v24, :cond_b

    :cond_6
    :goto_2
    monitor-exit v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v24

    if-eqz v24, :cond_c

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v24

    if-eqz v24, :cond_10

    const/4 v12, 0x0

    .local v12, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "address":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v12

    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v5

    .end local v5    # "address":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    :goto_4
    if-eqz v12, :cond_d

    if-eqz v5, :cond_d

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v12, v5}, Lcom/android/server/BluetoothManagerService;->-wrap16(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v24

    if-eqz v24, :cond_8

    const/16 v22, 0x1

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v24

    if-eqz v24, :cond_f

    :cond_9
    :goto_6
    monitor-exit v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v24

    if-eqz v24, :cond_11

    :cond_a
    :goto_7
    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    goto/16 :goto_0

    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to call enable()"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2

    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v24

    monitor-exit v25

    throw v24

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_3

    .restart local v5    # "address":Ljava/lang/String;
    :catch_1
    move-exception v15

    .local v15, "re":Landroid/os/RemoteException;
    :try_start_9
    const-string v24, "BluetoothManagerService"

    const-string v26, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_4

    .end local v5    # "address":Ljava/lang/String;
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_2
    move-exception v24

    monitor-exit v25

    throw v24

    :cond_d
    :try_start_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x3

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0xc9

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .local v18, "retryMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    const-string v24, "BluetoothManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Retrying name/address remote retrieval and save.....Retry count ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v26, 0x1f4

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .end local v18    # "retryMsg":Landroid/os/Message;
    :cond_e
    const-string v24, "BluetoothManagerService"

    const-string v26, "Maximum name/address remote retrieval retry exceeded"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v24

    if-eqz v24, :cond_8

    const/16 v22, 0x1

    goto/16 :goto_5

    :cond_f
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->disable()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_6

    :catch_2
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_c
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to call disable()"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0xc8

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .local v10, "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_6

    .end local v10    # "getMsg":Landroid/os/Message;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_7

    .end local v22    # "unbind":Z
    :sswitch_2
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_ENABLE: mBluetooth = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x2a

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    const/16 v24, 0x1

    :goto_8
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0x0

    goto :goto_8

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x2a

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    .local v6, "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4

    .local v4, "added":Z
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Added callback: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-nez v6, :cond_14

    const-string v6, "null"

    .end local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_14
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "added":Z
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    .restart local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v16

    .local v16, "removed":Z
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Removed callback: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-nez v6, :cond_15

    const-string v6, "null"

    .end local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_15
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v16    # "removed":Z
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .local v7, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .end local v7    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .restart local v7    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .end local v7    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_8
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/IBinder;

    .local v20, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    :try_start_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v20 .. v20}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap9(Lcom/android/server/BluetoothManagerService;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_1

    :catchall_3
    move-exception v24

    monitor-exit v25

    throw v24

    :cond_16
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v20 .. v20}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get6(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v24

    const-string v26, "bluetooth_hci_log"

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    const/4 v9, 0x1

    .local v9, "enableHciSnoopLog":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v24

    if-nez v24, :cond_17

    const-string v24, "BluetoothManagerService"

    const-string v26, "IBluetooth.configHciSnoopLog return false"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .end local v9    # "enableHciSnoopLog":Z
    :cond_17
    :goto_a
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v24

    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v26, 0xc8

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .restart local v10    # "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-result v24

    if-nez v24, :cond_19

    monitor-exit v25

    return-void

    .end local v10    # "getMsg":Landroid/os/Message;
    :cond_18
    const/4 v9, 0x0

    .restart local v9    # "enableHciSnoopLog":Z
    goto :goto_9

    .end local v9    # "enableHciSnoopLog":Z
    :catch_3
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to call configHciSnoopLog"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :goto_b
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v24

    if-nez v24, :cond_1a

    const-string v24, "BluetoothManagerService"

    const-string v26, "IBluetooth.enable() returned false"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :cond_1a
    :goto_c
    monitor-exit v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    :catch_4
    move-exception v15

    .restart local v15    # "re":Landroid/os/RemoteException;
    :try_start_15
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to register BluetoothCallback"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_b

    .end local v15    # "re":Landroid/os/RemoteException;
    :cond_1b
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v24

    if-nez v24, :cond_1a

    const-string v24, "BluetoothManagerService"

    const-string v26, "IBluetooth.enableNoAutoConnect() returned false"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_c

    :catch_5
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to call enable()"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_c

    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v20    # "service":Landroid/os/IBinder;
    :sswitch_9
    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_TIMEOUT_BIND"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    goto/16 :goto_1

    :catchall_4
    move-exception v24

    monitor-exit v25

    throw v24

    :sswitch_a
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .local v14, "prevState":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .local v13, "newState":I
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", newState="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v14, v13}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    const/16 v24, 0xe

    move/from16 v0, v24

    if-ne v14, v0, :cond_1c

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v13, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;)V

    :cond_1c
    const/16 v24, 0xb

    move/from16 v0, v24

    if-ne v14, v0, :cond_1d

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v13, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;I)V

    :cond_1d
    const/16 v24, 0xb

    move/from16 v0, v24

    if-ne v14, v0, :cond_1e

    const/16 v24, 0xf

    move/from16 v0, v24

    if-ne v13, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;)V

    :cond_1e
    const/16 v24, 0xc

    move/from16 v0, v24

    if-eq v13, v0, :cond_1f

    const/16 v24, 0xf

    move/from16 v0, v24

    if-ne v13, v0, :cond_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    if-eqz v24, :cond_0

    const-string v24, "BluetoothManagerService"

    const-string v25, "bluetooth is recovered from error"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set6(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .end local v13    # "newState":I
    .end local v14    # "prevState":I
    :sswitch_b
    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    :try_start_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    monitor-exit v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x2a

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .local v17, "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v26, 0xc8

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v17    # "restartMsg":Landroid/os/Message;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xc

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xc

    const/16 v26, 0xd

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xd

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xd

    const/16 v26, 0xa

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    :cond_24
    :try_start_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto/16 :goto_1

    :catchall_5
    move-exception v24

    monitor-exit v25

    throw v24

    :cond_25
    :try_start_1b
    const-string v24, "BluetoothManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Bad msg.arg1: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto/16 :goto_1

    :sswitch_c
    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_RESTART_BLUETOOTH_SERVICE: Restart IBluetooth service"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Z

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :sswitch_d
    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set8(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto/16 :goto_1

    :catchall_6
    move-exception v24

    monitor-exit v25

    throw v24

    :sswitch_e
    const-string v24, "BluetoothManagerService"

    const-string v25, "MESSAGE_USER_SWITCHED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x12c

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-eqz v24, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    move-result-object v24

    if-eqz v24, :cond_26

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :cond_26
    :goto_d
    monitor-exit v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v25

    const/16 v26, 0xa

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v25

    const/16 v26, 0xb

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xb

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v24

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v25

    const/16 v26, 0xc

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xc

    const/16 v26, 0xd

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xd

    const/16 v26, 0xa

    invoke-static/range {v24 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v25

    monitor-enter v25

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    monitor-exit v25

    const-wide/16 v24, 0x64

    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Z

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :catch_6
    move-exception v15

    .restart local v15    # "re":Landroid/os/RemoteException;
    :try_start_20
    const-string v24, "BluetoothManagerService"

    const-string v26, "Unable to unregister"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    goto/16 :goto_d

    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_7
    move-exception v24

    monitor-exit v25

    throw v24

    :catchall_8
    move-exception v24

    monitor-exit v25

    throw v24

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v24

    if-nez v24, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v24

    if-eqz v24, :cond_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const/16 v25, 0x12c

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .local v23, "userMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v24

    const-wide/16 v26, 0xc8

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v24, "BluetoothManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "delay MESSAGE_USER_SWITCHED "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_5
        0x1e -> :sswitch_6
        0x1f -> :sswitch_7
        0x28 -> :sswitch_8
        0x29 -> :sswitch_b
        0x2a -> :sswitch_c
        0x3c -> :sswitch_a
        0x64 -> :sswitch_9
        0x65 -> :sswitch_d
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_e
    .end sparse-switch
.end method
