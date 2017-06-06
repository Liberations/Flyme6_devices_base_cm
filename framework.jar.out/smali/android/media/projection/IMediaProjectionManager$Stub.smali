.class public abstract Landroid/media/projection/IMediaProjectionManager$Stub;
.super Landroid/os/Binder;
.source "IMediaProjectionManager.java"

# interfaces
.implements Landroid/media/projection/IMediaProjectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IMediaProjectionManager"

.field static final TRANSACTION_addCallback:I = 0x6

.field static final TRANSACTION_createProjection:I = 0x2

.field static final TRANSACTION_getActiveProjectionInfo:I = 0x4

.field static final TRANSACTION_hasProjectionPermission:I = 0x1

.field static final TRANSACTION_isValidMediaProjection:I = 0x3

.field static final TRANSACTION_removeCallback:I = 0x7

.field static final TRANSACTION_stopActiveProjection:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.media.projection.IMediaProjectionManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/projection/IMediaProjectionManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/projection/IMediaProjectionManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string v9, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_1
    const-string v9, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_2
    const-string v9, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x1

    .local v5, "_arg3":Z
    :goto_1
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/media/projection/IMediaProjectionManager$Stub;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v6

    .local v6, "_result":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v9, 0x1

    return v9

    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Landroid/media/projection/IMediaProjection;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Z
    goto :goto_1

    .restart local v6    # "_result":Landroid/media/projection/IMediaProjection;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Landroid/media/projection/IMediaProjection;
    :sswitch_3
    const-string v9, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v1

    .local v1, "_arg0":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p0, v1}, Landroid/media/projection/IMediaProjectionManager$Stub;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .end local v1    # "_arg0":Landroid/media/projection/IMediaProjection;
    .end local v8    # "_result":Z
    :sswitch_4
    const-string v9, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v7

    .local v7, "_result":Landroid/media/projection/MediaProjectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_4

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v7, p3, v9}, Landroid/media/projection/MediaProjectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v9, 0x1

    return v9

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v7    # "_result":Landroid/media/projection/MediaProjectionInfo;
    :sswitch_5
    const-string v9, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->stopActiveProjection()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_6
    const-string v9, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionWatcherCallback;

    move-result-object v2

    .local v2, "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    :sswitch_7
    const-string v9, "android.media.projection.IMediaProjectionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionWatcherCallback;

    move-result-object v2

    .restart local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

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
