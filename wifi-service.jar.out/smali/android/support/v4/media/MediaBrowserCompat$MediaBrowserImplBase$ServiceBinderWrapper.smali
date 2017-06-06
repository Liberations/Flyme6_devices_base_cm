.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinderWrapper"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
    .param p2, "target"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "cbMessenger"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p4, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;)V
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->sendRequest(ILjava/lang/Object;Landroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method

.method connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get2(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get4(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Messenger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->sendRequest(ILjava/lang/Object;Landroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method

.method disconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->sendRequest(ILjava/lang/Object;Landroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method

.method getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/support/v4/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "data_result_receiver"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->sendRequest(ILjava/lang/Object;Landroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method

.method removeSubscription(Ljava/lang/String;)V
    .locals 3
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->sendRequest(ILjava/lang/Object;Landroid/os/Bundle;Landroid/os/Messenger;)V

    return-void
.end method
