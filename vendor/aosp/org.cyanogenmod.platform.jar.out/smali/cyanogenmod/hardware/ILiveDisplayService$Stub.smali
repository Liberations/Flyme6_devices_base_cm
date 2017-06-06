.class public abstract Lcyanogenmod/hardware/ILiveDisplayService$Stub;
.super Landroid/os/Binder;
.source "ILiveDisplayService.java"

# interfaces
.implements Lcyanogenmod/hardware/ILiveDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/ILiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/ILiveDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.hardware.ILiveDisplayService"

.field static final TRANSACTION_getColorAdjustment:I = 0x4

.field static final TRANSACTION_getColorTemperature:I = 0x10

.field static final TRANSACTION_getConfig:I = 0x1

.field static final TRANSACTION_getDayColorTemperature:I = 0xc

.field static final TRANSACTION_getDefaultPictureAdjustment:I = 0x14

.field static final TRANSACTION_getMode:I = 0x2

.field static final TRANSACTION_getNightColorTemperature:I = 0xe

.field static final TRANSACTION_getPictureAdjustment:I = 0x13

.field static final TRANSACTION_isAutoContrastEnabled:I = 0x6

.field static final TRANSACTION_isAutomaticOutdoorModeEnabled:I = 0x11

.field static final TRANSACTION_isCABCEnabled:I = 0x8

.field static final TRANSACTION_isColorEnhancementEnabled:I = 0xa

.field static final TRANSACTION_setAutoContrastEnabled:I = 0x7

.field static final TRANSACTION_setAutomaticOutdoorModeEnabled:I = 0x12

.field static final TRANSACTION_setCABCEnabled:I = 0x9

.field static final TRANSACTION_setColorAdjustment:I = 0x5

.field static final TRANSACTION_setColorEnhancementEnabled:I = 0xb

.field static final TRANSACTION_setDayColorTemperature:I = 0xd

.field static final TRANSACTION_setMode:I = 0x3

.field static final TRANSACTION_setNightColorTemperature:I = 0xf

.field static final TRANSACTION_setPictureAdjustment:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ILiveDisplayService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/hardware/ILiveDisplayService;

    if-eqz v1, :cond_1

    check-cast v0, Lcyanogenmod/hardware/ILiveDisplayService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/hardware/ILiveDisplayService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_1
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v6

    .local v6, "_result":Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v6, p3, v9}, Lcyanogenmod/hardware/LiveDisplayConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v9, 0x1

    return v9

    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v6    # "_result":Lcyanogenmod/hardware/LiveDisplayConfig;
    :sswitch_2
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getMode()I

    move-result v4

    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v4    # "_result":I
    :sswitch_3
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setMode(I)Z

    move-result v7

    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .end local v0    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_4
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getColorAdjustment()[F

    move-result-object v8

    .local v8, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeFloatArray([F)V

    const/4 v9, 0x1

    return v9

    .end local v8    # "_result":[F
    :sswitch_5
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .local v3, "_arg0":[F
    invoke-virtual {p0, v3}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setColorAdjustment([F)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .end local v3    # "_arg0":[F
    .end local v7    # "_result":Z
    :sswitch_6
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isAutoContrastEnabled()Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .end local v7    # "_result":Z
    :sswitch_7
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    .local v2, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setAutoContrastEnabled(Z)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_4

    .restart local v7    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_8
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isCABCEnabled()Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .end local v7    # "_result":Z
    :sswitch_9
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v2, 0x1

    .restart local v2    # "_arg0":Z
    :goto_7
    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setCABCEnabled(Z)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_8

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_7

    .restart local v7    # "_result":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_8

    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_a
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isColorEnhancementEnabled()Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_9

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_9
    const/4 v9, 0x0

    goto :goto_9

    .end local v7    # "_result":Z
    :sswitch_b
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    const/4 v2, 0x1

    .restart local v2    # "_arg0":Z
    :goto_a
    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setColorEnhancementEnabled(Z)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_b

    const/4 v9, 0x1

    :goto_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_a

    .restart local v7    # "_result":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_b

    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_c
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getDayColorTemperature()I

    move-result v4

    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v4    # "_result":I
    :sswitch_d
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setDayColorTemperature(I)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_c

    const/4 v9, 0x1

    :goto_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_c
    const/4 v9, 0x0

    goto :goto_c

    .end local v0    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_e
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getNightColorTemperature()I

    move-result v4

    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v4    # "_result":I
    :sswitch_f
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setNightColorTemperature(I)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_d

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_d
    const/4 v9, 0x0

    goto :goto_d

    .end local v0    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_10
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getColorTemperature()I

    move-result v4

    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v4    # "_result":I
    :sswitch_11
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isAutomaticOutdoorModeEnabled()Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_e

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_e
    const/4 v9, 0x0

    goto :goto_e

    .end local v7    # "_result":Z
    :sswitch_12
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    const/4 v2, 0x1

    .restart local v2    # "_arg0":Z
    :goto_f
    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_10

    const/4 v9, 0x1

    :goto_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_f

    .restart local v7    # "_result":Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_10

    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_13
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v5

    .local v5, "_result":Lcyanogenmod/hardware/HSIC;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_11

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/hardware/HSIC;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/4 v9, 0x1

    return v9

    :cond_11
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .end local v5    # "_result":Lcyanogenmod/hardware/HSIC;
    :sswitch_14
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v5

    .restart local v5    # "_result":Lcyanogenmod/hardware/HSIC;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_12

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/hardware/HSIC;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_12
    const/4 v9, 0x1

    return v9

    :cond_12
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .end local v5    # "_result":Lcyanogenmod/hardware/HSIC;
    :sswitch_15
    const-string v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13

    sget-object v9, Lcyanogenmod/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/hardware/HSIC;

    :goto_13
    invoke-virtual {p0, v1}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    move-result v7

    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_14

    const/4 v9, 0x1

    :goto_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v7    # "_result":Z
    :cond_13
    const/4 v1, 0x0

    .local v1, "_arg0":Lcyanogenmod/hardware/HSIC;
    goto :goto_13

    .end local v1    # "_arg0":Lcyanogenmod/hardware/HSIC;
    .restart local v7    # "_result":Z
    :cond_14
    const/4 v9, 0x0

    goto :goto_14

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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
