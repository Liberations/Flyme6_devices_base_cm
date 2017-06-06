.class public Lcyanogenmod/app/IProfileManager$NoOp;
.super Ljava/lang/Object;
.source "IProfileManager.java"

# interfaces
.implements Lcyanogenmod/app/IProfileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/IProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 0
    .param p1, "group"    # Landroid/app/NotificationGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public addProfile(Lcyanogenmod/app/Profile;)Z
    .locals 1
    .param p1, "profile"    # Lcyanogenmod/app/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveProfile()Lcyanogenmod/app/Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    .locals 1
    .param p1, "groupParcelUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfile(Landroid/os/ParcelUuid;)Lcyanogenmod/app/Profile;
    .locals 1
    .param p1, "profileParcelUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileByName(Ljava/lang/String;)Lcyanogenmod/app/Profile;
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfiles()[Lcyanogenmod/app/Profile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public notificationGroupExistsByName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "notificationGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public profileExists(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p1, "profileUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public profileExistsByName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 0
    .param p1, "group"    # Landroid/app/NotificationGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public removeProfile(Lcyanogenmod/app/Profile;)Z
    .locals 1
    .param p1, "profile"    # Lcyanogenmod/app/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public resetAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public setActiveProfile(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p1, "profileParcelUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setActiveProfileByName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 0
    .param p1, "group"    # Landroid/app/NotificationGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public updateProfile(Lcyanogenmod/app/Profile;)V
    .locals 0
    .param p1, "profile"    # Lcyanogenmod/app/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method
