.class public abstract Lcyanogenmod/app/IProfileManager$Stub;
.super Landroid/os/Binder;
.source "IProfileManager.java"

# interfaces
.implements Lcyanogenmod/app/IProfileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/IProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/IProfileManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.IProfileManager"

.field static final TRANSACTION_addNotificationGroup:I = 0xe

.field static final TRANSACTION_addProfile:I = 0x4

.field static final TRANSACTION_getActiveProfile:I = 0x3

.field static final TRANSACTION_getNotificationGroup:I = 0x12

.field static final TRANSACTION_getNotificationGroupForPackage:I = 0x11

.field static final TRANSACTION_getNotificationGroups:I = 0xd

.field static final TRANSACTION_getProfile:I = 0x7

.field static final TRANSACTION_getProfileByName:I = 0x8

.field static final TRANSACTION_getProfiles:I = 0x9

.field static final TRANSACTION_isEnabled:I = 0x14

.field static final TRANSACTION_notificationGroupExistsByName:I = 0xc

.field static final TRANSACTION_profileExists:I = 0xa

.field static final TRANSACTION_profileExistsByName:I = 0xb

.field static final TRANSACTION_removeNotificationGroup:I = 0xf

.field static final TRANSACTION_removeProfile:I = 0x5

.field static final TRANSACTION_resetAll:I = 0x13

.field static final TRANSACTION_setActiveProfile:I = 0x1

.field static final TRANSACTION_setActiveProfileByName:I = 0x2

.field static final TRANSACTION_updateNotificationGroup:I = 0x10

.field static final TRANSACTION_updateProfile:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/IProfileManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/IProfileManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "cyanogenmod.app.IProfileManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/IProfileManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcyanogenmod/app/IProfileManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/app/IProfileManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/app/IProfileManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_1
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    :goto_0
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IProfileManager$Stub;->setActiveProfile(Landroid/os/ParcelUuid;)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v6    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_0

    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v6    # "_result":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .end local v6    # "_result":Z
    :sswitch_2
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->setActiveProfileByName(Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_3
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v5

    .local v5, "_result":Lcyanogenmod/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v9, 0x1

    return v9

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v5    # "_result":Lcyanogenmod/app/Profile;
    :sswitch_4
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcyanogenmod/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    :goto_4
    invoke-virtual {p0, v2}, Lcyanogenmod/app/IProfileManager$Stub;->addProfile(Lcyanogenmod/app/Profile;)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v6    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "_arg0":Lcyanogenmod/app/Profile;
    goto :goto_4

    .end local v2    # "_arg0":Lcyanogenmod/app/Profile;
    .restart local v6    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .end local v6    # "_result":Z
    :sswitch_5
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcyanogenmod/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    :goto_6
    invoke-virtual {p0, v2}, Lcyanogenmod/app/IProfileManager$Stub;->removeProfile(Lcyanogenmod/app/Profile;)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_7

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v6    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcyanogenmod/app/Profile;
    goto :goto_6

    .end local v2    # "_arg0":Lcyanogenmod/app/Profile;
    .restart local v6    # "_result":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .end local v6    # "_result":Z
    :sswitch_6
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Lcyanogenmod/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    :goto_8
    invoke-virtual {p0, v2}, Lcyanogenmod/app/IProfileManager$Stub;->updateProfile(Lcyanogenmod/app/Profile;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcyanogenmod/app/Profile;
    goto :goto_8

    .end local v2    # "_arg0":Lcyanogenmod/app/Profile;
    :sswitch_7
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    :goto_9
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IProfileManager$Stub;->getProfile(Landroid/os/ParcelUuid;)Lcyanogenmod/app/Profile;

    move-result-object v5

    .restart local v5    # "_result":Lcyanogenmod/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_a

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v9, 0x1

    return v9

    .end local v5    # "_result":Lcyanogenmod/app/Profile;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_9

    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v5    # "_result":Lcyanogenmod/app/Profile;
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .end local v5    # "_result":Lcyanogenmod/app/Profile;
    :sswitch_8
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->getProfileByName(Ljava/lang/String;)Lcyanogenmod/app/Profile;

    move-result-object v5

    .restart local v5    # "_result":Lcyanogenmod/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_b

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    const/4 v9, 0x1

    return v9

    :cond_b
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Lcyanogenmod/app/Profile;
    :sswitch_9
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->getProfiles()[Lcyanogenmod/app/Profile;

    move-result-object v8

    .local v8, "_result":[Lcyanogenmod/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v9, 0x1

    return v9

    .end local v8    # "_result":[Lcyanogenmod/app/Profile;
    :sswitch_a
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    :goto_c
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IProfileManager$Stub;->profileExists(Landroid/os/ParcelUuid;)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_d

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v6    # "_result":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_c

    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v6    # "_result":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_d

    .end local v6    # "_result":Z
    :sswitch_b
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->profileExistsByName(Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_e

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_e
    const/4 v9, 0x0

    goto :goto_e

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->notificationGroupExistsByName(Ljava/lang/String;)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_f

    const/4 v9, 0x1

    :goto_f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_f
    const/4 v9, 0x0

    goto :goto_f

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_d
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v7

    .local v7, "_result":[Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    invoke-virtual {p3, v7, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v9, 0x1

    return v9

    .end local v7    # "_result":[Landroid/app/NotificationGroup;
    :sswitch_e
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    sget-object v9, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    :goto_10
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IProfileManager$Stub;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :cond_10
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/app/NotificationGroup;
    goto :goto_10

    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :sswitch_f
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    sget-object v9, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    :goto_11
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IProfileManager$Stub;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/NotificationGroup;
    goto :goto_11

    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :sswitch_10
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    sget-object v9, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    :goto_12
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IProfileManager$Stub;->updateNotificationGroup(Landroid/app/NotificationGroup;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/NotificationGroup;
    goto :goto_12

    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :sswitch_11
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;

    move-result-object v4

    .local v4, "_result":Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_13

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/app/NotificationGroup;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    const/4 v9, 0x1

    return v9

    :cond_13
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/NotificationGroup;
    :sswitch_12
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_14

    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    :goto_14
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IProfileManager$Stub;->getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;

    move-result-object v4

    .restart local v4    # "_result":Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_15

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/app/NotificationGroup;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_15
    const/4 v9, 0x1

    return v9

    .end local v4    # "_result":Landroid/app/NotificationGroup;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_14

    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v4    # "_result":Landroid/app/NotificationGroup;
    :cond_15
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .end local v4    # "_result":Landroid/app/NotificationGroup;
    :sswitch_13
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->resetAll()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_14
    const-string v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->isEnabled()Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_16

    const/4 v9, 0x1

    :goto_16
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_16
    const/4 v9, 0x0

    goto :goto_16

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
