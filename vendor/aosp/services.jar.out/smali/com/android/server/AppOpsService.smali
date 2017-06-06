.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$UidState;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$AskRunnable;,
        Lcom/android/server/AppOpsService$1;,
        Lcom/android/server/AppOpsService$2;,
        Lcom/android/server/AppOpsService$3;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_POLICY_FILE:Ljava/lang/String; = "/system/etc/appops_policy.xml"

.field private static final PRIVACY_GUARD_OP_STATES:[I

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mLooper:Landroid/os/Looper;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field mPolicy:Lcom/android/server/AppOpsPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field final mStrictEnable:Z

.field private mSuSessionChangedRunner:Ljava/lang/Runnable;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/AppOpsService;I)V
    .locals 0
    .param p1, "op"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/16 v4, 0xe

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/AppOpsService;->PRIVACY_GUARD_OP_STATES:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 1
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/AppOpsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mSuSessionChangedRunner:Ljava/lang/Runnable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/AppOpsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local p3, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p3, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "duplicate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .local v6, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v6, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    new-instance v7, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "reportCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .local v4, "report":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_5

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v3    # "j":I
    .end local v4    # "report":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "reportCount":I
    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_6
    return-object p0
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    new-instance v6, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-direct {v6}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;-><init>()V

    .local v6, "request":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/AppOpsService$AskRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService$AskRunnable;-><init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v6
.end method

