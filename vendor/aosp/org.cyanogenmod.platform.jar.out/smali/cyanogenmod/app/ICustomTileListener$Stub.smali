.class public abstract Lcyanogenmod/app/ICustomTileListener$Stub;
.super Landroid/os/Binder;
.source "ICustomTileListener.java"

# interfaces
.implements Lcyanogenmod/app/ICustomTileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ICustomTileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.ICustomTileListener"

.field static final TRANSACTION_onCustomTilePosted:I = 0x2

.field static final TRANSACTION_onCustomTileRemoved:I = 0x3

.field static final TRANSACTION_onListenerConnected:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICustomTileListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "cyanogenmod.app.ICustomTileListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/ICustomTileListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcyanogenmod/app/ICustomTileListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/app/ICustomTileListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_1
    const-string v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/app/ICustomTileListener$Stub;->onListenerConnected()V

    return v2

    :sswitch_2
    const-string v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;->asInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    move-result-object v0

    .local v0, "_arg0":Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->onCustomTilePosted(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V

    return v2

    .end local v0    # "_arg0":Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
    :sswitch_3
    const-string v1, "cyanogenmod.app.ICustomTileListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;->asInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    move-result-object v0

    .restart local v0    # "_arg0":Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ICustomTileListener$Stub;->onCustomTileRemoved(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
