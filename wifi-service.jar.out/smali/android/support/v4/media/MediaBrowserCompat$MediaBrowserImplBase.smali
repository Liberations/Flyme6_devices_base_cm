.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
    }
.end annotation


# static fields
.field private static final CONNECT_STATE_CONNECTED:I = 0x2

.field private static final CONNECT_STATE_CONNECTING:I = 0x1

.field private static final CONNECT_STATE_DISCONNECTED:I = 0x0

.field private static final CONNECT_STATE_SUSPENDED:I = 0x3

.field private static final DBG:Z


# instance fields
.field private final mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

.field private mCallbacksMessenger:Landroid/os/Messenger;

.field private final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field private final mHandler:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;

.field private mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final mRootHints:Landroid/os/Bundle;

.field private mRootId:Ljava/lang/String;

.field private mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

.field private final mServiceComponent:Landroid/content/ComponentName;

.field private mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

.field private mState:I

.field private final mSubscriptions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;

    return-object v0
.end method

.method static synthetic -get4(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get5(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    return-object v0
.end method

.method static synthetic -get6(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get7(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    return-object v0
.end method

.method static synthetic -get8(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    return v0
.end method

.method static synthetic -set0(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    return-object p1
.end method

.method static synthetic -set2(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;I)I
    .locals 0

    iput p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onConnectionFailed(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    return-void
.end method

.method private forceCloseConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method private static getStateLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CONNECT_STATE_DISCONNECTED"

    return-object v0

    :pswitch_1
    const-string v0, "CONNECT_STATE_CONNECTING"

    return-object v0

    :pswitch_2
    const-string v0, "CONNECT_STATE_CONNECTED"

    return-object v0

    :pswitch_3
    const-string v0, "CONNECT_STATE_SUSPENDED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z
    .locals 4
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "funcName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eq v0, p1, :cond_1

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-eqz v0, :cond_0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final onConnectionFailed(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectFailed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onConnectFailed"

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect from service while mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnectionFailed()V

    return-void
.end method

.method private final onLoadChildren(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Ljava/util/List;

    .prologue
    const-string v2, "onLoadChildren"

    invoke-direct {p0, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object v0, p3

    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;

    .local v1, "subscription":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;->callback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v2, p2, v0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private final onServiceConnected(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "callback"    # Landroid/os/Messenger;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    .prologue
    const-string v3, "onConnect"

    invoke-direct {p0, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isCurrent(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const-string v3, "MediaBrowserCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnect from service while mState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "... ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;

    const/4 v3, 0x2

    iput v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;->onConnected()V

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "id":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    invoke-virtual {v3, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "MediaBrowserCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect() called while not disconnected (state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mServiceBinderWrapper should be null. Instead it is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCallbacksMessenger should be null. Instead it is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    iput v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.browse.MediaBrowserService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v3, p0, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;)V

    iput-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    .local v3, "thisConnection":Landroid/content/ServiceConnection;
    const/4 v0, 0x0

    .local v0, "bound":Z
    :try_start_0
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v0    # "bound":Z
    :goto_0
    if-nez v0, :cond_3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;

    new-instance v5, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;

    invoke-direct {v5, p0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/content/ServiceConnection;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    .restart local v0    # "bound":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "MediaBrowserCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed binding to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaBrowserCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException during connect for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dump()V
    .locals 3

    .prologue
    const-string v0, "MediaBrowserCompat"

    const-string v1, "MediaBrowserCompat..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServiceBinderWrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCallbacksMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMediaSessionToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtras() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cb"    # Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mediaId is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cb is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const-string v2, "MediaBrowserCompat"

    const-string v3, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;

    invoke-direct {v3, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;

    invoke-direct {v1, p0, v2, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/os/Handler;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    .local v1, "receiver":Landroid/support/v4/os/ResultReceiver;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaBrowserCompat"

    const-string v3, "Remote error getting media item."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;

    new-instance v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;

    invoke-direct {v3, p0, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoot() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceComponent() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSessionToken() called while not connected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public subscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 6
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "parentId is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "callback is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;

    .local v2, "sub":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
    if-nez v2, :cond_4

    const/4 v1, 0x1

    .local v1, "newSubscription":Z
    :goto_0
    if-eqz v1, :cond_2

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;

    .end local v2    # "sub":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
    invoke-direct {v2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;-><init>(Ljava/lang/String;)V

    .restart local v2    # "sub":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object p2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;->callback:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    invoke-virtual {v3, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->addSubscription(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    .end local v1    # "newSubscription":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "newSubscription":Z
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "MediaBrowserCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 5
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "parentId is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mSubscriptions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;

    .local v1, "sub":Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$Subscription;
    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;

    invoke-virtual {v2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$ServiceBinderWrapper;->removeSubscription(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
