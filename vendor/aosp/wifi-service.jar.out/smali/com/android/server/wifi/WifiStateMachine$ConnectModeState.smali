.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->connectScanningService()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 56
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v51, v0

    sparse-switch v51, :sswitch_data_0

    const/16 v51, 0x0

    return v51

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v51

    const/16 v52, 0x1

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v52

    monitor-enter v52

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v54

    const/16 v55, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    move/from16 v2, v55

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v53

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v52

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v51

    const v52, 0x2402b

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_0
    const/16 v51, 0x1

    return v51

    .restart local v6    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v51

    monitor-exit v52

    throw v51

    .end local v6    # "bssid":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v51

    const/16 v52, 0x2

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v51

    const v52, 0x24007

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v51

    if-nez v51, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v51

    if-eqz v51, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v51

    if-nez v51, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)Z

    move-result v51

    if-nez v51, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .local v40, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v51, v0

    const v52, 0x2400d

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_4

    const-string v16, "temp-disabled"

    .local v16, "en":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "ConnectModeState SSID state="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " nid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " ["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "]"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v52

    monitor-enter v52

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v53

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v54, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v51, v0

    const v55, 0x2400e

    move/from16 v0, v51

    move/from16 v1, v55

    if-ne v0, v1, :cond_5

    const/16 v51, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v53

    move/from16 v1, v54

    move/from16 v2, v51

    move-object/from16 v3, v40

    move-object/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v16    # "en":Ljava/lang/String;
    .end local v40    # "substr":Ljava/lang/String;
    :goto_3
    monitor-exit v52

    goto/16 :goto_0

    .restart local v40    # "substr":Ljava/lang/String;
    :cond_4
    const-string v16, "re-enabled"

    .restart local v16    # "en":Ljava/lang/String;
    goto/16 :goto_1

    :cond_5
    const/16 v51, 0x0

    goto :goto_2

    :catchall_1
    move-exception v51

    monitor-exit v52

    throw v51

    .end local v16    # "en":Ljava/lang/String;
    .end local v40    # "substr":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v36

    .local v36, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v36 .. v36}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v51

    if-nez v51, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v51

    sget-object v52, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Detected an interface down, restart driver"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x2000d

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v51

    if-nez v51, :cond_9

    sget-object v51, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v36

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v51

    sget-object v52, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-eq v0, v1, :cond_9

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v51

    if-eqz v51, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_9
    sget-object v51, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v36

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v51

    if-eqz v51, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get51(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/net/IpReachabilityMonitor;->probeAll()V

    :cond_a
    sget-object v51, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v36

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/wifi/StateChangeResult;

    .local v37, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v37, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    move/from16 v52, v0

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .end local v36    # "state":Landroid/net/wifi/SupplicantState;
    .end local v37    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v51, v0

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v51

    if-nez v51, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Not authorized to update network  config="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " cnid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " uid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v30

    .local v30, "res":I
    if-gez v30, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x20034

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .local v10, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_d

    if-eqz v8, :cond_d

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v51, v0

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v52, v0

    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_d

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v51, v0

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, 0x0

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    invoke-static/range {v51 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, -0x3

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    invoke-virtual/range {v51 .. v55}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_4

    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "res":I
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .local v23, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v23

    move/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v51

    if-nez v51, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Not authorized to remove network  cnid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " uid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v26

    .local v26, "ok":Z
    if-nez v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v53, v0

    if-eqz v26, :cond_11

    const/16 v51, 0x1

    :goto_5
    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v53

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_11
    const/16 v51, -0x1

    goto :goto_5

    .end local v23    # "netId":I
    .end local v26    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v51, v0

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_12

    const/4 v13, 0x1

    .local v13, "disableOthers":Z
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .restart local v23    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "No network with id = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v23    # "netId":I
    :cond_12
    const/4 v13, 0x0

    .restart local v13    # "disableOthers":Z
    goto :goto_6

    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v23    # "netId":I
    :cond_13
    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v51

    const/16 v52, 0x1

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v23

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    invoke-static/range {v51 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "any"

    move-object/from16 v0, v51

    move/from16 v1, v23

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .local v45, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v23

    move/from16 v2, v45

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v26

    .restart local v26    # "ok":Z
    if-nez v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v53, v0

    if-eqz v26, :cond_16

    const/16 v51, 0x1

    :goto_7
    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v53

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_16
    const/16 v51, -0x1

    goto :goto_7

    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v23    # "netId":I
    .end local v26    # "ok":Z
    .end local v45    # "uid":I
    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    .local v42, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v52

    sub-long v52, v42, v52

    const-wide/32 v54, 0x927c0

    cmp-long v51, v52, v54

    if-lez v51, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-wide/from16 v1, v42

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set33(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_0

    .end local v42    # "time":J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    const/16 v53, 0x5

    invoke-virtual/range {v51 .. v53}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v51

    if-eqz v51, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25013

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25012

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v52

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_3

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v52

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x20049

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v52

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->blackListBssid(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiConfigStore;->clearBssidBlacklist()V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v26

    .restart local v26    # "ok":Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v51

    if-eqz v51, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "did save config "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    if-eqz v26, :cond_19

    const/16 v51, 0x1

    :goto_8
    const v53, 0x2003a

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v53

    move/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    const-string v51, "backup"

    invoke-static/range {v51 .. v51}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v17

    .local v17, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v17, :cond_3

    :try_start_2
    const-string v51, "com.android.providers.settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .end local v14    # "e":Ljava/lang/Exception;
    .end local v17    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_19
    const/16 v51, -0x1

    goto :goto_8

    .end local v26    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move-object/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .local v24, "networkId":I
    const/16 v19, 0x0

    .local v19, "identitySent":Z
    const/4 v15, -0x1

    .local v15, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    if-eqz v51, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v51, v0

    if-eqz v51, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v15

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    if-eqz v51, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v51, v0

    move/from16 v0, v51

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v51, v0

    const/16 v52, 0x3

    invoke-virtual/range {v51 .. v52}, Ljava/util/BitSet;->get(I)Z

    move-result v51

    if-eqz v51, :cond_1e

    const/16 v51, 0x4

    move/from16 v0, v51

    if-eq v15, v0, :cond_1b

    const/16 v51, 0x5

    move/from16 v0, v51

    if-ne v15, v0, :cond_20

    :cond_1b
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v51

    const-string v52, "phone"

    invoke-virtual/range {v51 .. v52}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/telephony/TelephonyManager;

    .local v41, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v41, :cond_1e

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v38

    .local v38, "subId":I
    invoke-virtual/range {v41 .. v41}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v34

    .local v34, "slotId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    if-eqz v51, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    move/from16 v51, v0

    if-lez v51, :cond_1c

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v51

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-lt v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    move/from16 v51, v0

    add-int/lit8 v51, v51, -0x1

    invoke-static/range {v51 .. v51}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v39

    .local v39, "subIds":[I
    if-eqz v39, :cond_1c

    const/16 v51, 0x0

    aget v38, v39, v51

    invoke-static/range {v38 .. v38}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v34

    .end local v39    # "subIds":[I
    :cond_1c
    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v20

    .local v20, "imsi":Ljava/lang/String;
    const-string v22, ""

    .local v22, "mccMnc":Ljava/lang/String;
    move-object/from16 v0, v41

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v51

    const/16 v52, 0x5

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v22

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "identity":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v51

    if-nez v51, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    const/16 v19, 0x1

    .end local v18    # "identity":Ljava/lang/String;
    .end local v20    # "imsi":Ljava/lang/String;
    .end local v22    # "mccMnc":Ljava/lang/String;
    .end local v34    # "slotId":I
    .end local v38    # "subId":I
    .end local v41    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1e
    if-nez v19, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    .local v35, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    if-eqz v51, :cond_1f

    if-eqz v35, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v51, v0

    if-eqz v51, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "\""

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "\""

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v52, v0

    const-string v53, "AUTH_FAILED no identity"

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v54

    move-object/from16 v3, v53

    move-object/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, -0x1

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .end local v35    # "ssid":Ljava/lang/String;
    :cond_20
    const/16 v51, 0x6

    move/from16 v0, v51

    if-ne v15, v0, :cond_1e

    goto/16 :goto_9

    .end local v15    # "eapMethod":I
    .end local v19    # "identitySent":Z
    .end local v24    # "networkId":I
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .local v29, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v29, :cond_23

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v51, v0

    const/16 v52, 0x4

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v51, v0

    const/16 v52, 0x5

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_22

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v51, v0

    const/16 v52, 0x6

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_3

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Invalid sim auth request"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v29    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move-object/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v54

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v54

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move/from16 v2, v53

    move-object/from16 v3, v51

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, -0x1

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    invoke-static/range {v51 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v51

    if-eqz v51, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    invoke-static/range {v51 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    const/16 v51, 0x1

    return v51

    :sswitch_18
    const/4 v12, 0x0

    .local v12, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-eq v0, v1, :cond_24

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    :cond_24
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .restart local v23    # "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    .local v32, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " my state "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " nid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " roam="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    if-nez v8, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v51

    move/from16 v1, v23

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " nid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, -0x1

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v31

    .local v31, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-nez v8, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_26
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v51, v0

    move/from16 v0, v23

    move/from16 v1, v51

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " but got"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v51

    if-nez v51, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v51, v0

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25002

    const/16 v53, 0x9

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v23

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v51

    if-eqz v51, :cond_2b

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v21, v0

    .local v21, "lastConnectUid":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v51

    if-eqz v51, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v51

    if-eqz v51, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    invoke-static/range {v51 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set57(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v51

    if-eqz v51, :cond_2c

    :cond_29
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v51

    if-nez v51, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v51

    if-eqz v51, :cond_2d

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .end local v21    # "lastConnectUid":I
    :cond_2b
    const/16 v21, -0x1

    .restart local v21    # "lastConnectUid":I
    goto/16 :goto_a

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, -0x1

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto :goto_b

    :cond_2d
    if-eqz v12, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get81(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v51

    if-nez v51, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v51

    if-eqz v51, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get16(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v51

    if-eqz v51, :cond_30

    const v11, 0xea60

    .local v11, "delay":I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get9()Z

    move-result v51

    if-eqz v51, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Starting PNO alarm: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v51

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    const-wide/32 v54, 0xea60

    add-long v52, v52, v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v54

    const/16 v55, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v55

    move-wide/from16 v2, v52

    move-object/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .end local v11    # "delay":I
    :cond_30
    sget v51, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v51, v51, 0x1

    sput v51, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Failed to connect config: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " netId: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25002

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v21    # "lastConnectUid":I
    .end local v23    # "netId":I
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v32    # "roam":I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v52

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForUser(I)Z

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .restart local v23    # "netId":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    const/16 v46, 0x0

    .local v46, "updatedExisting":Z
    if-eqz v8, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v51

    if-nez v51, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Not authorized to update network  config="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " cnid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " uid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25002

    const/16 v53, 0x9

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_32
    const/16 v51, 0x1

    move/from16 v0, v51

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v9

    .local v9, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    .local v33, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v33, :cond_33

    move-object/from16 v8, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " configKey="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    const/16 v51, 0x0

    move/from16 v0, v51

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    const/16 v51, 0x0

    move/from16 v0, v51

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v46, 0x1

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v31

    .restart local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v23

    .end local v9    # "configKey":Ljava/lang/String;
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v33    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-nez v8, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "CONNECT_NETWORK no config for id="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " my state "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25002

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_35
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v51, v0

    if-eqz v51, :cond_38

    const-string v48, " skipped"

    .local v48, "wasSkipped":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "CONNECT_NETWORK id="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " config="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " cnid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " supstate="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " my state "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " uid = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "any"

    move-object/from16 v0, v51

    move/from16 v1, v23

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v51, v0

    const/16 v52, 0x3f2

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_36

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v51, v0

    const/16 v52, 0x3e8

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_37

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "CONNECT_NETWORK"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v51

    if-nez v51, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v51, v0

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25002

    const/16 v53, 0x9

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v48    # "wasSkipped":Ljava/lang/String;
    :cond_38
    const-string v48, ""

    .restart local v48    # "wasSkipped":Ljava/lang/String;
    goto/16 :goto_c

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v27

    .local v27, "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v51

    const/16 v52, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v23

    move/from16 v2, v52

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    const/4 v12, 0x0

    .restart local v12    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v51

    const/16 v52, -0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v51

    move/from16 v0, v51

    move/from16 v1, v23

    if-eq v0, v1, :cond_3a

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v23

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v53

    move/from16 v2, v52

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v51

    if-eqz v51, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v51

    if-eqz v51, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    invoke-static/range {v51 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set57(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v51

    const v52, 0x25001

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25003

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    if-eqz v12, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_3b
    if-eqz v46, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v51, v0

    move/from16 v0, v51

    move/from16 v1, v23

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap61(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Failed to connect config: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " netId: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25002

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v23    # "netId":I
    .end local v27    # "persist":Z
    .end local v46    # "updatedExisting":Z
    .end local v48    # "wasSkipped":Ljava/lang/String;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " my state "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25008

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v52

    invoke-direct {v0, v8}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v25, v0

    .local v25, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "SAVE_NETWORK id="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " config="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " nid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " supstate="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " my state "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v51, v0

    const v52, 0x25007

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_44

    const/4 v7, 0x1

    .local v7, "checkUid":Z
    :goto_d
    if-eqz v7, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v51

    if-eqz v51, :cond_45

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, -0x1

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v31

    .restart local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v51

    const/16 v52, -0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v51

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v52

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_41

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v51

    if-eqz v51, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Reconfiguring IP on connection"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_40
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v51

    if-eqz v51, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Reconfiguring proxy on connection"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x2008c

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap62(Lcom/android/server/wifi/WifiStateMachine;I)V

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25009

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-static {v0, v1, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get9()Z

    move-result v51

    if-eqz v51, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Success save network nid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v52

    monitor-enter v52

    :try_start_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v51, v0

    const v53, 0x25007

    move/from16 v0, v51

    move/from16 v1, v53

    if-ne v0, v1, :cond_46

    const/16 v47, 0x1

    .local v47, "user":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v53, v0

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v28

    .local v28, "persistConnect":Z
    if-eqz v47, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v53, v0

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v51

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v53

    move-object/from16 v0, v51

    move/from16 v1, v53

    move/from16 v2, v47

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_3

    .end local v28    # "persistConnect":Z
    .end local v47    # "user":Z
    :catchall_2
    move-exception v51

    monitor-exit v52

    throw v51

    .end local v7    # "checkUid":Z
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_44
    const/4 v7, 0x0

    .restart local v7    # "checkUid":Z
    goto/16 :goto_d

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Not authorized to update network  config="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " cnid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " uid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25008

    const/16 v53, 0x9

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .restart local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_46
    const/16 v47, 0x0

    .restart local v47    # "user":Z
    goto/16 :goto_e

    .end local v47    # "user":Z
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Failed to save network"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25008

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v7    # "checkUid":Z
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v25    # "nid":I
    .end local v31    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    .local v44, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v44, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    :goto_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .restart local v23    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v23

    move/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v51

    if-nez v51, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Not authorized to forget network  cnid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " uid="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25005

    const/16 v53, 0x9

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v23    # "netId":I
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v52

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_f

    .restart local v23    # "netId":I
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v51

    if-eqz v51, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25006

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap42(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Landroid/net/wifi/WifiConfiguration;

    const/16 v53, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v53

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Failed to forget network"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x25005

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v23    # "netId":I
    .end local v44    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Landroid/net/wifi/WpsInfo;

    .local v49, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v49

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v51, v0

    packed-switch v51, :pswitch_data_0

    new-instance v50, Landroid/net/wifi/WpsResult;

    sget-object v51, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v50 .. v51}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .local v50, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Invalid setup for WPS"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    const/16 v52, -0x1

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v51, v0

    sget-object v52, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x2500b

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move-object/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .end local v50    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-wrap5(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v50

    .restart local v50    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_10

    .end local v50    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v50

    .restart local v50    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_10

    .end local v50    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v50

    .restart local v50    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_10

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Failed to start WPS with config "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v49 .. v49}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const v52, 0x2500c

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v49    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v50    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_20
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v51

    if-eqz v51, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "Network connection established"

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-set34(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_21
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v51

    if-eqz v51, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    const-string v52, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, [Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->processPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_b
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_d
        0x2003b -> :sswitch_e
        0x2003e -> :sswitch_11
        0x20049 -> :sswitch_13
        0x2004a -> :sswitch_14
        0x2004b -> :sswitch_15
        0x20061 -> :sswitch_19
        0x20062 -> :sswitch_a
        0x20063 -> :sswitch_12
        0x2008e -> :sswitch_16
        0x2008f -> :sswitch_18
        0x20091 -> :sswitch_17
        0x20092 -> :sswitch_1d
        0x20098 -> :sswitch_1a
        0x2009c -> :sswitch_22
        0x2300c -> :sswitch_4
        0x24003 -> :sswitch_20
        0x24004 -> :sswitch_21
        0x24006 -> :sswitch_3
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_2
        0x2400f -> :sswitch_f
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_0
        0x25001 -> :sswitch_1b
        0x25004 -> :sswitch_1e
        0x25007 -> :sswitch_1c
        0x2500a -> :sswitch_1f
        0x25011 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
