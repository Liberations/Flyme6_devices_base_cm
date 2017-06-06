.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/io/FileDescriptor;

    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/io/PrintWriter;

    iget-object v9, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v10, v7, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/InputBindResult;

    .local v4, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    :try_start_2
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v7, :cond_0

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v9, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v7, v9, :cond_2

    :cond_0
    const-string v7, "InputMethodManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring onBind: cur seq="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v10, v10, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", given seq="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v7, :cond_1

    iget-object v7, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v9, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v7, v9, :cond_1

    iget-object v7, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v7}, Landroid/view/InputChannel;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v8

    return-void

    :cond_2
    :try_start_3
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->-set1(Landroid/view/inputmethod/InputMethodManager;I)I

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v9, v7, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v4, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v9, v7, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v4, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v9, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v8

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7, v11, v10, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    return-void

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .end local v4    # "res":Lcom/android/internal/view/InputBindResult;
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    .local v5, "sequence":I
    const/4 v6, 0x0

    .local v6, "startInput":Z
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    :try_start_4
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v7, v7, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ne v7, v5, :cond_4

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    :cond_3
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v7, v7, Landroid/view/inputmethod/InputMethodManager;->mActive:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_4

    const/4 v6, 0x1

    :cond_4
    monitor-exit v8

    if-eqz v6, :cond_5

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7, v11, v10, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    :cond_5
    return-void

    :catchall_2
    move-exception v7

    monitor-exit v8

    throw v7

    .end local v5    # "sequence":I
    .end local v6    # "startInput":Z
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_8

    const/4 v0, 0x1

    .local v0, "active":Z
    :goto_2
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    :try_start_5
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v7, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    if-nez v0, :cond_6

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v7}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_6
    :goto_3
    :try_start_7
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->hasWindowFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v9, v9, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->-wrap0(Landroid/view/inputmethod/InputMethodManager;ZZ)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_7
    monitor-exit v8

    return-void

    .end local v0    # "active":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_2

    :catchall_3
    move-exception v7

    monitor-exit v8

    throw v7

    .end local v0    # "active":Z
    :pswitch_5
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v8, v7}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void

    :pswitch_6
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v10, v9}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_7
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_8
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    :try_start_8
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->-set0(Landroid/view/inputmethod/InputMethodManager;I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit v8

    goto/16 :goto_0

    :catchall_4
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v0    # "active":Z
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
