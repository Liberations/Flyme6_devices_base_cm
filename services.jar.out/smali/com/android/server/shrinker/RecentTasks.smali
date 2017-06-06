.class Lcom/android/server/shrinker/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# instance fields
.field final mBgTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mFgTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/RecentTasks;->mFgTaskList:Ljava/util/ArrayList;

    return-void
.end method

.method private addBgTask(Lcom/android/server/shrinker/PackageRecord;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->findBgTask(Lcom/android/server/shrinker/PackageRecord;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/PackageRecord;

    .local v1, "r":Lcom/android/server/shrinker/PackageRecord;
    iput-boolean v4, v1, Lcom/android/server/shrinker/PackageRecord;->recent:Z

    .end local v1    # "r":Lcom/android/server/shrinker/PackageRecord;
    :cond_2
    return-void
.end method

.method private addFgTask(Lcom/android/server/shrinker/PackageRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->findFgTask(Lcom/android/server/shrinker/PackageRecord;)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/shrinker/RecentTasks;->mFgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private findBgTask(Lcom/android/server/shrinker/PackageRecord;)I
    .locals 4
    .param p1, "task"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    iget-object v2, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/PackageRecord;

    iget-object v2, v2, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3}, Lcom/android/server/shrinker/Utils;->isEqual(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private findFgTask(Lcom/android/server/shrinker/PackageRecord;)I
    .locals 4
    .param p1, "task"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    iget-object v2, p0, Lcom/android/server/shrinker/RecentTasks;->mFgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/shrinker/RecentTasks;->mFgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/PackageRecord;

    iget-object v2, v2, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3}, Lcom/android/server/shrinker/Utils;->isEqual(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private removeBgTask(Lcom/android/server/shrinker/PackageRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->findBgTask(Lcom/android/server/shrinker/PackageRecord;)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private removeFgTask(Lcom/android/server/shrinker/PackageRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->findFgTask(Lcom/android/server/shrinker/PackageRecord;)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/shrinker/RecentTasks;->mFgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public moveToBackground(Lcom/android/server/shrinker/PackageRecord;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->removeFgTask(Lcom/android/server/shrinker/PackageRecord;)V

    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->addBgTask(Lcom/android/server/shrinker/PackageRecord;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/shrinker/PackageRecord;->isForeground:Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/shrinker/PackageRecord;->recent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public moveToForeground(Lcom/android/server/shrinker/PackageRecord;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->removeBgTask(Lcom/android/server/shrinker/PackageRecord;)V

    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->addFgTask(Lcom/android/server/shrinker/PackageRecord;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/shrinker/PackageRecord;->isForeground:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/shrinker/PackageRecord;->recent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeTask(Lcom/android/server/shrinker/PackageRecord;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->removeBgTask(Lcom/android/server/shrinker/PackageRecord;)V

    invoke-direct {p0, p1}, Lcom/android/server/shrinker/RecentTasks;->removeFgTask(Lcom/android/server/shrinker/PackageRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "currentTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/shrinker/RecentTasks;->mFgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/shrinker/RecentTasks;->mFgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    const-string v6, "Foreground :\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    iget-object v6, p0, Lcom/android/server/shrinker/RecentTasks;->mFgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/shrinker/PackageRecord;

    .local v5, "task":Lcom/android/server/shrinker/PackageRecord;
    iget-object v6, v5, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " id:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/am/Ams_Utils;->getCloneId(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " time:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/android/server/shrinker/PackageRecord;->lastActiveTime:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v5    # "task":Lcom/android/server/shrinker/PackageRecord;
    :cond_0
    iget-object v6, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "count":I
    const-string v6, "Background :\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_1

    iget-object v6, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/shrinker/PackageRecord;

    .restart local v5    # "task":Lcom/android/server/shrinker/PackageRecord;
    iget-object v6, v5, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " id:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/am/Ams_Utils;->getCloneId(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " time:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/android/server/shrinker/PackageRecord;->lastActiveTime:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v5    # "task":Lcom/android/server/shrinker/PackageRecord;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    monitor-exit p0

    return-object v6

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "currentTime":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public updateRecent()V
    .locals 10

    .prologue
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, "r":Lcom/android/server/shrinker/PackageRecord;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, "time":J
    const/4 v2, 0x0

    .end local v3    # "r":Lcom/android/server/shrinker/PackageRecord;
    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/shrinker/RecentTasks;->mBgTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/shrinker/PackageRecord;

    move-object v3, v0

    .local v3, "r":Lcom/android/server/shrinker/PackageRecord;
    iget-wide v6, v3, Lcom/android/server/shrinker/PackageRecord;->lastActiveTime:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/shrinker/PackageRecord;->recent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "r":Lcom/android/server/shrinker/PackageRecord;
    :cond_1
    monitor-exit p0

    return-void

    .end local v2    # "i":I
    .end local v4    # "time":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