.method private broadcastOpIfNeeded(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mSuSessionChangedRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_0
    const/4 v2, 0x0

    return v2

    .restart local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_1
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 17
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v16, 0x0

    .local v16, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_0

    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-ge v15, v3, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Op;

    .local v2, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v3, Landroid/app/AppOpsManager$OpEntry;

    iget v4, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v6, v2, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v10, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v11, v2, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v12, v2, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    iget v14, v2, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    invoke-direct/range {v3 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .end local v2    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v15    # "j":I
    .local v16, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_0
    const/4 v15, 0x0

    .end local v16    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v15    # "j":I
    :goto_1
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v15, v3, :cond_3

    aget v3, p2, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsService$Op;

    .restart local v2    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_2

    if-nez v16, :cond_1

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v3, Landroid/app/AppOpsManager$OpEntry;

    iget v4, v2, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v6, v2, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v10, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v11, v2, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v12, v2, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    iget v14, v2, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    invoke-direct/range {v3 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v2    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_3
    return-object v16
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-h] [CMD]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  write-settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  read-settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultMode(IILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->isStrict(IILjava/lang/String;)Z

    move-result v2

    invoke-static {p1, v2}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v0

    .local v0, "mode":I
    invoke-static {p1}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/AppOpsPolicy;->getDefualtMode(ILjava/lang/String;)I

    move-result v1

    .local v1, "policyMode":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move v0, v1

    .end local v1    # "policyMode":I
    :cond_0
    return v0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 4
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_1

    if-nez p3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v0

    .local v0, "mode":I
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v2, v2, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v1}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .end local v0    # "mode":I
    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_2
    return-object v1
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    if-nez p1, :cond_1

    const-string p2, "root"

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_2

    const-string p2, "com.android.shell"

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const-string p2, "android"

    goto :goto_0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    const/4 v11, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v7

    .local v7, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v7, :cond_0

    return-object v11

    :cond_0
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v8, :cond_2

    if-nez p3, :cond_1

    return-object v11

    :cond_1
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    :cond_2
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;

    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v5, :cond_9

    if-nez p3, :cond_3

    return-object v11

    :cond_3
    const/4 v4, 0x0

    .local v4, "isPrivileged":Z
    if-eqz p1, :cond_8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    const/4 v6, -0x1

    .local v6, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v8, p2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_6

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_5

    const/4 v4, 0x1

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    :goto_0
    if-eq v6, p1, :cond_7

    :try_start_1
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad call: specified package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " under uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but it is really "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v11

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    :try_start_2
    const-string v8, "media"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_4

    const/16 v6, 0x3f5

    const/4 v4, 0x0

    goto :goto_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "AppOps"

    const-string v9, "Could not contact PackageManager"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "ident":J
    .end local v6    # "pkgUid":I
    :cond_8
    new-instance v5, Lcom/android/server/AppOpsService$Ops;

    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v5, p2, v7, v4}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .restart local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, p2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "isPrivileged":Z
    :cond_9
    return-object v5
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v1    # "packageNames":[Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v2

    :cond_0
    return-object v1

    .restart local v1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .restart local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private isOpRestricted(IILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .local v2, "userHandle":I
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .local v0, "opRestrictions":[Z
    if-eqz v0, :cond_2

    aget-boolean v3, v0, p2

    if-eqz v3, :cond_2

    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return v4

    :cond_0
    monitor-exit p0

    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_1
    return v5

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    return v4
.end method

.method private isStrict(IILjava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .locals 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v6, :cond_0

    const/4 v13, 0x2

    monitor-exit p0

    return v13

    :cond_0
    const/4 v13, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v1, v13}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v5

    .local v5, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v13, 0x1

    monitor-exit p0

    return v13

    :cond_1
    :try_start_2
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    const-string v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Noting op not finished: uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " pkg "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " code "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " time="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v5, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " duration="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v13, 0x0

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    .local v9, "switchCode":I
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v13, :cond_3

    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .local v11, "uidMode":I
    if-eqz v11, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v11

    .end local v11    # "uidMode":I
    :cond_3
    move/from16 v0, p1

    if-eq v9, v0, :cond_4

    const/4 v13, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v13}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v10

    .local v10, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v13, :cond_5

    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v13

    .end local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_4
    move-object v10, v5

    .restart local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_0

    :cond_5
    :try_start_4
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v13, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v14, 0x0

    iput-wide v14, v5, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move/from16 v0, p4

    iput v0, v5, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    iget v13, v5, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x0

    monitor-exit p0

    return v13

    :cond_6
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-ne v13, v14, :cond_7

    const-string v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "noteOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " uid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v13

    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v13}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    .local v4, "isInteractive":Z
    if-eqz v4, :cond_b

    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget-object v13, v13, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x4

    if-ge v13, v14, :cond_a

    iget v13, v5, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    const/4 v14, 0x3

    if-ge v13, v14, :cond_a

    :cond_8
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    if-lez v13, :cond_9

    const/4 v13, 0x0

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    :cond_9
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    .local v7, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    monitor-exit p0

    invoke-virtual {v7}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v8

    .local v8, "result":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V

    return v8

    .end local v7    # "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .end local v8    # "result":I
    :cond_a
    :try_start_7
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    const/16 v14, 0xa

    if-gt v13, v14, :cond_8

    :cond_b
    if-eqz v4, :cond_c

    iget v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->delayedCount:I

    :cond_c
    iget v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v5, Lcom/android/server/AppOpsService$Op;->ignoredCount:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v13, 0x1

    monitor-exit p0

    return v13

    .end local v4    # "isInteractive":Z
    .end local v5    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v9    # "switchCode":I
    .end local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .end local v0    # "switchCode":I
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "switchCode":I
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 10
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_1

    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v6, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1
    return-void
.end method

.method private readPolicy()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/AppOpsPolicy;

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/appops_policy.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsPolicy;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->readPolicy()V

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->debugPoilcy()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    goto :goto_0
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_3

    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_0

    const-string v3, "noteOperartion"

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    :cond_0
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_1

    const-string v3, "startOperation"

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    :cond_1
    const/4 v3, 0x1

    if-ne p4, v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    :cond_2
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput v6, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    iput v6, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    :cond_3
    return-void

    :cond_4
    if-nez p4, :cond_2

    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    :cond_5
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    :cond_6
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget v4, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    :goto_0
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    if-eqz v0, :cond_7

    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .prologue
    if-ltz p1, :cond_0

    const/16 v0, 0x45

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "mode":I
    if-eqz v0, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1

    .end local v0    # "mode":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v2

    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "uidMode":I
    if-eqz v1, :cond_1

    monitor-exit p0

    return v1

    .end local v1    # "uidMode":I
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    monitor-exit p0

    return v3

    :cond_2
    :try_start_3
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 34
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "android.permission.DUMP"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v29

    if-eqz v29, :cond_0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", uid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_6

    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v8, v0, :cond_6

    aget-object v4, p3, v8

    .local v4, "arg":Ljava/lang/String;
    const-string v29, "-h"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const-string v29, "-a"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const-string v29, "write-settings"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .local v26, "token":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->writeState()V

    const-string v29, "Current settings written."

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v29

    :try_start_3
    monitor-exit p0

    throw v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v29

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29

    .end local v26    # "token":J
    :cond_3
    const-string v29, "read-settings"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .restart local v26    # "token":J
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->readState()V

    const-string v29, "Last settings read."

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2
    move-exception v29

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29

    .end local v26    # "token":J
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_5

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x2d

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unknown option: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unknown command: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_6
    monitor-enter p0

    :try_start_5
    const-string v29, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "now":J
    const/4 v11, 0x0

    .local v11, "needSep":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    if-lez v29, :cond_8

    const/4 v11, 0x1

    const-string v29, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_8

    const-string v29, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_7

    const-string v29, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v29, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    if-lez v29, :cond_a

    const/4 v11, 0x1

    const-string v29, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_a

    const-string v29, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_9

    const-string v29, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v29, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    if-lez v29, :cond_b

    const/4 v11, 0x1

    const-string v29, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_b

    const-string v29, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v29, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .end local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    if-lez v29, :cond_d

    const/4 v11, 0x1

    const-string v29, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_d

    const-string v29, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    .local v7, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string v29, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_c

    const-string v29, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_7
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_c

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const-string v29, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v29, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .end local v9    # "j":I
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .end local v7    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v8    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    if-lez v29, :cond_11

    const/16 v22, 0x0

    .local v22, "printedHeader":Z
    const/4 v14, 0x0

    .local v14, "o":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v14, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v16

    .local v16, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .local v24, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_10

    if-nez v22, :cond_e

    const-string v29, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v22, 0x1

    const/4 v11, 0x1

    :cond_e
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v28

    .local v28, "usage":I
    const-string v29, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppOpsService$Restriction;

    .local v23, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string v29, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_f

    const-string v29, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArraySet;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_f

    const-string v29, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .end local v9    # "j":I
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .end local v23    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v28    # "usage":I
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .end local v8    # "i":I
    .end local v14    # "o":I
    .end local v16    # "op":Ljava/lang/String;
    .end local v22    # "printedHeader":Z
    .end local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_11
    if-eqz v11, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$UidState;

    .local v25, "uidState":Lcom/android/server/AppOpsService$UidState;
    const-string v29, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    .local v18, "opModes":Landroid/util/SparseIntArray;
    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v17

    .local v17, "opModeCount":I
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_c
    move/from16 v0, v17

    if-ge v9, v0, :cond_13

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .local v6, "code":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .local v10, "mode":I
    const-string v29, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .end local v6    # "code":I
    .end local v9    # "j":I
    .end local v10    # "mode":I
    .end local v17    # "opModeCount":I
    :cond_13
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    .local v21, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v21, :cond_15

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    :cond_15
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "ops$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_14

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AppOpsService$Ops;

    .local v19, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string v29, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_16

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    const-string v29, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v29, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_17

    const-string v29, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v30, v0

    sub-long v30, v12, v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v29, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_17
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_18

    const-string v29, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v30, v0

    sub-long v30, v12, v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v29, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_18
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    const-string v29, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_19
    :goto_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_d

    :cond_1a
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v29, v0

    if-eqz v29, :cond_19

    const-string v29, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_e

    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v11    # "needSep":Z
    .end local v12    # "now":J
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "opModes":Landroid/util/SparseIntArray;
    .end local v19    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v20    # "ops$iterator":Ljava/util/Iterator;
    .end local v21    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v25    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_3
    move-exception v29

    monitor-exit p0

    throw v29

    .restart local v8    # "i":I
    .restart local v11    # "needSep":Z
    .restart local v12    # "now":J
    :cond_1b
    monitor-exit p0

    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object v0, p1

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V

    return-void
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    :goto_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    :goto_1
    return-void

    :cond_0
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    monitor-exit p0

    return-object v8

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_1

    monitor-exit p0

    return-object v8

    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v5, v5, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v3    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 18
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v7, 0x0

    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .local v12, "uidStateCount":I
    const/4 v2, 0x0

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v13, :cond_0

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .local v4, "packageCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    move-object v8, v7

    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    if-ge v3, v4, :cond_5

    :try_start_1
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_4

    if-nez v8, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    :try_start_2
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v8, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .end local v3    # "j":I
    .end local v4    # "packageCount":I
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    monitor-exit p0

    return-object v7

    .end local v2    # "i":I
    .end local v12    # "uidStateCount":I
    :catchall_0
    move-exception v13

    :goto_5
    monitor-exit p0

    throw v13

    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "packageCount":I
    .restart local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v12    # "uidStateCount":I
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_3
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_4

    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_5
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1
.end method

.method public getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/AppOpsService;->PRIVACY_GUARD_OP_STATES:[I

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget v1, v5, v3

    .local v1, "op":I
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    .local v2, "switchOp":I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .local v0, "mode":I
    if-eqz v0, :cond_0

    if-eq v0, v7, :cond_0

    return v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "mode":I
    .end local v1    # "op":I
    .end local v2    # "switchOp":I
    :cond_1
    return v4
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .local v0, "isShow":Z
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AppOpsPolicy;->isControlAllowed(ILjava/lang/String;)Z

    move-result v0

    .end local v0    # "isShow":Z
    :cond_0
    return v0
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    .local v6, "proxyMode":I
    if-nez v6, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public notifyOperation(IILjava/lang/String;IZ)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "remember"    # Z

    .prologue
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    const/4 v4, 0x0

    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v6

    .local v6, "switchCode":I
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->recordOperationLocked(IILjava/lang/String;I)V

    const/4 v7, 0x1

    invoke-direct {p0, v6, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .local v3, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v3, :cond_2

    iget-object v7, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v7}, Lcom/android/server/PermissionDialogReqQueue;->getDialog()Lcom/android/server/PermissionDialog;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v7, p4}, Lcom/android/server/PermissionDialogReqQueue;->notifyAll(I)V

    iget-object v7, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/PermissionDialogReqQueue;->setDialog(Lcom/android/server/PermissionDialog;)V

    :cond_0
    if-eqz p5, :cond_2

    iget v7, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v7, p4, :cond_2

    iput p4, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-object v7, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v5, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_5

    if-nez v5, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    iget v7, v3, Lcom/android/server/AppOpsService$Op;->op:I

    iget v8, v3, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v9, v3, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v7

    if-ne p4, v7, :cond_1

    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    monitor-exit p0

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    :try_start_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Callback;

    iget-object v7, v7, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v7, v6, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    .end local v3    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v7

    :goto_5
    monitor-exit p0

    throw v7

    .restart local v3    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_3
    return-void

    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_4

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .restart local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_4
    move-object v4, v5

    .end local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    move-object v4, v5

    .end local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_2

    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    move-object v5, v4

    .restart local v5    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .local v0, "changed":Z
    :try_start_1
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->readPolicy()V

    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const-string v4, "n"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v15

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .local v11, "success":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    :cond_1
    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v16, "no start tag found"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v11, :cond_2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v15

    return-void

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No existing app ops "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "; starting empty"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v15

    return-void

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    .restart local v13    # "type":I
    :cond_3
    :try_start_a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .local v8, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_b

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_b

    :cond_5
    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .local v12, "tagName":Ljava/lang/String;
    const-string v14, "pkg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_b
    const-string v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v11, :cond_6

    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_6
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_0

    :catch_3
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_7
    :try_start_e
    const-string v14, "uid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_4
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v11, :cond_8

    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_8
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_9
    :try_start_12
    const-string v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown element under <app-ops>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_6
    move-exception v7

    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_13
    const-string v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-nez v11, :cond_a

    :try_start_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_a
    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_0

    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_b
    const/4 v11, 0x1

    if-nez v11, :cond_c

    :try_start_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :cond_c
    :try_start_17
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_0

    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_9
    move-exception v4

    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_18
    const-string v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-nez v11, :cond_d

    :try_start_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :cond_d
    :try_start_1a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_0

    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_1b
    const-string v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-nez v11, :cond_e

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :cond_e
    :try_start_1d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto/16 :goto_0

    :catch_c
    move-exception v2

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v14

    if-nez v11, :cond_f

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :cond_f
    :try_start_1f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :goto_2
    :try_start_20
    throw v14
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catchall_1
    move-exception v14

    :try_start_21
    monitor-exit p0

    throw v14
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    :catchall_2
    move-exception v14

    monitor-exit v15

    throw v14

    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    :catch_e
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 30
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v27, "n"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .local v25, "uid":I
    const-string v27, "p"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "isPrivilegedString":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "isPrivileged":Z
    if-nez v13, :cond_f

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    .local v18, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v18, :cond_e

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v27

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move/from16 v2, v29

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v27, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v27, v27, 0x8

    if-eqz v27, :cond_d

    const/4 v12, 0x1

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "isPrivileged":Z
    .end local v18    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .local v17, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .local v24, "type":I
    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_13

    const/16 v27, 0x3

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_13

    :cond_2
    const/16 v27, 0x3

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    const/16 v27, 0x4

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    .local v22, "tagName":Ljava/lang/String;
    const-string v27, "op"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    const-string v27, "n"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "code":I
    const-string v27, "ns"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "codeNameStr":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/app/AppOpsManager;->nameToOp(Ljava/lang/String;)I

    move-result v6

    :cond_3
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_1

    const/16 v27, 0x45

    move/from16 v0, v27

    if-ge v6, v0, :cond_1

    new-instance v15, Lcom/android/server/AppOpsService$Op;

    const/16 v27, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-direct {v15, v0, v1, v6, v2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const-string v27, "m"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "mode":Ljava/lang/String;
    if-eqz v14, :cond_10

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    :goto_2
    const-string v27, "t"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "time":Ljava/lang/String;
    if-eqz v23, :cond_4

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    :cond_4
    const-string v27, "r"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_5

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    :cond_5
    const-string v27, "d"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "dur":Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    :cond_6
    const-string v27, "pu"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "proxyUid":Ljava/lang/String;
    if-eqz v20, :cond_7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    :cond_7
    const-string v27, "pp"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "proxyPackageName":Ljava/lang/String;
    if-eqz v19, :cond_8

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    :cond_8
    const-string v27, "ac"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "allowed":Ljava/lang/String;
    if-eqz v4, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    :cond_9
    const-string v27, "ic"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "ignored":Ljava/lang/String;
    if-eqz v11, :cond_a

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    :cond_a
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v26

    .local v26, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    if-nez v27, :cond_b

    new-instance v27, Landroid/util/ArrayMap;

    invoke-direct/range {v27 .. v27}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    :cond_b
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$Ops;

    .local v16, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v16, :cond_c

    new-instance v16, Lcom/android/server/AppOpsService$Ops;

    .end local v16    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .restart local v16    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v27, v0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .end local v4    # "allowed":Ljava/lang/String;
    .end local v6    # "code":I
    .end local v7    # "codeNameStr":Ljava/lang/String;
    .end local v9    # "dur":Ljava/lang/String;
    .end local v11    # "ignored":Ljava/lang/String;
    .end local v14    # "mode":Ljava/lang/String;
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v16    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v17    # "outerDepth":I
    .end local v19    # "proxyPackageName":Ljava/lang/String;
    .end local v20    # "proxyUid":Ljava/lang/String;
    .end local v22    # "tagName":Ljava/lang/String;
    .end local v23    # "time":Ljava/lang/String;
    .end local v24    # "type":I
    .end local v26    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "isPrivileged":Z
    .restart local v18    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_0

    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_e
    return-void

    .end local v18    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    const-string v27, "AppOps"

    const-string v28, "Could not contact PackageManager"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_f
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .local v12, "isPrivileged":Z
    goto/16 :goto_0

    .end local v12    # "isPrivileged":Z
    .restart local v6    # "code":I
    .restart local v7    # "codeNameStr":Ljava/lang/String;
    .restart local v14    # "mode":Ljava/lang/String;
    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v17    # "outerDepth":I
    .restart local v22    # "tagName":Ljava/lang/String;
    .restart local v24    # "type":I
    :cond_10
    const-string v27, "dm"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "sDefualtMode":Ljava/lang/String;
    if-eqz v21, :cond_11

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "defaultMode":I
    :goto_3
    iput v8, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    goto/16 :goto_2

    .end local v8    # "defaultMode":I
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v8

    .restart local v8    # "defaultMode":I
    goto :goto_3

    .end local v6    # "code":I
    .end local v7    # "codeNameStr":Ljava/lang/String;
    .end local v8    # "defaultMode":I
    .end local v14    # "mode":Ljava/lang/String;
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v21    # "sDefualtMode":Ljava/lang/String;
    :cond_12
    const-string v27, "AppOps"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unknown element under <pkg>: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .end local v22    # "tagName":Ljava/lang/String;
    :cond_13
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v11, :cond_4

    if-ne v4, v12, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_4

    :cond_1
    if-eq v4, v12, :cond_0

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, "tagName":Ljava/lang/String;
    const-string v7, "op"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "code":I
    const-string v7, "m"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "mode":I
    invoke-direct {p0, v5, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v6

    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v7, :cond_2

    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    :cond_2
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .end local v0    # "code":I
    .end local v1    # "mode":I
    .end local v6    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <uid-ops>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 31
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, "callingUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const-string v7, "resetAllModes"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/16 v28, -0x1

    .local v28, "reqUid":I
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v4, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v28

    :cond_0
    :goto_0
    const/4 v9, 0x0

    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    monitor-enter p0

    const/4 v11, 0x0

    .local v11, "changed":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v19, v4, -0x1

    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local v19, "i":I
    :goto_1
    if-ltz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/AppOpsService$UidState;

    .local v30, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    .local v22, "opModes":Landroid/util/SparseIntArray;
    if-eqz v22, :cond_4

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v0, v28

    if-eq v4, v0, :cond_1

    const/4 v4, -0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_4

    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v29

    .local v29, "uidOpCount":I
    add-int/lit8 v21, v29, -0x1

    .local v21, "j":I
    :goto_2
    if-ltz v21, :cond_4

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .local v12, "code":I
    invoke-static {v12}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    :cond_2
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    array-length v7, v6

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v23, v6, v5

    .local v23, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v9, v0, v12, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v9, v0, v12, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v23    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    .end local v12    # "code":I
    .end local v21    # "j":I
    .end local v29    # "uidOpCount":I
    :cond_4
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_1

    :cond_6
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_7

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    :cond_7
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    .local v24, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_8
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .local v17, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .restart local v23    # "packageName":Ljava/lang/String;
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$Ops;

    .local v25, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v21, v4, -0x1

    .restart local v21    # "j":I
    :goto_6
    if-ltz v21, :cond_b

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .local v13, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    iget-object v6, v13, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v14

    .local v14, "defaultMode":I
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v4, v14, :cond_a

    iput v14, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v11, 0x1

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v9, v0, v5, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .restart local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v9, v0, v5, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_a
    add-int/lit8 v21, v21, -0x1

    goto :goto_6

    .end local v13    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v14    # "defaultMode":I
    :cond_b
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    if-nez v4, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .end local v17    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v19    # "i":I
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v21    # "j":I
    .end local v22    # "opModes":Landroid/util/SparseIntArray;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v25    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v30    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v19    # "i":I
    .restart local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v22    # "opModes":Landroid/util/SparseIntArray;
    .restart local v24    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v30    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_c
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_4

    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v22    # "opModes":Landroid/util/SparseIntArray;
    .end local v24    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v30    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_d
    if-eqz v11, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    monitor-exit p0

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "ent$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Callback;

    .local v10, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .local v27, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/16 v19, 0x0

    :goto_7
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_f

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .local v26, "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_3
    iget-object v5, v10, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v18    # "ent$iterator":Ljava/util/Iterator;
    .end local v26    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v27    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_10
    return-void

    .restart local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .restart local v18    # "ent$iterator":Ljava/util/Iterator;
    .restart local v26    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v27    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    goto :goto_8

    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "changed":Z
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v18    # "ent$iterator":Ljava/util/Iterator;
    .end local v19    # "i":I
    .end local v26    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v27    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_1
    move-exception v15

    .restart local v15    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public resetCounters()V
    .locals 13

    .prologue
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    monitor-enter p0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$UidState;

    .local v7, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ent$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    invoke-virtual {v6, v4}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v4    # "j":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "ent$iterator":Ljava/util/Iterator;
    .end local v7    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_0

    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_3

    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$Restriction;)V

    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    if-eqz p5, :cond_2

    array-length v0, p5

    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p5, v1

    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_3
    monitor-exit p0

    return-void

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    const/4 v10, 0x0

    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    monitor-enter p0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v12

    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    .local v7, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v7, :cond_2

    iget v13, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v0, p4

    if-eq v13, v0, :cond_2

    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .local v4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v11, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v4, Ljava/util/ArrayList;

    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_6

    if-nez v11, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-direct/range {p0 .. p3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v13

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    monitor-exit p0

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "identity":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    :try_start_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v13

    if-ge v6, v13, :cond_3

    :try_start_4
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Callback;

    iget-object v13, v13, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v13, v0, v1}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v6    # "i":I
    .end local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v8    # "identity":J
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v13

    :goto_5
    monitor-exit p0

    throw v13

    .restart local v6    # "i":I
    .restart local v7    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v8    # "identity":J
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "i":I
    .end local v8    # "identity":J
    :cond_4
    return-void

    .restart local v6    # "i":I
    .restart local v8    # "identity":J
    :catchall_1
    move-exception v13

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_4

    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "i":I
    .end local v8    # "identity":J
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_2
    move-exception v13

    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    move-object v10, v11

    .end local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_2

    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_7
    move-object v11, v10

    .restart local v11    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0
.end method

.method public setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "state"    # Z

    .prologue
    const/4 v3, 0x0

    sget-object v5, Lcom/android/server/AppOpsService;->PRIVACY_GUARD_OP_STATES:[I

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget v0, v5, v4

    .local v0, "op":I
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .local v1, "switchOp":I
    if-eqz p3, :cond_0

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .end local v0    # "op":I
    .end local v1    # "switchOp":I
    :cond_1
    return-void
.end method

.method public setUidMode(III)V
    .locals 27
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v22

    move/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v10

    .local v10, "defaultMode":I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .local v21, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v21, :cond_3

    move/from16 v0, p3

    if-ne v0, v10, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v21, Lcom/android/server/AppOpsService$UidState;

    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .restart local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v22, Landroid/util/SparseIntArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    .local v20, "uidPackageNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    monitor-enter p0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .local v8, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .local v5, "callbackCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    move-object v7, v6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v7, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_1
    if-ge v12, v5, :cond_8

    :try_start_3
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .local v4, "callback":Lcom/android/server/AppOpsService$Callback;
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .local v9, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-static {v9, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :try_start_4
    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v12, v12, 0x1

    move-object v7, v6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_1

    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v20    # "uidPackageNames":[Ljava/lang/String;
    :cond_3
    :try_start_5
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    move/from16 v0, p3

    if-eq v0, v10, :cond_2

    new-instance v22, Landroid/util/SparseIntArray;

    invoke-direct/range {v22 .. v22}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v10    # "defaultMode":I
    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .restart local v10    # "defaultMode":I
    .restart local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_4
    :try_start_6
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v22

    move/from16 v0, v22

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    move/from16 v0, p3

    if-ne v0, v10, :cond_7

    :try_start_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v22

    if-gtz v22, :cond_6

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .restart local v5    # "callbackCount":I
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v12    # "i":I
    .restart local v20    # "uidPackageNames":[Ljava/lang/String;
    :cond_8
    move-object v6, v7

    .end local v5    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v12    # "i":I
    :cond_9
    const/16 v22, 0x0

    :try_start_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v7, v6

    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    :try_start_9
    aget-object v19, v20, v22

    .local v19, "uidPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v8, Ljava/util/ArrayList;

    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_b

    if-nez v7, :cond_12

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_4
    :try_start_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5    # "callbackCount":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v5, :cond_c

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_a

    new-instance v9, Landroid/util/ArraySet;

    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_b
    move-object v6, v7

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_c
    add-int/lit8 v22, v22, 0x1

    move-object v7, v6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_3

    .end local v19    # "uidPackageName":Ljava/lang/String;
    :cond_d
    monitor-exit p0

    if-nez v7, :cond_e

    return-void

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_1
    move-exception v22

    :goto_6
    monitor-exit p0

    throw v22

    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .local v14, "identity":J
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    :try_start_b
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_11

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/ArraySet;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .local v18, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v18, :cond_10

    :try_start_c
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V

    :cond_f
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_10
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    move-result v16

    .local v16, "reportedPackageCount":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_9
    move/from16 v0, v16

    if-ge v13, v0, :cond_f

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .local v17, "reportedPackageName":Ljava/lang/String;
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .end local v13    # "j":I
    .end local v16    # "reportedPackageCount":I
    .end local v17    # "reportedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    :try_start_d
    const-string v22, "AppOps"

    const-string v23, "Error dispatching op op change"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_8

    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v18    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v22

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    :cond_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v12    # "i":I
    .end local v14    # "identity":J
    :catchall_3
    move-exception v22

    move-object v6, v7

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto :goto_6

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v19    # "uidPackageName":Ljava/lang/String;
    :cond_12
    move-object v6, v7

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    goto/16 :goto_4
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v3, "setUserRestrictions"

    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .local v1, "opRestrictions":[Z
    if-nez v1, :cond_0

    const/16 v3, 0x45

    new-array v1, v3, [Z

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "restriction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aput-boolean v4, v1, v0

    goto :goto_1

    .end local v2    # "restriction":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "doWrite":Z
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/server/AppOpsService$ClientState;

    .local v4, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    const/4 v14, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_0

    const/4 v14, 0x2

    monitor-exit p0

    return v14

    :cond_0
    const/4 v14, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v7, v1, v14}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    iget v14, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x1

    monitor-exit p0

    return v14

    :cond_1
    :try_start_2
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v10

    .local v10, "switchCode":I
    iget-object v13, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .local v13, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v14, v13, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v14, :cond_2

    iget-object v14, v13, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .local v12, "uidMode":I
    if-eqz v12, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v12

    .end local v12    # "uidMode":I
    :cond_2
    move/from16 v0, p2

    if-eq v10, v0, :cond_3

    const/4 v14, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10, v14}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v11

    .local v11, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v14, :cond_4

    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v15, 0x4

    if-eq v14, v15, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v14, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v14

    .end local v11    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_3
    move-object v11, v6

    .restart local v11    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_0

    :cond_4
    :try_start_4
    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v14, :cond_7

    iget v14, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v14, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v14, 0x0

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const/4 v14, -0x1

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v14, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    :cond_5
    iget v14, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget-object v14, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v14, :cond_6

    iget-object v14, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v14, 0x0

    monitor-exit p0

    return v14

    :cond_7
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-ne v14, v15, :cond_8

    const-string v14, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "startOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " package: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v14, v11, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v14

    :cond_8
    :try_start_6
    iget v14, v6, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .local v5, "clientToken":Landroid/os/IBinder;
    iget-object v14, v6, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v8

    .local v8, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    monitor-exit p0

    invoke-virtual {v8}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v9

    .local v9, "result":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->broadcastOpIfNeeded(I)V

    return v9

    .end local v5    # "clientToken":Landroid/os/IBinder;
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .end local v9    # "result":I
    .end local v10    # "switchCode":I
    .end local v11    # "switchOp":Lcom/android/server/AppOpsService$Op;
    .end local v13    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    const/4 v4, -0x1

    monitor-enter p0

    if-eq p1, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    :cond_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eq p1, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_3
    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    monitor-exit p0

    return-void

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public systemReady()V
    .locals 17

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "changed":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$UidState;

    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v13, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v13}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .local v9, "packageNames":[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v12}, Lcom/android/server/AppOpsService$UidState;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->removeAt(I)V

    const/4 v1, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    iget-object v11, v12, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .local v11, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v8, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v2, -0x1

    .local v2, "curUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    iget-object v14, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v15, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v15, v15, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    const/16 v16, 0x2000

    move/from16 v0, v16

    invoke-interface {v13, v14, v0, v15}, Landroid/content/pm/IPackageManager;->getPackageUidEtc(Ljava/lang/String;II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :goto_3
    :try_start_2
    iget-object v13, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v13, v13, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v2, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget-object v14, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "pkgName":Ljava/lang/String;
    const/4 v13, -0x1

    if-ne v2, v13, :cond_3

    if-nez v10, :cond_4

    :cond_3
    const-string v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pruning old package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": new uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v13, v8, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    .end local v2    # "curUid":I
    .end local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v12}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .end local v4    # "i":I
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v9    # "packageNames":[Ljava/lang/String;
    .end local v11    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .restart local v4    # "i":I
    :cond_6
    if-eqz v1, :cond_7

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    monitor-exit p0

    const-class v13, Landroid/os/storage/MountServiceInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/MountServiceInternal;

    .local v7, "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    new-instance v13, Lcom/android/server/AppOpsService$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AppOpsService$4;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v7, v13}, Landroid/os/storage/MountServiceInternal;->addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v14, "power"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AppOpsService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v14, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    .restart local v2    # "curUid":I
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v9    # "packageNames":[Ljava/lang/String;
    .restart local v11    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v12    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catch_0
    move-exception v5

    .local v5, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_3
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method writeState()V
    .locals 34

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v30, v0

    monitor-enter v30

    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v23

    .local v23, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v19, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v19, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v29, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v29 .. v29}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v29, "app-ops"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v28

    .local v28, "uidStateCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v28

    if-ge v9, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/AppOpsService$UidState;

    .local v27, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseIntArray;->size()I

    move-result v29

    if-lez v29, :cond_1

    const-string v29, "uid"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v29, "n"

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    .local v26, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    .local v16, "opCount":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .local v14, "op":I
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    .local v13, "mode":I
    const-string v29, "op"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v29, "n"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v29, "m"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v29, "op"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v13    # "mode":I
    .end local v14    # "op":I
    .end local v16    # "opCount":I
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v23    # "stream":Ljava/io/FileOutputStream;
    .end local v26    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v27    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v28    # "uidStateCount":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    :try_start_3
    const-string v29, "AppOps"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failed to write state: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v30

    return-void

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v16    # "opCount":I
    .restart local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v23    # "stream":Ljava/io/FileOutputStream;
    .restart local v26    # "uidOpModes":Landroid/util/SparseIntArray;
    .restart local v27    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v28    # "uidStateCount":I
    :cond_0
    :try_start_4
    const-string v29, "uid"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v11    # "j":I
    .end local v16    # "opCount":I
    .end local v26    # "uidOpModes":Landroid/util/SparseIntArray;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .end local v27    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    if-eqz v4, :cond_10

    const/4 v12, 0x0

    .local v12, "lastPkg":Ljava/lang/String;
    const/4 v9, 0x0

    .end local v12    # "lastPkg":Ljava/lang/String;
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_f

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/AppOpsManager$PackageOps;

    .local v20, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    if-eqz v12, :cond_3

    const-string v29, "pkg"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .local v12, "lastPkg":Ljava/lang/String;
    const-string v29, "pkg"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v29, "n"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v12    # "lastPkg":Ljava/lang/String;
    :cond_4
    const-string v29, "uid"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v29, "n"

    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v29

    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v17

    .local v17, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v17, :cond_c

    const-string v29, "p"

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    monitor-exit p0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v18

    .local v18, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_e

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager$OpEntry;

    .local v15, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string v29, "op"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v29, "n"

    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v29, "ns"

    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v29

    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v31

    invoke-virtual/range {v20 .. v20}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v6

    .local v6, "defaultMode":I
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v29

    move/from16 v0, v29

    if-eq v0, v6, :cond_d

    const-string v29, "m"

    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_5
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v24

    .local v24, "time":J
    const-wide/16 v32, 0x0

    cmp-long v29, v24, v32

    if-eqz v29, :cond_5

    const-string v29, "t"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v24

    const-wide/16 v32, 0x0

    cmp-long v29, v24, v32

    if-eqz v29, :cond_6

    const-string v29, "r"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v7

    .local v7, "dur":I
    if-eqz v7, :cond_7

    const-string v29, "d"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v22

    .local v22, "proxyUid":I
    const/16 v29, -0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    const-string v29, "pu"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v21

    .local v21, "proxyPackageName":Ljava/lang/String;
    if-eqz v21, :cond_9

    const-string v29, "pp"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getAllowedCount()I

    move-result v5

    .local v5, "allowed":I
    if-eqz v5, :cond_a

    const-string v29, "ac"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    invoke-virtual {v15}, Landroid/app/AppOpsManager$OpEntry;->getIgnoredCount()I

    move-result v10

    .local v10, "ignored":I
    if-eqz v10, :cond_b

    const-string v29, "ic"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    const-string v29, "op"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .end local v5    # "allowed":I
    .end local v6    # "defaultMode":I
    .end local v7    # "dur":I
    .end local v10    # "ignored":I
    .end local v11    # "j":I
    .end local v15    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v21    # "proxyPackageName":Ljava/lang/String;
    .end local v22    # "proxyUid":I
    .end local v24    # "time":J
    :cond_c
    :try_start_7
    const-string v29, "p"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .end local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v29

    :try_start_8
    monitor-exit p0

    throw v29
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v9    # "i":I
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v28    # "uidStateCount":I
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v29, "AppOps"

    const-string v31, "Failed to write state, restoring backup."

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v8    # "e":Ljava/io/IOException;
    :goto_6
    monitor-exit v30

    return-void

    .restart local v6    # "defaultMode":I
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v15    # "op":Landroid/app/AppOpsManager$OpEntry;
    .restart local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v28    # "uidStateCount":I
    :cond_d
    :try_start_a
    const-string v29, "dm"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_5

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v6    # "defaultMode":I
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v15    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v23    # "stream":Ljava/io/FileOutputStream;
    .end local v28    # "uidStateCount":I
    :catchall_1
    move-exception v29

    monitor-exit v30

    throw v29

    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "i":I
    .restart local v11    # "j":I
    .restart local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v19    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v23    # "stream":Ljava/io/FileOutputStream;
    .restart local v28    # "uidStateCount":I
    :cond_e
    :try_start_b
    const-string v29, "uid"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .end local v11    # "j":I
    .end local v17    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v18    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v20    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_f
    if-eqz v12, :cond_10

    const-string v29, "pkg"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    const-string v29, "app-ops"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6
.end method
