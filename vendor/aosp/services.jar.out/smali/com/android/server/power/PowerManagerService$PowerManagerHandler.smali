.class final Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-wrap22(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .local v0, "fromDreamService":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerService;->-wrap19(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_0

    .end local v0    # "fromDreamService":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "fromDreamService":Z
    goto :goto_1

    .end local v0    # "fromDreamService":Z
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-wrap20(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-wrap14(Lcom/android/server/power/PowerManagerService;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :pswitch_4
    const-string v1, "PowerManagerService"

    const-string v2, "Sandman unresponsive, releasing suspend blocker"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->-wrap19(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
