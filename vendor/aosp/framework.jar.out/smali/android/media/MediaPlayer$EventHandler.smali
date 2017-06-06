.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    const-string v8, "MediaPlayer"

    const-string v9, "mediaplayer went away with unhandled events"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown message type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    :try_start_0
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/RuntimeException;
    const/16 v8, 0x64

    const/4 v9, 0x1

    const/16 v10, -0x3f2

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .local v4, "msg2":Landroid/os/Message;
    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "msg2":Landroid/os/Message;
    :sswitch_1
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    return-void

    :sswitch_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v7

    .local v7, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_3
    :goto_1
    :sswitch_3
    return-void

    :sswitch_4
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v7

    .restart local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_3

    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_5
    return-void

    :sswitch_6
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_6
    :sswitch_7
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v7

    .restart local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_7

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_7
    return-void

    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_8
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_8
    return-void

    :sswitch_9
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "error_was_handled":Z
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v3

    .end local v3    # "error_was_handled":Z
    :cond_9
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    if-eqz v8, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    :goto_3
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    return-void

    :cond_b
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_3

    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    sparse-switch v8, :sswitch_data_1

    :cond_c
    :goto_4
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    :cond_d
    return-void

    :sswitch_b
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Info ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_c
    :try_start_1
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    :sswitch_d
    const/16 v8, 0x322

    iput v8, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_4

    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const/16 v8, 0x64

    const/4 v9, 0x1

    const/16 v10, -0x3f2

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .restart local v4    # "msg2":Landroid/os/Message;
    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "msg2":Landroid/os/Message;
    :sswitch_e
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v7

    .restart local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_c

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x2bd

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_4

    :cond_e
    const/4 v8, 0x0

    goto :goto_6

    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_f
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    if-nez v8, :cond_f

    return-void

    :cond_f
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_11

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    :cond_10
    :goto_7
    return-void

    :cond_11
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_10

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcel;

    .local v5, "parcel":Landroid/os/Parcel;
    new-instance v6, Landroid/media/TimedText;

    invoke-direct {v6, v5}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .local v6, "text":Landroid/media/TimedText;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v6}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_7

    .end local v5    # "parcel":Landroid/os/Parcel;
    .end local v6    # "text":Landroid/media/TimedText;
    :sswitch_10
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v8

    if-nez v8, :cond_12

    return-void

    :cond_12
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_13

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcel;

    .restart local v5    # "parcel":Landroid/os/Parcel;
    new-instance v0, Landroid/media/SubtitleData;

    invoke-direct {v0, v5}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .local v0, "data":Landroid/media/SubtitleData;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v0}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    .end local v0    # "data":Landroid/media/SubtitleData;
    .end local v5    # "parcel":Landroid/os/Parcel;
    :cond_13
    return-void

    :sswitch_11
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v8

    if-nez v8, :cond_14

    return-void

    :cond_14
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_15

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcel;

    .restart local v5    # "parcel":Landroid/os/Parcel;
    invoke-static {v5}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v1

    .local v1, "data":Landroid/media/TimedMetaData;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v1}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    .end local v1    # "data":Landroid/media/TimedMetaData;
    .end local v5    # "parcel":Landroid/os/Parcel;
    :cond_15
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0x63 -> :sswitch_f
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_e
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
