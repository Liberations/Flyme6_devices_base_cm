.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;
.super Landroid/os/Handler;
.source "CameraDeviceUserShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide v12, 0xffffffffL

    :try_start_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown callback message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received remote exception during camera callback "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .local v1, "errorCode":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .local v4, "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v8

    invoke-interface {v8, v1, v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .end local v1    # "errorCode":I
    .end local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_0
    return-void

    :pswitch_1
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v8

    invoke-interface {v8}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceIdle()V

    goto :goto_0

    :pswitch_2
    iget v8, p1, Landroid/os/Message;->arg2:I

    int-to-long v8, v8

    and-long v6, v8, v12

    .local v6, "timestamp":J
    const/16 v8, 0x20

    shl-long v8, v6, v8

    iget v10, p1, Landroid/os/Message;->arg1:I

    int-to-long v10, v10

    and-long/2addr v10, v12

    or-long v6, v8, v10

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .restart local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v8

    invoke-interface {v8, v4, v6, v7}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    goto :goto_0

    .end local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local v6    # "timestamp":J
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .local v3, "resultArray":[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v2, v3, v8

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .local v2, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v8, 0x1

    aget-object v4, v3, v8

    check-cast v4, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .restart local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v8

    invoke-interface {v8, v2, v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    goto :goto_0

    .end local v2    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v3    # "resultArray":[Ljava/lang/Object;
    .end local v4    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :pswitch_4
    iget v5, p1, Landroid/os/Message;->arg1:I

    .local v5, "streamId":I
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v8}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onPrepared(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
