.class Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .prologue
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v2, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v2, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onFastForward()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewind()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    return-void
.end method

.method public onSetRating(Ljava/lang/Object;)V
    .locals 2
    .param p1, "ratingObj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    return-void
.end method
