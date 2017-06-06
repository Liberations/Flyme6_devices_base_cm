.class public Lcyanogenmod/app/LiveLockScreenManager;
.super Ljava/lang/Object;
.source "LiveLockScreenManager.java"


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "cyanogenmod.app.LiveLockScreenManagerService"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcyanogenmod/app/LiveLockScreenManager;

.field private static sService:Lcyanogenmod/app/ILiveLockScreenManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcyanogenmod/app/LiveLockScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyanogenmod/app/LiveLockScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcyanogenmod/app/LiveLockScreenManager;->getService()Lcyanogenmod/app/ILiveLockScreenManager;

    move-result-object v0

    sput-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "org.cyanogenmod.livelockscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    if-nez v0, :cond_0

    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get LiveLockScreenManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/LiveLockScreenManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sInstance:Lcyanogenmod/app/LiveLockScreenManager;

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/app/LiveLockScreenManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/LiveLockScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sInstance:Lcyanogenmod/app/LiveLockScreenManager;

    :cond_0
    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sInstance:Lcyanogenmod/app/LiveLockScreenManager;

    return-object v0
.end method

.method private getService()Lcyanogenmod/app/ILiveLockScreenManager;
    .locals 2

    .prologue
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    if-nez v1, :cond_0

    const-string v1, "cmlivelockscreen"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcyanogenmod/app/ILiveLockScreenManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ILiveLockScreenManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    return-object v1
.end method

.method private logServiceException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to access LiveLockScreenServiceBroker"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    iget-object v2, p0, Lcyanogenmod/app/LiveLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v1, p1, v3}, Lcyanogenmod/app/ILiveLockScreenManager;->cancelLiveLockScreen(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCurrentLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "lls":Lcyanogenmod/app/LiveLockScreenInfo;
    :try_start_0
    sget-object v2, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-interface {v2}, Lcyanogenmod/app/ILiveLockScreenManager;->getCurrentLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v1    # "lls":Lcyanogenmod/app/LiveLockScreenInfo;
    :goto_0
    return-object v1

    .restart local v1    # "lls":Lcyanogenmod/app/LiveLockScreenInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDefaultLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-interface {v1}, Lcyanogenmod/app/ILiveLockScreenManager;->getDefaultLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getLiveLockScreenEnabled()Z
    .locals 2

    .prologue
    :try_start_0
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-interface {v1}, Lcyanogenmod/app/ILiveLockScreenManager;->getLiveLockScreenEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public setDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V
    .locals 2
    .param p1, "llsInfo"    # Lcyanogenmod/app/LiveLockScreenInfo;

    .prologue
    :try_start_0
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-interface {v1, p1}, Lcyanogenmod/app/ILiveLockScreenManager;->setDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setLiveLockScreenEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    :try_start_0
    sget-object v1, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-interface {v1, p1}, Lcyanogenmod/app/ILiveLockScreenManager;->setLiveLockScreenEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public show(ILcyanogenmod/app/LiveLockScreenInfo;)Z
    .locals 8
    .param p1, "id"    # I
    .param p2, "llsInfo"    # Lcyanogenmod/app/LiveLockScreenInfo;

    .prologue
    const/4 v0, 0x1

    new-array v4, v0, [I

    .local v4, "idOut":[I
    iget-object v0, p0, Lcyanogenmod/app/LiveLockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "success":Z
    :try_start_0
    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->sService:Lcyanogenmod/app/ILiveLockScreenManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcyanogenmod/app/ILiveLockScreenManager;->enqueueLiveLockScreen(Ljava/lang/String;ILcyanogenmod/app/LiveLockScreenInfo;[II)V

    const/4 v0, 0x0

    aget v0, v4, v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcyanogenmod/app/LiveLockScreenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show: id corrupted: sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v6}, Lcyanogenmod/app/LiveLockScreenManager;->logServiceException(Ljava/lang/Exception;)V

    const/4 v7, 0x0

    goto :goto_0
.end method
