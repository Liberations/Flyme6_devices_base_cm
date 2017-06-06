.class Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;
.super Lcyanogenmod/app/ICMTelephonyManager$Stub;
.source "CMTelephonyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    .prologue
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-direct {p0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap3(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDataConnectionEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectionSelectedOnSub(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap1(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public isSubActive(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap2(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public setDataConnectionSelectedOnSub(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap6(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V

    return-void
.end method

.method public setDataConnectionState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap7(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;Z)V

    return-void
.end method

.method public setDefaultPhoneSub(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap8(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V

    return-void
.end method

.method public setDefaultSmsSub(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap9(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;I)V

    return-void
.end method

.method public setSubState(IZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "state"    # Z

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;

    invoke-static {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;->-wrap10(Lorg/cyanogenmod/platform/internal/CMTelephonyManagerService;IZ)V

    return-void
.end method
