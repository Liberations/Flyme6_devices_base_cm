.class Landroid/widget/RemoteViewsAdapter$2;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-get6(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    .local v0, "position":I
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()[I

    move-result-object v1

    .local v1, "res":[I
    const/4 v2, 0x0

    aget v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/RemoteViewsAdapter;->-wrap3(Landroid/widget/RemoteViewsAdapter;IZ)V

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-wrap1(Landroid/widget/RemoteViewsAdapter;)V

    .end local v0    # "position":I
    .end local v1    # "res":[I
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "position":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "res":[I
    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter;->-wrap0(Landroid/widget/RemoteViewsAdapter;)V

    goto :goto_0
.end method
