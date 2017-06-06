.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$2"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    .param p2, "val$name"    # Landroid/content/ComponentName;

    .prologue
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$2:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$2:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->-wrap0(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$2:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-set1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$2:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-set0(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$2:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-set2(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2;->this$2:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->-get0(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionSuspended()V

    return-void
.end method
