.class public abstract Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;
.super Landroid/os/Binder;
.source "IKeyguardExternalViewProvider.java"

# interfaces
.implements Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

.field static final TRANSACTION_alterWindow:I = 0xa

.field static final TRANSACTION_onAttach:I = 0x1

.field static final TRANSACTION_onBouncerShowing:I = 0x5

.field static final TRANSACTION_onDetach:I = 0x2

.field static final TRANSACTION_onKeyguardDismissed:I = 0x4

.field static final TRANSACTION_onKeyguardShowing:I = 0x3

.field static final TRANSACTION_onLockscreenSlideOffsetChanged:I = 0xb

.field static final TRANSACTION_onScreenTurnedOff:I = 0x7

.field static final TRANSACTION_onScreenTurnedOn:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    if-eqz v1, :cond_1

    check-cast v0, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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

    move-result v0

    return v0

    :sswitch_0
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v8}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onAttach(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    return v0

    .end local v8    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onDetach()V

    const/4 v0, 0x1

    return v0

    :sswitch_3
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .local v10, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v10}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onKeyguardShowing(Z)V

    const/4 v0, 0x1

    return v0

    .end local v10    # "_arg0":Z
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_0

    .end local v10    # "_arg0":Z
    :sswitch_4
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onKeyguardDismissed()V

    const/4 v0, 0x1

    return v0

    :sswitch_5
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .restart local v10    # "_arg0":Z
    :goto_1
    invoke-virtual {p0, v10}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onBouncerShowing(Z)V

    const/4 v0, 0x1

    return v0

    .end local v10    # "_arg0":Z
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_1

    .end local v10    # "_arg0":Z
    :sswitch_6
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onScreenTurnedOn()V

    const/4 v0, 0x1

    return v0

    :sswitch_7
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onScreenTurnedOff()V

    const/4 v0, 0x1

    return v0

    :sswitch_8
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v9

    .local v9, "_arg0":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    invoke-virtual {p0, v9}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->registerCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V

    const/4 v0, 0x1

    return v0

    .end local v9    # "_arg0":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :sswitch_9
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v9

    .restart local v9    # "_arg0":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    invoke-virtual {p0, v9}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->unregisterCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V

    const/4 v0, 0x1

    return v0

    .end local v9    # "_arg0":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :sswitch_a
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    .local v5, "_arg4":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->alterWindow(IIIIZLandroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    .end local v5    # "_arg4":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Z
    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg5":Landroid/graphics/Rect;
    goto :goto_3

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    :sswitch_b
    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .local v7, "_arg0":F
    invoke-virtual {p0, v7}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onLockscreenSlideOffsetChanged(F)V

    const/4 v0, 0x1

    return v0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
