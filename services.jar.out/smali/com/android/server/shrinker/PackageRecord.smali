.class Lcom/android/server/shrinker/PackageRecord;
.super Ljava/lang/Object;
.source "PackageRecord.java"


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field isForeground:Z

.field lastActiveTime:J

.field mainProc:Lcom/android/server/shrinker/ProcessRecord;

.field procs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field recent:Z

.field showUI:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/shrinker/PackageRecord;->lastActiveTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public find(I)Lcom/android/server/shrinker/ProcessRecord;
    .locals 3
    .param p1, "pid"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/ProcessRecord;

    .local v0, "r":Lcom/android/server/shrinker/ProcessRecord;
    iget v2, v0, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    if-ne v2, p1, :cond_0

    return-object v0

    .end local v0    # "r":Lcom/android/server/shrinker/ProcessRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/shrinker/PackageRecord;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    iget v1, v1, Lcom/android/server/shrinker/ProcessRecord;->pid:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public put(Ljava/lang/String;I)Lcom/android/server/shrinker/ProcessRecord;
    .locals 2
    .param p1, "process"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    invoke-virtual {p0, p2}, Lcom/android/server/shrinker/PackageRecord;->find(I)Lcom/android/server/shrinker/ProcessRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/shrinker/ProcessRecord;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/shrinker/ProcessRecord;

    .end local v0    # "r":Lcom/android/server/shrinker/ProcessRecord;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/shrinker/ProcessRecord;-><init>(Lcom/android/server/shrinker/PackageRecord;Ljava/lang/String;I)V

    .restart local v0    # "r":Lcom/android/server/shrinker/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/android/server/shrinker/PackageRecord;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    :cond_0
    return-object v0
.end method

.method public remove(I)Lcom/android/server/shrinker/ProcessRecord;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/shrinker/PackageRecord;->indexOf(I)I

    move-result v0

    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "r":Lcom/android/server/shrinker/ProcessRecord;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/shrinker/ProcessRecord;
    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    .local v1, "r":Lcom/android/server/shrinker/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/shrinker/PackageRecord;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    if-ne v1, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/shrinker/ProcessRecord;->parent:Lcom/android/server/shrinker/PackageRecord;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/shrinker/PackageRecord;->showUI:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/shrinker/PackageRecord;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    .end local v1    # "r":Lcom/android/server/shrinker/ProcessRecord;
    :cond_0
    return-object v1
.end method

.method public set(Lcom/android/server/shrinker/PackageRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/shrinker/PackageRecord;

    .prologue
    iget-object v0, p1, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/shrinker/PackageRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, p1, Lcom/android/server/shrinker/PackageRecord;->isForeground:Z

    iput-boolean v0, p0, Lcom/android/server/shrinker/PackageRecord;->isForeground:Z

    iget-boolean v0, p1, Lcom/android/server/shrinker/PackageRecord;->showUI:Z

    iput-boolean v0, p0, Lcom/android/server/shrinker/PackageRecord;->showUI:Z

    iget-wide v0, p1, Lcom/android/server/shrinker/PackageRecord;->lastActiveTime:J

    iput-wide v0, p0, Lcom/android/server/shrinker/PackageRecord;->lastActiveTime:J

    iget-object v0, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p1, Lcom/android/server/shrinker/PackageRecord;->recent:Z

    iput-boolean v0, p0, Lcom/android/server/shrinker/PackageRecord;->recent:Z

    iget-object v0, p1, Lcom/android/server/shrinker/PackageRecord;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    iput-object v0, p0, Lcom/android/server/shrinker/PackageRecord;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toExt()Lcom/android/server/shrinker/PackageRecordExt;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "r":Lcom/android/server/shrinker/PackageRecordExt;
    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/shrinker/PackageRecord;->procs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/shrinker/ProcessRecord;

    iget-object v0, v1, Lcom/android/server/shrinker/ProcessRecord;->syncParent:Lcom/android/server/shrinker/PackageRecordExt;

    .local v0, "r":Lcom/android/server/shrinker/PackageRecordExt;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/shrinker/PackageRecordExt;->set(Lcom/android/server/shrinker/PackageRecord;)V

    .end local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/shrinker/PackageRecordExt;

    invoke-direct {v0, p0}, Lcom/android/server/shrinker/PackageRecordExt;-><init>(Lcom/android/server/shrinker/PackageRecord;)V

    :cond_1
    return-object v0
.end method
