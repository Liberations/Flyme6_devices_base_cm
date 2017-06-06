.class public abstract Landroid/media/IRingtonePlayer$Stub;
.super Landroid/os/Binder;
.source "IRingtonePlayer.java"

# interfaces
.implements Landroid/media/IRingtonePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRingtonePlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRingtonePlayer"

.field static final TRANSACTION_getTitle:I = 0x7

.field static final TRANSACTION_isPlaying:I = 0x3

.field static final TRANSACTION_play:I = 0x1

.field static final TRANSACTION_playAsync:I = 0x5

.field static final TRANSACTION_setPlaybackProperties:I = 0x4

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_stopAsync:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IRingtonePlayer"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRingtonePlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.media.IRingtonePlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/IRingtonePlayer;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IRingtonePlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IRingtonePlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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

    move-result v1

    return v1

    :sswitch_0
    const-string v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1
    const-string v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioAttributes;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .local v5, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_2
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/media/IRingtonePlayer$Stub;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":Z
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg1":Landroid/net/Uri;
    goto :goto_0

    .end local v3    # "_arg1":Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg2":Landroid/media/AudioAttributes;
    goto :goto_1

    .end local v4    # "_arg2":Landroid/media/AudioAttributes;
    .restart local v5    # "_arg3":F
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Z
    goto :goto_2

    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":Z
    :sswitch_2
    const-string v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/media/IRingtonePlayer$Stub;->stop(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/media/IRingtonePlayer$Stub;->isPlaying(Landroid/os/IBinder;)Z

    move-result v13

    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_3

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_result":Z
    :sswitch_4
    const-string v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .local v8, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v10, 0x1

    .local v10, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v2, v8, v10}, Landroid/media/IRingtonePlayer$Stub;->setPlaybackProperties(Landroid/os/IBinder;FZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    .end local v10    # "_arg2":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Z
    goto :goto_4

    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":F
    .end local v10    # "_arg2":Z
    :sswitch_5
    const-string v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v10, 0x1

    .restart local v10    # "_arg2":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioAttributes;

    :goto_8
    invoke-virtual {p0, v7, v9, v10, v11}, Landroid/media/IRingtonePlayer$Stub;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    .end local v10    # "_arg2":Z
    :cond_5
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/net/Uri;
    goto :goto_5

    .end local v7    # "_arg0":Landroid/net/Uri;
    :cond_6
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/os/UserHandle;
    goto :goto_6

    .end local v9    # "_arg1":Landroid/os/UserHandle;
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Z
    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    .local v11, "_arg3":Landroid/media/AudioAttributes;
    goto :goto_8

    .end local v10    # "_arg2":Z
    .end local v11    # "_arg3":Landroid/media/AudioAttributes;
    :sswitch_6
    const-string v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/IRingtonePlayer$Stub;->stopAsync()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    :sswitch_7
    const-string v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    :goto_9
    invoke-virtual {p0, v7}, Landroid/media/IRingtonePlayer$Stub;->getTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    .end local v12    # "_result":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/net/Uri;
    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
