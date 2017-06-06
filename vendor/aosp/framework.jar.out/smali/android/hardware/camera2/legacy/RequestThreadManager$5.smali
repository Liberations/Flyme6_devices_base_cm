.class Landroid/hardware/camera2/legacy/RequestThreadManager$5;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private final mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/RequestThreadManager;

    .prologue
    .line 670
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 672
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyResultMapper;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyResultMapper;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    .line 670
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 676
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    if-eqz v3, :cond_0

    .line 677
    const/4 v3, 0x1

    return v3

    .line 683
    :cond_0
    const-wide/16 v22, 0x0

    .line 687
    .local v22, "startTime":J
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 957
    :pswitch_0
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unhandled message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 958
    const-string/jumbo v6, " on RequestThread."

    .line 957
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 689
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    .line 690
    .local v2, "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    iget-object v3, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v21

    .line 691
    .local v21, "sizes":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Configure outputs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " surfaces configured."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    .line 695
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 694
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 696
    .local v24, "success":Z
    if-nez v24, :cond_1

    .line 697
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while queueing configure request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v5, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap0(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    .line 708
    iget-object v3, v2, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 960
    .end local v2    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v21    # "sizes":I
    .end local v24    # "success":Z
    :cond_2
    :goto_1
    :pswitch_2
    const/4 v3, 0x1

    return v3

    .line 690
    .restart local v2    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    :cond_3
    const/16 v21, 0x0

    .restart local v21    # "sizes":I
    goto :goto_0

    .line 700
    :catch_0
    move-exception v10

    .line 701
    .local v10, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted while waiting for requests to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 703
    const/4 v5, 0x1

    .line 702
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_1

    .line 715
    .end local v2    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v21    # "sizes":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get16(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 718
    .local v12, "handler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get15(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    move-result-object v15

    .line 720
    .local v15, "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    if-nez v15, :cond_6

    .line 724
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    .line 725
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 724
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 726
    .restart local v24    # "success":Z
    if-nez v24, :cond_4

    .line 727
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    .line 728
    const-string/jumbo v5, "Timed out while waiting for prior requests to complete."

    .line 727
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 738
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get9(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 740
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get15(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    move-result-object v15

    .line 743
    if-nez v15, :cond_5

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    goto/16 :goto_1

    .line 731
    .end local v24    # "success":Z
    :catch_1
    move-exception v10

    .line 732
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted while waiting for requests to complete: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 734
    const/4 v5, 0x1

    .line 733
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v24    # "success":Z
    :cond_5
    monitor-exit v5

    .line 750
    .end local v24    # "success":Z
    :cond_6
    if-eqz v15, :cond_7

    .line 752
    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 757
    :cond_7
    iget-object v3, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/legacy/BurstHolder;

    iget-object v5, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/legacy/BurstHolder;->produceRequestHolders(J)Ljava/util/List;

    move-result-object v19

    .line 758
    .local v19, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "holder$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/legacy/RequestHolder;

    .line 759
    .local v4, "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v18

    .line 761
    .local v18, "request":Landroid/hardware/camera2/CaptureRequest;
    const/16 v16, 0x0

    .line 764
    .local v16, "paramsChanged":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v3

    iget-object v3, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v0, v18

    if-eq v3, v0, :cond_b

    .line 768
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    move-result-object v17

    .line 770
    .local v17, "previewSize":Landroid/util/Size;
    new-instance v14, Landroid/hardware/camera2/legacy/LegacyRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get4(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 771
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 770
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v14, v3, v0, v1, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V

    .line 775
    .local v14, "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v14}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iget-object v5, v14, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 780
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v5, v14, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 791
    const/16 v16, 0x1

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v5, v14, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 795
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3, v14}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 799
    .end local v14    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v17    # "previewSize":Landroid/util/Size;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    .line 800
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    const-wide/16 v6, 0xfa0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 799
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 802
    .restart local v24    # "success":Z
    if-nez v24, :cond_c

    .line 804
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while queueing capture request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const-wide/16 v6, 0x0

    .line 807
    const/4 v5, 0x3

    .line 806
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_2

    .line 851
    .end local v24    # "success":Z
    :catch_2
    move-exception v9

    .line 852
    .local v9, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Received device exception during capture call: "

    invoke-static {v3, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 854
    const/4 v5, 0x1

    .line 853
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 738
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v13    # "holder$iterator":Ljava/util/Iterator;
    .end local v16    # "paramsChanged":Z
    .end local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    .restart local v24    # "success":Z
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 781
    .end local v24    # "success":Z
    .restart local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v13    # "holder$iterator":Ljava/util/Iterator;
    .restart local v14    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .restart local v16    # "paramsChanged":Z
    .restart local v17    # "previewSize":Landroid/util/Size;
    .restart local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    :catch_3
    move-exception v11

    .line 784
    .local v11, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Exception while setting camera parameters: "

    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const-wide/16 v6, 0x0

    .line 787
    const/4 v5, 0x3

    .line 786
    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    goto/16 :goto_2

    .line 814
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v17    # "previewSize":Landroid/util/Size;
    .restart local v24    # "success":Z
    :cond_c
    :try_start_5
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 817
    :cond_d
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 818
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    .line 819
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 818
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while waiting for preview requests to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextPreview()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    .line 856
    .end local v24    # "success":Z
    :catch_4
    move-exception v10

    .line 857
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted during capture: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 859
    const/4 v5, 0x1

    .line 858
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 825
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v24    # "success":Z
    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 835
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 841
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap2(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get14(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v5

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "hdr"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 845
    const/16 v3, 0x4e20

    .line 844
    :goto_4
    int-to-long v6, v3

    .line 843
    invoke-virtual {v5, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v3

    if-nez v3, :cond_10

    .line 846
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Hit timeout for jpeg callback!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextJpeg()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 868
    :cond_10
    if-eqz v16, :cond_11

    .line 873
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set3(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get12(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 885
    :cond_11
    new-instance v8, Landroid/util/MutableLong;

    const-wide/16 v6, 0x0

    invoke-direct {v8, v6, v7}, Landroid/util/MutableLong;-><init>(J)V

    .line 887
    .local v8, "timestampMutable":Landroid/util/MutableLong;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    .line 888
    const-wide/16 v5, 0x64

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 887
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z

    move-result v24

    .line 891
    if-nez v24, :cond_12

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while waiting for request to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7

    .line 902
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    .line 903
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    iget-wide v6, v8, Landroid/util/MutableLong;->value:J

    .line 902
    invoke-virtual {v3, v5, v6, v7}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;J)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v20

    .line 911
    .local v20, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get7(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get6(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get11(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 915
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->requestFailed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 917
    const/4 v5, -0x1

    .line 916
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z

    goto/16 :goto_2

    .line 845
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v20    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_13
    const/16 v3, 0xfa0

    goto/16 :goto_4

    .line 861
    .end local v24    # "success":Z
    :catch_5
    move-exception v11

    .line 862
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Received device exception during capture call: "

    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 864
    const/4 v5, 0x1

    .line 863
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 874
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v24    # "success":Z
    :catch_6
    move-exception v11

    .line 875
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Received device exception: "

    invoke-static {v3, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 877
    const/4 v5, 0x1

    .line 876
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 895
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .restart local v8    # "timestampMutable":Landroid/util/MutableLong;
    :catch_7
    move-exception v10

    .line 896
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted waiting for request completion: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 898
    const/4 v5, 0x1

    .line 897
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_1

    .line 927
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "handler":Landroid/os/Handler;
    .end local v13    # "holder$iterator":Ljava/util/Iterator;
    .end local v15    # "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    .end local v16    # "paramsChanged":Z
    .end local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    .end local v24    # "success":Z
    :pswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 929
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    .line 930
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 929
    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 931
    .restart local v24    # "success":Z
    if-nez v24, :cond_14

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Timed out while queueing cleanup request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    .line 940
    .end local v24    # "success":Z
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 943
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get8(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/GLThreadManager;->quit()V

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set1(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 947
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get2(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-set0(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 951
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get1(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-wrap4(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 935
    :catch_8
    move-exception v10

    .line 936
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Interrupted while waiting for requests to complete: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get5(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    .line 938
    const/4 v5, 0x1

    .line 937
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_5

    .line 687
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
