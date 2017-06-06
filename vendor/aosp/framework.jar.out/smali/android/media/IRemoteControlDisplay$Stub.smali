.class public abstract Landroid/media/IRemoteControlDisplay$Stub;
.super Landroid/os/Binder;
.source "IRemoteControlDisplay.java"

# interfaces
.implements Landroid/media/IRemoteControlDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteControlDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteControlDisplay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteControlDisplay"

.field static final TRANSACTION_setAllMetadata:I = 0x7

.field static final TRANSACTION_setArtwork:I = 0x6

.field static final TRANSACTION_setCurrentClientId:I = 0x1

.field static final TRANSACTION_setEnabled:I = 0x2

.field static final TRANSACTION_setMetadata:I = 0x5

.field static final TRANSACTION_setPlaybackState_2:I = 0x3

.field static final TRANSACTION_setTransportControlInfo_3:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRemoteControlDisplay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IRemoteControlDisplay$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IRemoteControlDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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

    move-result v3

    return v3

    :sswitch_0
    const-string v3, "android.media.IRemoteControlDisplay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string v3, "android.media.IRemoteControlDisplay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v16, 0x1

    .local v16, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v11, v1}, Landroid/media/IRemoteControlDisplay$Stub;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V

    const/4 v3, 0x1

    return v3

    .end local v16    # "_arg2":Z
    :cond_0
    const/4 v11, 0x0

    .local v11, "_arg1":Landroid/app/PendingIntent;
    goto :goto_0

    .end local v11    # "_arg1":Landroid/app/PendingIntent;
    :cond_1
    const/16 v16, 0x0

    .restart local v16    # "_arg2":Z
    goto :goto_1

    .end local v4    # "_arg0":I
    .end local v16    # "_arg2":Z
    :sswitch_2
    const-string v3, "android.media.IRemoteControlDisplay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .local v2, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/IRemoteControlDisplay$Stub;->setEnabled(Z)V

    const/4 v3, 0x1

    return v3

    .end local v2    # "_arg0":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_2

    .end local v2    # "_arg0":Z
    :sswitch_3
    const-string v3, "android.media.IRemoteControlDisplay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .local v10, "_arg4":F
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/media/IRemoteControlDisplay$Stub;->setPlaybackState(IIJJF)V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    .end local v10    # "_arg4":F
    :sswitch_4
    const-string v3, "android.media.IRemoteControlDisplay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v14}, Landroid/media/IRemoteControlDisplay$Stub;->setTransportControlInfo(III)V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v14    # "_arg2":I
    :sswitch_5
    const-string v3, "android.media.IRemoteControlDisplay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Landroid/media/IRemoteControlDisplay$Stub;->setMetadata(ILandroid/os/Bundle;)V

    const/4 v3, 0x1

    return v3

    :cond_3
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .end local v4    # "_arg0":I
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_6
    const-string v3, "android.media.IRemoteControlDisplay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Landroid/media/IRemoteControlDisplay$Stub;->setArtwork(ILandroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    return v3

    :cond_4
    const/4 v12, 0x0

    .local v12, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_4

    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_7
    const-string v3, "android.media.IRemoteControlDisplay"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13, v15}, Landroid/media/IRemoteControlDisplay$Stub;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    return v3

    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .end local v13    # "_arg1":Landroid/os/Bundle;
    :cond_6
    const/4 v15, 0x0

    .local v15, "_arg2":Landroid/graphics/Bitmap;
    goto :goto_6

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
