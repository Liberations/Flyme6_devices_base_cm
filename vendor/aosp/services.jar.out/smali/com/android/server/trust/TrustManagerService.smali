.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$AgentInfo;,
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$1;,
        Lcom/android/server/trust/TrustManagerService$2;,
        Lcom/android/server/trust/TrustManagerService$3;,
        Lcom/android/server/trust/TrustManagerService$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/trust/TrustManagerService$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/ActivityManager;

.field final mArchive:Lcom/android/server/trust/TrustArchive;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDeviceLockedForUser"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field private final mService:Landroid/os/IBinder;

.field private final mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

.field private mTrustAgentsCanRun:Z

.field private final mTrustListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserIsTrusted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserIsTrusted"
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/trust/TrustManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/trust/TrustManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/trust/TrustManagerService;ZI)V
    .locals 0
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$Receiver;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    iput-boolean v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    iput v2, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$4;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    return-void
.end method

.method private aggregateIsTrustManaged(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_1

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    return v3
.end method

.method private aggregateIsTrusted(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_1

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    return v3
.end method

.method private dispatchDeviceLocked(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isLocked"    # Z

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .local v0, "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_0

    if-eqz p2, :cond_1

    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    goto :goto_1

    .end local v0    # "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    return-void
.end method

.method private dispatchOnTrustChanged(ZII)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    if-nez p1, :cond_0

    const/4 p3, 0x0

    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/trust/ITrustListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TrustManagerService"

    const-string v4, "Exception while notifying TrustListener."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v3, "TrustManagerService"

    const-string v4, "Removing dead TrustListener."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_1
    return-void
.end method

.method private dispatchOnTrustManagedChanged(ZI)V
    .locals 5
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/trust/ITrustListener;

    invoke-interface {v3, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TrustManagerService"

    const-string v4, "Exception while notifying TrustListener."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v3, "TrustManagerService"

    const-string v4, "Removing dead TrustListener."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_0
    return-void
.end method

.method private dispatchUnlockAttempt(ZI)V
    .locals 3
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_0

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    return-void
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 15
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    return-object v12

    :cond_1
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v12, :cond_0

    const/4 v3, 0x0

    .local v3, "cn":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .local v2, "caughtException":Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v13, "android.service.trust.trustagent"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v8, :cond_3

    const-string v12, "TrustManagerService"

    const-string v13, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v12

    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    :cond_5
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .local v7, "nodeName":Ljava/lang/String;
    const-string v12, "trust-agent"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "TrustManagerService"

    const-string v13, "Meta-data does not start with trust-agent tag"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    return-object v12

    :cond_7
    :try_start_2
    sget-object v12, Lcom/android/internal/R$styleable;->TrustAgent:[I

    invoke-virtual {v9, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "cn":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "caughtException":Ljava/lang/Exception;
    .end local v3    # "cn":Ljava/lang/String;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .end local v11    # "type":I
    :cond_8
    :goto_0
    if-eqz v2, :cond_a

    const-string v12, "TrustManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error parsing : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v12, 0x0

    return-object v12

    .restart local v2    # "caughtException":Ljava/lang/Exception;
    :catch_0
    move-exception v6

    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v2, v6

    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object v2, v5

    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v5    # "e":Ljava/io/IOException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v4

    .local v2, "caughtException":Ljava/lang/Exception;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v2, "caughtException":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v12

    .end local v2    # "caughtException":Ljava/lang/Exception;
    :cond_a
    if-nez v3, :cond_b

    const/4 v12, 0x0

    return-object v12

    :cond_b
    const/16 v12, 0x2f

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    return-object v12
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 11
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    .prologue
    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "trust_agents_initialized"

    invoke-static {v8, v9, v10, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, v3, p2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v7

    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .local v2, "discoveredAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .local v0, "applicationInfoFlags":I
    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_1

    const-string v8, "TrustManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Leaving agent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " disabled because package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "is not a system package."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "applicationInfoFlags":I
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v4

    .local v4, "previouslyEnabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "trust_agents_initialized"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private refreshDeviceLockedForUser(I)V
    .locals 16
    .param p1, "userId"    # I

    .prologue
    const/4 v12, -0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_0

    if-gez p1, :cond_0

    const-string v12, "TrustManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "refreshDeviceLockedForUser(userId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): Invalid user handle,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " must be USER_ALL or a specific user."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/Throwable;

    const-string v15, "here"

    invoke-direct {v14, v15}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, -0x1

    :cond_0
    const/4 v12, -0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .local v10, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    .local v11, "wm":Landroid/view/IWindowManager;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_7

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .local v6, "info":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_3

    iget-boolean v12, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v12, :cond_3

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-boolean v12, v6, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v12, :cond_3

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v12

    if-eqz v12, :cond_3

    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    .local v5, "id":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    .local v7, "secure":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v9

    .local v9, "trusted":Z
    const/4 v8, 0x1

    .local v8, "showingKeyguard":Z
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v12, v5, :cond_1

    :try_start_0
    invoke-interface {v11}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .end local v8    # "showingKeyguard":Z
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    if-eqz v9, :cond_5

    :cond_2
    const/4 v2, 0x0

    .local v2, "deviceLocked":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v13

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v12

    if-eq v12, v2, :cond_6

    const/4 v1, 0x1

    .local v1, "changed":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v13

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    .end local v1    # "changed":Z
    .end local v2    # "deviceLocked":Z
    .end local v5    # "id":I
    .end local v7    # "secure":Z
    .end local v9    # "trusted":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    .end local v6    # "info":Landroid/content/pm/UserInfo;
    .end local v10    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v11    # "wm":Landroid/view/IWindowManager;
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .restart local v4    # "i":I
    .restart local v5    # "id":I
    .restart local v6    # "info":Landroid/content/pm/UserInfo;
    .restart local v7    # "secure":Z
    .restart local v8    # "showingKeyguard":Z
    .restart local v9    # "trusted":Z
    .restart local v11    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_2

    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v8    # "showingKeyguard":Z
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "deviceLocked":Z
    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "changed":Z
    goto :goto_4

    .end local v1    # "changed":Z
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .end local v2    # "deviceLocked":Z
    .end local v5    # "id":I
    .end local v6    # "info":Landroid/content/pm/UserInfo;
    .end local v7    # "secure":Z
    .end local v9    # "trusted":Z
    :cond_7
    return-void
.end method

.method private removeAgentsOfPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "trustMayHaveChanged":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    :cond_3
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    sget-object v6, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-virtual {p1, v6, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .local v2, "packageName":Ljava/lang/String;
    const-string v6, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v6, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .local v1, "name":Landroid/content/ComponentName;
    const-string v6, "TrustManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " because package does not have"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "name":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v0
.end method

.method private resolveProfileParent(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private updateTrustAll()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "userInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto :goto_0

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method isDeviceLockedInner(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x258

    if-ne p1, v0, :cond_3

    iput-boolean v4, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const-string v0, "trust"

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method refreshAgentList(I)V
    .locals 28
    .param p1, "userId"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    return-void

    :cond_0
    const/16 v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    if-gez p1, :cond_1

    const-string v24, "TrustManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "refreshAgentList(userId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "): Invalid user handle,"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " must be USER_ALL or a specific user."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/Throwable;

    const-string v27, "here"

    invoke-direct/range {v26 .. v27}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, -0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/16 v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v23

    .local v23, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .local v13, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .local v15, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "userInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .local v21, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v21, :cond_2

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/content/pm/UserInfo;->partial:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v8

    .local v8, "disabledFeatures":I
    and-int/lit8 v24, v8, 0x10

    if-eqz v24, :cond_6

    const/4 v7, 0x1

    .local v7, "disableTrustAgents":Z
    :goto_1
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v10

    .local v10, "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v10, :cond_2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v19

    .local v19, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .local v17, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v14

    .local v14, "name":Landroid/content/ComponentName;
    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    if-eqz v7, :cond_4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v9, v0, v14, v1}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v6

    .local v6, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_3

    .end local v6    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_4
    new-instance v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$AgentInfo;)V

    .local v5, "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iput-object v14, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Landroid/content/ComponentName;

    new-instance v24, Lcom/android/server/trust/TrustAgentWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v7    # "disableTrustAgents":Z
    .end local v8    # "disabledFeatures":I
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v13    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v14    # "name":Landroid/content/ComponentName;
    .end local v15    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    .end local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v19    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v22    # "userInfo$iterator":Ljava/util/Iterator;
    .end local v23    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .restart local v8    # "disabledFeatures":I
    .restart local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v13    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v15    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    .restart local v21    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v22    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "disableTrustAgents":Z
    goto/16 :goto_1

    .restart local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .restart local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v14    # "name":Landroid/content/ComponentName;
    .restart local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "resolveInfo$iterator":Ljava/util/Iterator;
    .restart local v19    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v5    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v7    # "disableTrustAgents":Z
    .end local v8    # "disabledFeatures":I
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v14    # "name":Landroid/content/ComponentName;
    .end local v17    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v18    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v19    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_8
    const/16 v20, 0x0

    .local v20, "trustMayHaveChanged":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_c

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .local v12, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    const/16 v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    iget v0, v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    move/from16 v24, v0

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v20, 0x1

    :cond_a
    iget-object v0, v12, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v12    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_c
    if-eqz v20, :cond_d

    const/16 v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    :cond_d
    :goto_4
    return-void

    :cond_e
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto :goto_4
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .local v2, "trustMayHaveChanged":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p2, v3, :cond_1

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0, p2, v6}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void
.end method

.method updateDevicePolicyFeatures()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    return-void
.end method

.method public updateTrust(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v1

    .local v1, "trusted":Z
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v0, 0x1

    .local v0, "changed":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZII)V

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    :cond_0
    return-void

    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .end local v0    # "changed":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
