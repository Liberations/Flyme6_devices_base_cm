.class Lcom/android/server/shrinker/RootScanner;
.super Lcom/android/server/shrinker/Scanner;
.source "RootScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/shrinker/RootScanner$ScanHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Shrinker"


# instance fields
.field private mHandler:Lcom/android/server/shrinker/RootScanner$ScanHandler;

.field private mHome:Ljava/lang/String;

.field private mLogsWriter:Lcom/android/server/shrinker/LogsWriter;

.field private final mRestartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScannerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/Scanner;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/server/shrinker/Scanner;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/shrinker/RootScanner;->mRestartList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/shrinker/RootScanner;->mScannerList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/shrinker/LogsWriter;

    invoke-direct {v1}, Lcom/android/server/shrinker/LogsWriter;-><init>()V

    iput-object v1, p0, Lcom/android/server/shrinker/RootScanner;->mLogsWriter:Lcom/android/server/shrinker/LogsWriter;

    iget-object v1, p0, Lcom/android/server/shrinker/RootScanner;->mScannerList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/shrinker/NormalScanner;

    invoke-direct {v2, p0}, Lcom/android/server/shrinker/NormalScanner;-><init>(Lcom/android/server/shrinker/RootScanner;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/shrinker/RootScanner;->mScannerList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/shrinker/LowMemoryScanner;

    invoke-direct {v2, p0}, Lcom/android/server/shrinker/LowMemoryScanner;-><init>(Lcom/android/server/shrinker/RootScanner;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Scanner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/shrinker/RootScanner$ScanHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/shrinker/RootScanner$ScanHandler;-><init>(Lcom/android/server/shrinker/RootScanner;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/shrinker/RootScanner;->mHandler:Lcom/android/server/shrinker/RootScanner$ScanHandler;

    return-void
.end method

.method private scanNext(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/shrinker/RootScanner;->mHandler:Lcom/android/server/shrinker/RootScanner$ScanHandler;

    int-to-long v2, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/shrinker/RootScanner$ScanHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public addRestartProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/shrinker/RootScanner;->mRestartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLogsWriter()Lcom/android/server/shrinker/LogsWriter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/shrinker/RootScanner;->mLogsWriter:Lcom/android/server/shrinker/LogsWriter;

    return-object v0
.end method

.method public getRunningAppList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/shrinker/Shrinker;->getRunningAppList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRunningAppList(Z)Ljava/util/ArrayList;
    .locals 1
    .param p1, "optimize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/shrinker/Shrinker;->getRunningAppList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isMonkey()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public isSleeping()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/am/Ams_Interface;->AMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    return v0
.end method

.method public isStatusChanged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/shrinker/RootScanner;->mStatusChanged:Z

    return v0
.end method

.method public makeActive()V
    .locals 7

    .prologue
    const-string v2, "Shrinker"

    const-string v3, "start scanning..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v1

    .local v1, "shrinker":Lcom/android/server/shrinker/Shrinker;
    invoke-virtual {v1}, Lcom/android/server/shrinker/Shrinker;->getHome()Ljava/lang/String;

    move-result-object v0

    .local v0, "home":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string v3, "AppEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v5, "home"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->collect(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v2, 0x7530

    invoke-direct {p0, v2}, Lcom/android/server/shrinker/RootScanner;->scanNext(I)V

    return-void
.end method

.method public onStatusChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/shrinker/RootScanner;->mStatusChanged:Z

    return-void
.end method

.method public prepareList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v1

    .local v1, "shrinker":Lcom/android/server/shrinker/Shrinker;
    invoke-virtual {v1}, Lcom/android/server/shrinker/Shrinker;->getHome()Ljava/lang/String;

    move-result-object v0

    .local v0, "home":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/shrinker/RootScanner;->mHome:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/shrinker/RootScanner;->mHome:Ljava/lang/String;

    const/16 v3, -0x801

    invoke-static {v6, v2, v6, v3}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/lang/String;II)V

    const/16 v2, 0x800

    const/4 v3, -0x1

    invoke-static {v6, v0, v2, v3}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/shrinker/RootScanner;->mHome:Ljava/lang/String;

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string v3, "AppEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/shrinker/RootScanner;->mHome:Ljava/lang/String;

    aput-object v5, v4, v6

    const-string v5, "home"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->collect(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/shrinker/Shrinker;->updateRecent()V

    return-void
.end method

.method public resetStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/shrinker/RootScanner;->mStatusChanged:Z

    return-void
.end method

.method public scan()V
    .locals 6

    .prologue
    const/16 v5, 0x2710

    :try_start_0
    const-string v3, "alphame_server"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/shrinker/PackageStateInfo;->initializeIfNeeded()V

    const-string v3, "persist.sys.shrink_disable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/shrinker/RootScanner;->prepareList()V

    iget-object v3, p0, Lcom/android/server/shrinker/RootScanner;->mScannerList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "scanner$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/Scanner;

    .local v1, "scanner":Lcom/android/server/shrinker/Scanner;
    invoke-virtual {v1}, Lcom/android/server/shrinker/Scanner;->scan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "scanner":Lcom/android/server/shrinker/Scanner;
    .end local v2    # "scanner$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Shrinker"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/server/shrinker/RootScanner;->mLogsWriter:Lcom/android/server/shrinker/LogsWriter;

    invoke-virtual {v3}, Lcom/android/server/shrinker/LogsWriter;->commit()V

    invoke-direct {p0, v5}, Lcom/android/server/shrinker/RootScanner;->scanNext(I)V

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .restart local v2    # "scanner$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/shrinker/RootScanner;->resetStatus()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "scanner$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/server/shrinker/RootScanner;->mLogsWriter:Lcom/android/server/shrinker/LogsWriter;

    invoke-virtual {v3}, Lcom/android/server/shrinker/LogsWriter;->commit()V

    invoke-direct {p0, v5}, Lcom/android/server/shrinker/RootScanner;->scanNext(I)V

    goto :goto_1

    :cond_2
    :try_start_3
    const-string v3, "Shrinker"

    const-string v4, "Can\'t find alphame_server"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/shrinker/RootScanner;->mLogsWriter:Lcom/android/server/shrinker/LogsWriter;

    invoke-virtual {v4}, Lcom/android/server/shrinker/LogsWriter;->commit()V

    invoke-direct {p0, v5}, Lcom/android/server/shrinker/RootScanner;->scanNext(I)V

    throw v3
.end method
