.class public Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;
.super Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.source "AccessibilityService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IAccessibilityServiceClientWrapper"
.end annotation


# static fields
.field private static final DO_CLEAR_ACCESSIBILITY_CACHE:I = 0x5

.field private static final DO_INIT:I = 0x1

.field private static final DO_ON_ACCESSIBILITY_EVENT:I = 0x3

.field private static final DO_ON_GESTURE:I = 0x4

.field private static final DO_ON_INTERRUPT:I = 0x2

.field private static final DO_ON_KEY_EVENT:I = 0x6


# instance fields
.field private final mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field private mConnectionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/accessibilityservice/AccessibilityService$Callbacks;

    .prologue
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;-><init>()V

    iput-object p3, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    return-void
.end method


# virtual methods
.method public clearAccessibilityCache()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    const-string v10, "AccessibilityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown message type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v3, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v10, v3}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :try_start_0
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    .local v5, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0

    .end local v3    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v5    # "ise":Ljava/lang/IllegalStateException;
    :pswitch_1
    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v10}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onInterrupt()V

    return-void

    :pswitch_2
    iget v10, p1, Landroid/os/Message;->arg1:I

    iput v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/os/IBinder;

    .local v9, "windowToken":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v10

    iget v11, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v10, v11, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    iget v11, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-interface {v10, v11, v9}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v10}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onServiceConnected()V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v10

    iget v11, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v10, v11}, Landroid/view/accessibility/AccessibilityInteractionClient;->removeConnection(I)V

    iput v13, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v10, v13, v12}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->init(ILandroid/os/IBinder;)V

    goto :goto_1

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v9    # "windowToken":Landroid/os/IBinder;
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, "gestureId":I
    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v10, v4}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onGesture(I)Z

    return-void

    .end local v4    # "gestureId":I
    :pswitch_4
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    return-void

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    .local v2, "event":Landroid/view/KeyEvent;
    :try_start_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v10

    iget v11, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mConnectionId:I

    invoke-virtual {v10, v11}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .restart local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v1, :cond_2

    iget-object v10, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCallback:Landroid/accessibilityservice/AccessibilityService$Callbacks;

    invoke-interface {v10, v2}, Landroid/accessibilityservice/AccessibilityService$Callbacks;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    .local v7, "result":Z
    iget v8, p1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v8, "sequence":I
    :try_start_2
    invoke-interface {v1, v7, v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setOnKeyEventResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v7    # "result":Z
    .end local v8    # "sequence":I
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    return-void

    .restart local v7    # "result":Z
    .restart local v8    # "sequence":I
    :catch_1
    move-exception v6

    .local v6, "re":Landroid/os/RemoteException;
    goto :goto_2

    .end local v6    # "re":Landroid/os/RemoteException;
    .end local v7    # "result":Z
    .end local v8    # "sequence":I
    :catch_2
    move-exception v5

    .restart local v5    # "ise":Ljava/lang/IllegalStateException;
    goto :goto_3

    .end local v1    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5    # "ise":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v10

    :try_start_4
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    throw v10

    :catch_3
    move-exception v5

    .restart local v5    # "ise":Ljava/lang/IllegalStateException;
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "connectionId"    # I
    .param p3, "windowToken"    # Landroid/os/IBinder;

    .prologue
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onGesture(I)V
    .locals 3
    .param p1, "gestureId"    # I

    .prologue
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onInterrupt()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sequence"    # I

    .prologue
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
