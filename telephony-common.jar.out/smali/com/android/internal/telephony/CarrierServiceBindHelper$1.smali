.class Lcom/android/internal/telephony/CarrierServiceBindHelper$1;
.super Landroid/os/Handler;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .local v1, "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding to phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bind()Z

    goto :goto_0

    .end local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .restart local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind timeout for phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    goto :goto_0

    .end local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .restart local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbinding for phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    goto :goto_0

    .end local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "carrierPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get0(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .local v0, "appBinding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed and corresponds to a phone. Rebinding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bind()Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
