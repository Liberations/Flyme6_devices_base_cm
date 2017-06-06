.class public abstract Landroid/media/session/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/media/session/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISession"

.field static final TRANSACTION_destroy:I = 0x7

.field static final TRANSACTION_getController:I = 0x2

.field static final TRANSACTION_playItemResponse:I = 0xe

.field static final TRANSACTION_sendEvent:I = 0x1

.field static final TRANSACTION_setActive:I = 0x4

.field static final TRANSACTION_setCurrentVolume:I = 0x14

.field static final TRANSACTION_setExtras:I = 0xc

.field static final TRANSACTION_setFlags:I = 0x3

.field static final TRANSACTION_setLaunchPendingIntent:I = 0x6

.field static final TRANSACTION_setMediaButtonReceiver:I = 0x5

.field static final TRANSACTION_setMetadata:I = 0x8

.field static final TRANSACTION_setPlaybackState:I = 0x9

.field static final TRANSACTION_setPlaybackToLocal:I = 0x12

.field static final TRANSACTION_setPlaybackToRemote:I = 0x13

.field static final TRANSACTION_setQueue:I = 0xa

.field static final TRANSACTION_setQueueTitle:I = 0xb

.field static final TRANSACTION_setRatingType:I = 0xd

.field static final TRANSACTION_updateFolderInfoBrowsedPlayer:I = 0x10

.field static final TRANSACTION_updateNowPlayingContentChange:I = 0x11

.field static final TRANSACTION_updateNowPlayingEntries:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.session.ISession"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.media.session.ISession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISession;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/session/ISession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    :sswitch_0
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :sswitch_1
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_0

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Landroid/media/session/ISession$Stub;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_0
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISession$Stub;->getController()Landroid/media/session/ISessionController;

    move-result-object v14

    .local v14, "_result":Landroid/media/session/ISessionController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v15, 0x1

    return v15

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .end local v14    # "_result":Landroid/media/session/ISessionController;
    :sswitch_3
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/media/session/ISession$Stub;->setFlags(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v1    # "_arg0":I
    :sswitch_4
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    const/4 v10, 0x1

    .local v10, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/session/ISession$Stub;->setActive(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v10    # "_arg0":Z
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_2

    .end local v10    # "_arg0":Z
    :sswitch_5
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_3

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/session/ISession$Stub;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_3
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/app/PendingIntent;
    goto :goto_3

    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_6
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_4

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/session/ISession$Stub;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_7
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISession$Stub;->destroy()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_8
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_5

    sget-object v15, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaMetadata;

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/session/ISession$Stub;->setMetadata(Landroid/media/MediaMetadata;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_5
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/media/MediaMetadata;
    goto :goto_5

    .end local v5    # "_arg0":Landroid/media/MediaMetadata;
    :sswitch_9
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_6

    sget-object v15, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/session/PlaybackState;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/session/ISession$Stub;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_6
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/media/session/PlaybackState;
    goto :goto_6

    .end local v6    # "_arg0":Landroid/media/session/PlaybackState;
    :sswitch_a
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_7

    sget-object v15, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/session/ISession$Stub;->setQueue(Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_7
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_7

    .end local v3    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_b
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_8

    sget-object v15, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/session/ISession$Stub;->setQueueTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_8
    const/4 v8, 0x0

    .local v8, "_arg0":Ljava/lang/CharSequence;
    goto :goto_8

    .end local v8    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_c
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_9

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/session/ISession$Stub;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_9
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .end local v7    # "_arg0":Landroid/os/Bundle;
    :sswitch_d
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/media/session/ISession$Stub;->setRatingType(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v1    # "_arg0":I
    :sswitch_e
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_a

    const/4 v10, 0x1

    .restart local v10    # "_arg0":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/session/ISession$Stub;->playItemResponse(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v10    # "_arg0":Z
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_a

    .end local v10    # "_arg0":Z
    :sswitch_f
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v11

    .local v11, "_arg0":[J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/media/session/ISession$Stub;->updateNowPlayingEntries([J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v11    # "_arg0":[J
    :sswitch_10
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/media/session/ISession$Stub;->updateFolderInfoBrowsedPlayer(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v9    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISession$Stub;->updateNowPlayingContentChange()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_12
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_b

    sget-object v15, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioAttributes;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/session/ISession$Stub;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_b
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/media/AudioAttributes;
    goto :goto_b

    .end local v4    # "_arg0":Landroid/media/AudioAttributes;
    :sswitch_13
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Landroid/media/session/ISession$Stub;->setPlaybackToRemote(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    .end local v1    # "_arg0":I
    .end local v12    # "_arg1":I
    :sswitch_14
    const-string v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/media/session/ISession$Stub;->setCurrentVolume(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
