.class Lcom/android/internal/telephony/PhoneProxy$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$2;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$2;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const-string v1, "Carrier config changed. Reloading config"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneProxy$2;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneProxy;->-get0(Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$2;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
