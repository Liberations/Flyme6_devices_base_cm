.class public Landroid/content/pm/FlymePackageManager;
.super Ljava/lang/Object;
.source "FlymePackageManager.java"


# static fields
.field private static volatile mFpm:Landroid/content/pm/FlymePackageManager;

.field private static mService:Landroid/content/pm/IFlymePackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "flyme_packagemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IFlymePackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IFlymePackageManager;

    move-result-object v1

    sput-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-nez v0, :cond_3

    const-class v1, Landroid/content/pm/FlymePackageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/pm/FlymePackageManager;

    invoke-direct {v0, p0}, Landroid/content/pm/FlymePackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    :cond_1
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    :cond_3
    sget-object v0, Landroid/content/pm/FlymePackageManager;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public backupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, "sB":Ljava/lang/StringBuffer;
    const-string v1, "/data/media/"

    .local v1, "locBegin":Ljava/lang/String;
    const-string v4, "/storage/emulated/"

    .local v4, "locTmp":Ljava/lang/String;
    const-string v3, "/storage/"

    .local v3, "locSdcard1":Ljava/lang/String;
    const-string v6, "/data/media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    const-string v6, "/storage/emulated/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "/storage/emulated/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "locEnd":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    sget-object v6, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    return v6

    .end local v2    # "locEnd":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    const-string v6, "/storage/emulated/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "/storage/emulated/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "locEnd":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_1
    sget-object v6, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p2}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    return v6

    .end local v2    # "locEnd":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    const-string v6, "/storage/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_2
    sget-object v6, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v6, p1, p2}, Landroid/content/pm/IFlymePackageManager;->backupData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    return v6

    :catch_0
    move-exception v0

    :cond_2
    :goto_0
    const/4 v6, 0x0

    return v6

    .restart local v2    # "locEnd":Ljava/lang/String;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public changeInterceptPackage(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->changeInterceptPackage(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public changeMayForbitPackage(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->changeMayForbitPackage(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getInterceptPackage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getInterceptPackage()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInternalAppList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getInternalAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMayForbitPackage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getMayForbitPackage()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageActivateState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->getPackageActivateState(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProtectionState()Z
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->getProtectionState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public resetVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->resetVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setInterceptPackage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->setInterceptPackage(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setKeyGuardPackage(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "intercept"    # Z
    .param p3, "level"    # I

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IFlymePackageManager;->setKeyGuardPackage(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setMayForbitPackage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->setMayForbitPackage(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setProtectionState(ZLandroid/os/Binder;)V
    .locals 2
    .param p1, "state"    # Z
    .param p2, "binder"    # Landroid/os/Binder;

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IFlymePackageManager;->setProtectionState(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public syncPackageState()V
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1}, Landroid/content/pm/IFlymePackageManager;->syncPackageState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updatePermissions(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/pm/FlymePackageManager;->mService:Landroid/content/pm/IFlymePackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IFlymePackageManager;->updatePermissions(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
