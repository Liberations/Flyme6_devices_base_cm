.class public abstract Lcyanogenmod/app/ICMTelephonyManager$Stub;
.super Landroid/os/Binder;
.source "ICMTelephonyManager.java"

# interfaces
.implements Lcyanogenmod/app/ICMTelephonyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ICMTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ICMTelephonyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.ICMTelephonyManager"

.field static final TRANSACTION_getSubInformation:I = 0x1

.field static final TRANSACTION_isDataConnectionEnabled:I = 0x4

.field static final TRANSACTION_isDataConnectionSelectedOnSub:I = 0x3

.field static final TRANSACTION_isSubActive:I = 0x2

.field static final TRANSACTION_setDataConnectionSelectedOnSub:I = 0x6

.field static final TRANSACTION_setDataConnectionState:I = 0x7

.field static final TRANSACTION_setDefaultPhoneSub:I = 0x8

.field static final TRANSACTION_setDefaultSmsSub:I = 0x9

.field static final TRANSACTION_setSubState:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICMTelephonyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "cyanogenmod.app.ICMTelephonyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/ICMTelephonyManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcyanogenmod/app/ICMTelephonyManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/app/ICMTelephonyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/app/ICMTelephonyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string v5, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string v5, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->getSubInformation()Ljava/util/List;

    move-result-object v3

    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v6

    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :sswitch_2
    const-string v7, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->isSubActive(I)Z

    move-result v4

    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v7, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->isDataConnectionSelectedOnSub(I)Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v7, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->isDataConnectionEnabled()Z

    move-result v4

    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    .end local v4    # "_result":Z
    :sswitch_5
    const-string v5, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .local v2, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->setSubState(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .end local v2    # "_arg1":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Z
    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Z
    :sswitch_6
    const-string v5, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->setDataConnectionSelectedOnSub(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v5, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->setDataConnectionState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .end local v1    # "_arg0":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_1

    .end local v1    # "_arg0":Z
    :sswitch_8
    const-string v5, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->setDefaultPhoneSub(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v5, "cyanogenmod.app.ICMTelephonyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->setDefaultSmsSub(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
