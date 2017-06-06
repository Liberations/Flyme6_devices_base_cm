.class public Lcom/android/server/job/controllers/AppIdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "AppIdleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AppIdleController"

.field private static volatile sController:Lcom/android/server/job/controllers/AppIdleController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field mAppIdleParoleOn:Z

.field final mTrackedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/AppIdleController;->sCreationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 3
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;-><init>(Lcom/android/server/job/controllers/AppIdleController;Lcom/android/server/job/controllers/AppIdleController$AppIdleStateChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;
    .locals 3
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    sget-object v1, Lcom/android/server/job/controllers/AppIdleController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/job/controllers/AppIdleController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/AppIdleController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;

    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/AppIdleController;->sController:Lcom/android/server/job/controllers/AppIdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v2, "AppIdle"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parole On: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "task$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .local v0, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":idle="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "task":Lcom/android/server/job/controllers/JobStatus;
    .end local v1    # "task$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "task":Lcom/android/server/job/controllers/JobStatus;
    .restart local v1    # "task$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .end local v0    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method

.method public maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    iget-object v3, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget v4, p1, Lcom/android/server/job/controllers/JobStatus;->uId:I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v0

    :goto_0
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    const/4 v0, 0x0

    .local v0, "appIdle":Z
    goto :goto_0

    .end local v0    # "appIdle":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    iget-object v1, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setAppIdleParoleOn(Z)V
    .locals 9
    .param p1, "isAppIdleParoleOn"    # Z

    .prologue
    const/4 v1, 0x0

    .local v1, "changed":Z
    iget-object v6, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, p1, :cond_0

    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    iget-object v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "task$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .local v3, "task":Lcom/android/server/job/controllers/JobStatus;
    iget-object v5, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mAppIdleParoleOn:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget v7, v3, Lcom/android/server/job/controllers/JobStatus;->uId:I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v8

    invoke-virtual {v5, v2, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v0

    :goto_1
    iget-object v5, v3, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-ne v5, v0, :cond_1

    iget-object v7, v3, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, "appIdle":Z
    goto :goto_1

    .end local v0    # "appIdle":Z
    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "task":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    monitor-exit v6

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/server/job/controllers/AppIdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_5
    return-void

    .end local v4    # "task$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
