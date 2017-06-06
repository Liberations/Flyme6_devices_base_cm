.class Landroid/net/DhcpStateMachine$RunningState;
.super Lcom/android/internal/util/State;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/DhcpStateMachine;

    .prologue
    iput-object p1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get0(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get5(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get10(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get8(Landroid/net/DhcpStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get3(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x30004

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get11(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-wrap1(Landroid/net/DhcpStateMachine;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    iget-object v2, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v2}, Landroid/net/DhcpStateMachine;->-get10(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/DhcpStateMachine;->-wrap4(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V

    :cond_1
    iget-object v1, p0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    invoke-static {v1}, Landroid/net/DhcpStateMachine;->-get4(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
