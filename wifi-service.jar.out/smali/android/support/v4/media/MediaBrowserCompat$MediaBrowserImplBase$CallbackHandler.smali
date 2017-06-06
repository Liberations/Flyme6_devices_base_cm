.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .prologue
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "data":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  Client version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  Service version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Messenger;

    move-result-object v4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "data_media_session_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v5, "data_extras"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v1, v2, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-wrap3(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Messenger;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-wrap1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Messenger;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Messenger;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v4, "data_media_item_list"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-wrap2(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
