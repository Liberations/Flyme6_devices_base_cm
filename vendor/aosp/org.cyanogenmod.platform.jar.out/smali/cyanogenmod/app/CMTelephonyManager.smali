.class public Lcyanogenmod/app/CMTelephonyManager;
.super Ljava/lang/Object;
.source "CMTelephonyManager.java"


# static fields
.field public static final ASK_FOR_SUBSCRIPTION_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CMTelephonyManager"

.field private static localLOGD:Z

.field private static sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

.field private static sService:Lcyanogenmod/app/ICMTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "CMTelephonyManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0}, Lcyanogenmod/app/CMTelephonyManager;->getService()Lcyanogenmod/app/ICMTelephonyManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "org.cyanogenmod.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v1, :cond_0

    const-string v1, "CMTelephonyManager"

    const-string v2, "Unable to get CMTelephonyManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcyanogenmod/app/CMTelephonyManager;->sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/app/CMTelephonyManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/CMTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/CMTelephonyManager;->sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

    :cond_0
    sget-object v0, Lcyanogenmod/app/CMTelephonyManager;->sCMTelephonyManagerInstance:Lcyanogenmod/app/CMTelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getService()Lcyanogenmod/app/ICMTelephonyManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    return-object v1

    :cond_0
    const-string v1, "cmtelephonymanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcyanogenmod/app/ICMTelephonyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICMTelephonyManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    sget-object v1, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    return-object v1

    :cond_1
    return-object v2
.end method

.method public getSubInformation()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_0

    const-string v3, "CMTelephonyManager"

    const-string v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting the SIMs information"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3}, Lcyanogenmod/app/ICMTelephonyManager;->getSubInformation()Ljava/util/List;

    move-result-object v2

    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_3

    const-string v3, "CMTelephonyManager"

    const-string v4, "no subscription list was returned from the service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    :goto_0
    return-object v2

    .restart local v2    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "CMTelephonyManager"

    const-string v4, "the subscription list is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CMTelephonyManager"

    const-string v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDataConnectionEnabled()Z
    .locals 6

    .prologue
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_0

    const-string v3, "CMTelephonyManager"

    const-string v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting if the network data connection is enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "dataConnectionEnabled":Z
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3}, Lcyanogenmod/app/ICMTelephonyManager;->isDataConnectionEnabled()Z

    move-result v0

    .local v0, "dataConnectionEnabled":Z
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting if the network data connection is enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dataConnectionEnabled":Z
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CMTelephonyManager"

    const-string v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDataConnectionSelectedOnSub(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_0

    const-string v3, "CMTelephonyManager"

    const-string v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting if the data connection is enabled for SIM for subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "dataConnectionActiveOnSim":Z
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3, p1}, Lcyanogenmod/app/ICMTelephonyManager;->isDataConnectionSelectedOnSub(I)Z

    move-result v0

    .local v0, "dataConnectionActiveOnSim":Z
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting if the data connection is enabled for SIM with subscription "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dataConnectionActiveOnSim":Z
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CMTelephonyManager"

    const-string v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSubActive(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v3, :cond_0

    const-string v3, "CMTelephonyManager"

    const-string v4, "not connected to CMTelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting the state of the SIM with subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "simActive":Z
    :try_start_0
    sget-object v3, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v3, p1}, Lcyanogenmod/app/ICMTelephonyManager;->isSubActive(I)Z

    move-result v2

    .local v2, "simActive":Z
    sget-boolean v3, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "pkg":Ljava/lang/String;
    const-string v3, "CMTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getting the SIM state with subscription "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as active: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "simActive":Z
    :cond_2
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CMTelephonyManager"

    const-string v4, "warning: no cm telephony manager service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDataConnectionSelectedOnSub(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the network data connection for SIM with subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDataConnectionSelectedOnSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDataConnectionState(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the network data connection enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDataConnectionState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultPhoneSub(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the subscription used for phone calls as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDefaultPhoneSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultSmsSub(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the subscription used for SMS as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1}, Lcyanogenmod/app/ICMTelephonyManager;->setDefaultSmsSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSubState(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "state"    # Z

    .prologue
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "CMTelephonyManager"

    const-string v3, "not connected to CMTelephonyManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcyanogenmod/app/CMTelephonyManager;->localLOGD:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcyanogenmod/app/CMTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "CMTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting the state of the SIM with subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v2, Lcyanogenmod/app/CMTelephonyManager;->sService:Lcyanogenmod/app/ICMTelephonyManager;

    invoke-interface {v2, p1, p2}, Lcyanogenmod/app/ICMTelephonyManager;->setSubState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMTelephonyManager"

    const-string v3, "warning: no cm telephony manager service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
