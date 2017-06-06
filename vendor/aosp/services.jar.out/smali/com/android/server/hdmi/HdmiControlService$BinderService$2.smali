.class Lcom/android/server/hdmi/HdmiControlService$BinderService$2;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field final synthetic val$portId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$BinderService;
    .param p2, "val$callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p3, "val$portId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v1, :cond_0

    const-string v1, "HdmiControlService"

    const-string v2, "Callback cannot be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-wrap1(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .local v0, "tv":Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    if-nez v0, :cond_1

    const-string v1, "HdmiControlService"

    const-string v2, "Local tv device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->-wrap13(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$portId:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method
