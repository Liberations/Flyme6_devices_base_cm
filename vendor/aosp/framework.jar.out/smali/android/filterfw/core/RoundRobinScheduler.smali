.class public Landroid/filterfw/core/RoundRobinScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "RoundRobinScheduler.java"


# instance fields
.field private mLastPos:I


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 1
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    .prologue
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .locals 9

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/filterfw/core/RoundRobinScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v0

    .local v0, "all_filters":Ljava/util/Set;, "Ljava/util/Set<Landroid/filterfw/core/Filter;>;"
    iget v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    if-lt v6, v7, :cond_0

    const/4 v6, -0x1

    iput v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    :cond_0
    const/4 v5, 0x0

    .local v5, "pos":I
    const/4 v3, 0x0

    .local v3, "first":Landroid/filterfw/core/Filter;
    const/4 v4, -0x1

    .local v4, "firstNdx":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "first":Landroid/filterfw/core/Filter;
    .local v2, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .local v1, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->canProcess()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    if-gt v5, v6, :cond_2

    if-nez v3, :cond_1

    move-object v3, v1

    .local v3, "first":Landroid/filterfw/core/Filter;
    move v4, v5

    .end local v3    # "first":Landroid/filterfw/core/Filter;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iput v5, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    return-object v1

    .end local v1    # "filter":Landroid/filterfw/core/Filter;
    :cond_3
    if-eqz v3, :cond_4

    iput v4, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    return-object v3

    :cond_4
    return-object v8
.end method
