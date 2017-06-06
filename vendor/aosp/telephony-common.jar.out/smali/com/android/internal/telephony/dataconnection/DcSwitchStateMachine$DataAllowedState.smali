.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataAllowedState"
.end annotation


# instance fields
.field private mCurrentAllowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->mCurrentAllowedSequence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "DataAllowedState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    .local v1, "retVal":Z
    :goto_0
    return v1

    .end local v1    # "retVal":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v3, "DataAllowedState: REQ_DISCONNECT_ALL"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get8(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v3, "releasingAll due to autoAttach"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DataAllowedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    const/4 v1, 0x1

    .restart local v1    # "retVal":Z
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x44002
        :pswitch_0
    .end packed-switch
.end method
