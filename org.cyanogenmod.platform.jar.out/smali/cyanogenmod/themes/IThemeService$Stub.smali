.class public abstract Lcyanogenmod/themes/IThemeService$Stub;
.super Landroid/os/Binder;
.source "IThemeService.java"

# interfaces
.implements Lcyanogenmod/themes/IThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/themes/IThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/themes/IThemeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.themes.IThemeService"

.field static final TRANSACTION_applyDefaultTheme:I = 0x4

.field static final TRANSACTION_getLastThemeChangeRequestType:I = 0xd

.field static final TRANSACTION_getLastThemeChangeTime:I = 0xc

.field static final TRANSACTION_getProgress:I = 0x6

.field static final TRANSACTION_isThemeApplying:I = 0x5

.field static final TRANSACTION_isThemeBeingProcessed:I = 0x8

.field static final TRANSACTION_processThemeResources:I = 0x7

.field static final TRANSACTION_rebuildResourceCache:I = 0xb

.field static final TRANSACTION_registerThemeProcessingListener:I = 0x9

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_requestThemeChange:I = 0x3

.field static final TRANSACTION_requestThemeChangeUpdates:I = 0x1

.field static final TRANSACTION_unregisterThemeProcessingListener:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "cyanogenmod.themes.IThemeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/themes/IThemeService;

    if-eqz v1, :cond_1

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/themes/IThemeService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/themes/IThemeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_1
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcyanogenmod/themes/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeChangeListener;

    move-result-object v0

    .local v0, "_arg0":Lcyanogenmod/themes/IThemeChangeListener;
    invoke-virtual {p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V

    const/4 v9, 0x1

    return v9

    .end local v0    # "_arg0":Lcyanogenmod/themes/IThemeChangeListener;
    :sswitch_2
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcyanogenmod/themes/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeChangeListener;

    move-result-object v0

    .restart local v0    # "_arg0":Lcyanogenmod/themes/IThemeChangeListener;
    invoke-virtual {p0, v0}, Lcyanogenmod/themes/IThemeService$Stub;->removeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V

    const/4 v9, 0x1

    return v9

    .end local v0    # "_arg0":Lcyanogenmod/themes/IThemeChangeListener;
    :sswitch_3
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcyanogenmod/themes/ThemeChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/themes/ThemeChangeRequest;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v4, 0x1

    .local v4, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v4}, Lcyanogenmod/themes/IThemeService$Stub;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    const/4 v9, 0x1

    return v9

    .end local v4    # "_arg1":Z
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Lcyanogenmod/themes/ThemeChangeRequest;
    goto :goto_0

    .end local v2    # "_arg0":Lcyanogenmod/themes/ThemeChangeRequest;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Z
    goto :goto_1

    .end local v4    # "_arg1":Z
    :sswitch_4
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->applyDefaultTheme()V

    const/4 v9, 0x1

    return v9

    :sswitch_5
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->isThemeApplying()Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .end local v8    # "_result":Z
    :sswitch_6
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->getProgress()I

    move-result v5

    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v5    # "_result":I
    :sswitch_7
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/themes/IThemeService$Stub;->processThemeResources(Ljava/lang/String;)Z

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

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_8
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/themes/IThemeService$Stub;->isThemeBeingProcessed(Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_9
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcyanogenmod/themes/IThemeProcessingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeProcessingListener;

    move-result-object v1

    .local v1, "_arg0":Lcyanogenmod/themes/IThemeProcessingListener;
    invoke-virtual {p0, v1}, Lcyanogenmod/themes/IThemeService$Stub;->registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V

    const/4 v9, 0x1

    return v9

    .end local v1    # "_arg0":Lcyanogenmod/themes/IThemeProcessingListener;
    :sswitch_a
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcyanogenmod/themes/IThemeProcessingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeProcessingListener;

    move-result-object v1

    .restart local v1    # "_arg0":Lcyanogenmod/themes/IThemeProcessingListener;
    invoke-virtual {p0, v1}, Lcyanogenmod/themes/IThemeService$Stub;->unregisterThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V

    const/4 v9, 0x1

    return v9

    .end local v1    # "_arg0":Lcyanogenmod/themes/IThemeProcessingListener;
    :sswitch_b
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->rebuildResourceCache()V

    const/4 v9, 0x1

    return v9

    :sswitch_c
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->getLastThemeChangeTime()J

    move-result-wide v6

    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v9, 0x1

    return v9

    .end local v6    # "_result":J
    :sswitch_d
    const-string v9, "cyanogenmod.themes.IThemeService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/themes/IThemeService$Stub;->getLastThemeChangeRequestType()I

    move-result v5

    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
