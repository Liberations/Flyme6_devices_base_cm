.class Lcom/android/server/webkit/WebViewUpdateService$BinderService;
.super Landroid/webkit/IWebViewUpdateService$Stub;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .prologue
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/webkit/IWebViewUpdateService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    return-void
.end method


# virtual methods
.method public notifyRelroCreationCompleted(ZZ)V
    .locals 3
    .param p1, "is64Bit"    # Z
    .param p2, "success"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x40d

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/webkit/WebViewUpdateService;->-set1(Lcom/android/server/webkit/WebViewUpdateService;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/webkit/WebViewUpdateService;->-set0(Lcom/android/server/webkit/WebViewUpdateService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public waitForRelroCreationCompleted(Z)V
    .locals 14
    .param p1, "is64Bit"    # Z

    .prologue
    const-wide/32 v10, 0xf4240

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    if-ne v8, v9, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cannot create a WebView from the SystemServer"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const-wide/32 v0, 0xf4240

    .local v0, "NS_PER_MS":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1388

    add-long v6, v8, v10

    .local v6, "timeoutTimeMs":J
    if-eqz p1, :cond_3

    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdateService;->-get1(Lcom/android/server/webkit/WebViewUpdateService;)Z

    move-result v3

    .local v3, "relroReady":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    monitor-enter v9

    :goto_1
    if-nez v3, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long v4, v10, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, "timeNowMs":J
    cmp-long v8, v4, v6

    if-ltz v8, :cond_4

    .end local v4    # "timeNowMs":J
    :cond_1
    monitor-exit v9

    if-nez v3, :cond_2

    const-string v8, "WebViewUpdateService"

    const-string v9, "creating relro file timed out"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .end local v3    # "relroReady":Z
    :cond_3
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Z

    move-result v3

    .restart local v3    # "relroReady":Z
    goto :goto_0

    .restart local v4    # "timeNowMs":J
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    sub-long v10, v6, v4

    invoke-virtual {v8, v10, v11}, Lcom/android/server/webkit/WebViewUpdateService;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p1, :cond_5

    :try_start_2
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdateService;->-get1(Lcom/android/server/webkit/WebViewUpdateService;)Z

    move-result v3

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_1

    .end local v4    # "timeNowMs":J
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .restart local v4    # "timeNowMs":J
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method
