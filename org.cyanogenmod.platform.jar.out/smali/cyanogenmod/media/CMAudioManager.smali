.class public final Lcyanogenmod/media/CMAudioManager;
.super Ljava/lang/Object;
.source "CMAudioManager.java"


# static fields
.field public static final ACTION_AUDIO_SESSIONS_CHANGED:Ljava/lang/String; = "cyanogenmod.intent.action.ACTION_AUDIO_SESSIONS_CHANGED"

.field public static final EXTRA_SESSION_ADDED:Ljava/lang/String; = "added"

.field public static final EXTRA_SESSION_INFO:Ljava/lang/String; = "session_info"

.field private static final TAG:Ljava/lang/String; = "CMAudioManager"

.field private static sInstance:Lcyanogenmod/media/CMAudioManager;

.field private static sService:Lcyanogenmod/media/ICMAudioService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    iput-object v0, p0, Lcyanogenmod/media/CMAudioManager;->mContext:Landroid/content/Context;

    :goto_0
    invoke-static {}, Lcyanogenmod/media/CMAudioManager;->getService()Lcyanogenmod/media/ICMAudioService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/media/CMAudioManager;->sService:Lcyanogenmod/media/ICMAudioService;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "org.cyanogenmod.audio"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcyanogenmod/media/CMAudioManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-void

    :cond_0
    iput-object p1, p0, Lcyanogenmod/media/CMAudioManager;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_1
    const-string v1, "CMAudioManager"

    const-string v2, "Unable to get CMAudioService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkService()Z
    .locals 2

    .prologue
    sget-object v0, Lcyanogenmod/media/CMAudioManager;->sService:Lcyanogenmod/media/ICMAudioService;

    if-nez v0, :cond_0

    const-string v0, "CMAudioManager"

    const-string v1, "not connected to CMAudioService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcyanogenmod/media/CMAudioManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcyanogenmod/media/CMAudioManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcyanogenmod/media/CMAudioManager;->sInstance:Lcyanogenmod/media/CMAudioManager;

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/media/CMAudioManager;

    invoke-direct {v0, p0}, Lcyanogenmod/media/CMAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/media/CMAudioManager;->sInstance:Lcyanogenmod/media/CMAudioManager;

    :cond_0
    sget-object v0, Lcyanogenmod/media/CMAudioManager;->sInstance:Lcyanogenmod/media/CMAudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getService()Lcyanogenmod/media/ICMAudioService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v1, Lcyanogenmod/media/CMAudioManager;->sService:Lcyanogenmod/media/ICMAudioService;

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/media/CMAudioManager;->sService:Lcyanogenmod/media/ICMAudioService;

    return-object v1

    :cond_0
    const-string v1, "cmaudio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcyanogenmod/media/ICMAudioService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/media/ICMAudioService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/media/CMAudioManager;->sService:Lcyanogenmod/media/ICMAudioService;

    sget-object v1, Lcyanogenmod/media/CMAudioManager;->sService:Lcyanogenmod/media/ICMAudioService;

    return-object v1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public listAudioSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcyanogenmod/media/CMAudioManager;->listAudioSessions(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listAudioSessions(I)Ljava/util/List;
    .locals 4
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcyanogenmod/media/CMAudioManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcyanogenmod/media/CMAudioManager;->sService:Lcyanogenmod/media/ICMAudioService;

    invoke-interface {v2, p1}, Lcyanogenmod/media/ICMAudioService;->listAudioSessions(I)Ljava/util/List;

    move-result-object v1

    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/media/AudioSessionInfo;>;"
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/media/AudioSessionInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CMAudioManager"

    const-string v3, "Failed to list audio sessions!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
