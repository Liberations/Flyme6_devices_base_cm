.class public Lcom/android/internal/app/MzResolverActivity;
.super Landroid/app/Activity;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MzResolverActivity$ActionTitle;,
        Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;,
        Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;,
        Lcom/android/internal/app/MzResolverActivity$ViewHolder;,
        Lcom/android/internal/app/MzResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/MzResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/MzResolverActivity$ResolverComparator;,
        Lcom/android/internal/app/MzResolverActivity$DetailListFrag;,
        Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;,
        Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;,
        Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;,
        Lcom/android/internal/app/MzResolverActivity$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GRID_MAX_COUNT:I = 0x8

.field private static final INVALID_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MzResolverActivity"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L

.field private static mInternalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MORE:Ljava/lang/CharSequence;

.field private isStored:Z

.field private mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mAppBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/widget/ScrollView;

.field private mDetailListFrag:Landroid/app/Fragment;

.field private mGrid:Landroid/widget/GridView;

.field private mGridViewAdapter:Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;

.field private mHasMore:Z

.field private mIconDpi:I

.field private mIconSize:I

.field private mInitialIntents:[Landroid/content/Intent;

.field private mIsInDetailFrag:Z

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mMaxColumns:I

.field private mNormalGridFrag:Landroid/app/Fragment;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mResolvingHome:Z

.field mReturnResult:Z

.field private mSafeForwardingMode:Z

.field private mShowExtended:Z

.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIntent:Landroid/content/Intent;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/MzResolverActivity;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->MORE:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/MzResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->isStored:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/MzResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAppBaseResolveList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/MzResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/content/PackageMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/MzResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/MzResolverActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mStats:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/MzResolverActivity;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/MzResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->isStored:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/MzResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/MzResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/MzResolverActivity;->ensureDraggable(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/MzResolverActivity;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/MzResolverActivity;->hasSameItemInInitialIntents(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/app/MzResolverActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "resolves"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/MzResolverActivity;->resortResolveInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/MzResolverActivity;->mLastSelected:I

    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mResolvingHome:Z

    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mHasMore:Z

    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mInitialIntents:[Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mTargetIntent:Landroid/content/Intent;

    new-instance v0, Lcom/android/internal/app/MzResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MzResolverActivity$1;-><init>(Lcom/android/internal/app/MzResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method private ChangeFragment()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/high16 v2, 0x10b0000

    const v3, 0x10b0001

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-direct {v2}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    sget v2, Lcom/flyme/internal/R$id;->contentPanel:I

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_0
    new-instance v2, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-direct {v2}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    sget v2, Lcom/flyme/internal/R$id;->contentPanel:I

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    goto :goto_0
.end method

.method private ensureDraggable(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .local v1, "intentType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "intentAction":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "solveActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    return v4
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/MzResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_0

    return v6

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    return v5

    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    return v6

    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_2
    return v6
.end method

.method private hasSameItemInInitialIntents(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    iget-object v1, v1, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private initFragment()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;

    invoke-direct {v2}, Lcom/android/internal/app/MzResolverActivity$DetailListFrag;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    :cond_0
    sget v2, Lcom/flyme/internal/R$id;->contentPanel:I

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mDetailListFrag:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;

    invoke-direct {v2}, Lcom/android/internal/app/MzResolverActivity$NormalGridFrag;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    :cond_2
    sget v2, Lcom/flyme/internal/R$id;->contentPanel:I

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mNormalGridFrag:Landroid/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private isInternalFlymeApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v1, "com.meizu.filemanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/android/internal/app/MzResolverActivity;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private resortResolveInfos(Ljava/util/List;)Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_0

    const/16 v33, 0x0

    return-object v33

    :cond_0
    const-string v6, "com.android.email"

    .local v6, "EMAIL":Ljava/lang/String;
    const-string v8, "com.android.mms"

    .local v8, "MMS":Ljava/lang/String;
    const-string v5, "com.android.bluetooth"

    .local v5, "BT_OPP":Ljava/lang/String;
    const-string v4, "com.meizu.share"

    .local v4, "BT":Ljava/lang/String;
    const-string v10, "com.meizu.notepaper"

    .local v10, "NOTEPAPER":Ljava/lang/String;
    const-string v13, "com.tencent.mm"

    .local v13, "WECHAT":Ljava/lang/String;
    const-string v14, "com.sina.weibo"

    .local v14, "WEIBO":Ljava/lang/String;
    const-string v11, "com.tencent.mobileqq"

    .local v11, "QQ":Ljava/lang/String;
    const-string v7, "com.meizu.media.gallery"

    .local v7, "GALLERY":Ljava/lang/String;
    const-string v9, "com.meizu.media.music"

    .local v9, "MUSIC":Ljava/lang/String;
    const-string v12, "com.meizu.media.video"

    .local v12, "VIDEO":Ljava/lang/String;
    const-string v3, "com.android.browser"

    .local v3, "BROWSER":Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "email":Landroid/content/pm/ResolveInfo;
    const/16 v21, 0x0

    .local v21, "mms":Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x0

    .local v16, "bt":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x0

    .local v17, "bt_opp":Landroid/content/pm/ResolveInfo;
    const/16 v23, 0x0

    .local v23, "notepaper":Landroid/content/pm/ResolveInfo;
    const/16 v20, 0x0

    .local v20, "gallery":Landroid/content/pm/ResolveInfo;
    const/16 v22, 0x0

    .local v22, "music":Landroid/content/pm/ResolveInfo;
    const/16 v29, 0x0

    .local v29, "video":Landroid/content/pm/ResolveInfo;
    const/4 v15, 0x0

    .local v15, "browser":Landroid/content/pm/ResolveInfo;
    const/16 v31, 0x0

    .local v31, "weChatMoments":Landroid/content/pm/ResolveInfo;
    const/16 v30, 0x0

    .local v30, "weChatFriend":Landroid/content/pm/ResolveInfo;
    const/16 v32, 0x0

    .local v32, "weibo":Landroid/content/pm/ResolveInfo;
    const/16 v26, 0x0

    .local v26, "qqFriends":Landroid/content/pm/ResolveInfo;
    const/16 v25, 0x0

    .local v25, "qqFileToPc":Landroid/content/pm/ResolveInfo;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .end local v15    # "browser":Landroid/content/pm/ResolveInfo;
    .end local v16    # "bt":Landroid/content/pm/ResolveInfo;
    .end local v17    # "bt_opp":Landroid/content/pm/ResolveInfo;
    .end local v19    # "email":Landroid/content/pm/ResolveInfo;
    .end local v20    # "gallery":Landroid/content/pm/ResolveInfo;
    .end local v21    # "mms":Landroid/content/pm/ResolveInfo;
    .end local v22    # "music":Landroid/content/pm/ResolveInfo;
    .end local v23    # "notepaper":Landroid/content/pm/ResolveInfo;
    .end local v25    # "qqFileToPc":Landroid/content/pm/ResolveInfo;
    .end local v26    # "qqFriends":Landroid/content/pm/ResolveInfo;
    .end local v29    # "video":Landroid/content/pm/ResolveInfo;
    .end local v30    # "weChatFriend":Landroid/content/pm/ResolveInfo;
    .end local v31    # "weChatMoments":Landroid/content/pm/ResolveInfo;
    .end local v32    # "weibo":Landroid/content/pm/ResolveInfo;
    .local v28, "resolve$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ResolveInfo;

    .local v27, "resolve":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    .local v18, "ci":Landroid/content/pm/ComponentInfo;
    :goto_1
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .local v24, "pkg":Ljava/lang/String;
    const-string v33, "com.android.email"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    move-object/from16 v19, v27

    .local v19, "email":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .end local v18    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v19    # "email":Landroid/content/pm/ResolveInfo;
    .end local v24    # "pkg":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .restart local v18    # "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_1

    .restart local v24    # "pkg":Ljava/lang/String;
    :cond_3
    const-string v33, "com.android.mms"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    move-object/from16 v21, v27

    .local v21, "mms":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .end local v21    # "mms":Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string v33, "com.android.bluetooth"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    move-object/from16 v17, v27

    .local v17, "bt_opp":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .end local v17    # "bt_opp":Landroid/content/pm/ResolveInfo;
    :cond_5
    const-string v33, "com.meizu.share"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "com.meizu.share.BluetoothOppLauncherActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6

    move-object/from16 v16, v27

    .local v16, "bt":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v16    # "bt":Landroid/content/pm/ResolveInfo;
    :cond_6
    const-string v33, "com.meizu.notepaper"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    move-object/from16 v23, v27

    .local v23, "notepaper":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v23    # "notepaper":Landroid/content/pm/ResolveInfo;
    :cond_7
    const-string v33, "com.meizu.media.music"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    move-object/from16 v22, v27

    .local v22, "music":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v22    # "music":Landroid/content/pm/ResolveInfo;
    :cond_8
    const-string v33, "com.meizu.media.video"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    move-object/from16 v29, v27

    .local v29, "video":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v29    # "video":Landroid/content/pm/ResolveInfo;
    :cond_9
    const-string v33, "com.meizu.media.gallery"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a

    move-object/from16 v20, v27

    .local v20, "gallery":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v20    # "gallery":Landroid/content/pm/ResolveInfo;
    :cond_a
    const-string v33, "com.android.browser"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b

    move-object/from16 v15, v27

    .local v15, "browser":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v15    # "browser":Landroid/content/pm/ResolveInfo;
    :cond_b
    const-string v33, "com.tencent.mm"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    move-object/from16 v31, v27

    .local v31, "weChatMoments":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v31    # "weChatMoments":Landroid/content/pm/ResolveInfo;
    :cond_c
    const-string v33, "com.tencent.mm"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    move-object/from16 v30, v27

    .local v30, "weChatFriend":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v30    # "weChatFriend":Landroid/content/pm/ResolveInfo;
    :cond_d
    const-string v33, "com.sina.weibo"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_e

    move-object/from16 v32, v27

    .local v32, "weibo":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v32    # "weibo":Landroid/content/pm/ResolveInfo;
    :cond_e
    const-string v33, "com.tencent.mobileqq"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_f

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_f

    move-object/from16 v26, v27

    .local v26, "qqFriends":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v26    # "qqFriends":Landroid/content/pm/ResolveInfo;
    :cond_f
    const-string v33, "com.tencent.mobileqq"

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1

    move-object/from16 v25, v27

    .local v25, "qqFileToPc":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .end local v18    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v24    # "pkg":Ljava/lang/String;
    .end local v25    # "qqFileToPc":Landroid/content/pm/ResolveInfo;
    .end local v27    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_10
    if-eqz v22, :cond_11

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_11
    if-eqz v29, :cond_12

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_12
    if-eqz v20, :cond_13

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_13
    if-eqz v15, :cond_14

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_14
    if-eqz v21, :cond_15

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_15
    if-eqz v23, :cond_16

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_16
    if-eqz v17, :cond_17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_17
    if-eqz v16, :cond_18

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_18
    if-eqz v19, :cond_19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_19
    if-eqz v32, :cond_1a

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1a
    if-eqz v25, :cond_1b

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1b
    if-eqz v26, :cond_1c

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1c
    if-eqz v31, :cond_1d

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1d
    if-eqz v30, :cond_1e

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1e
    return-object p1
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "enabled":Z
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->versionNumberAtLeastL(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1
    .param p1, "versionNumber"    # I

    .prologue
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/app/MzResolverActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mTargetIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .local v1, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getInitalIntents()[Landroid/content/Intent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mInitialIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    return-object p2
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    .local v1, "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->hasFilteredItem()Z

    move-result v0

    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/app/MzResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/MzResolverActivity$ActionTitle;

    move-result-object v1

    .restart local v1    # "title":Lcom/android/internal/app/MzResolverActivity$ActionTitle;
    goto :goto_0

    .restart local v0    # "named":Z
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getFilteredItem()Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/app/MzResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/MzResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_2
    iget v2, v1, Lcom/android/internal/app/MzResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/MzResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/MzResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MzResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;->ChangeFragment()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/app/MzResolverActivity;->mResolvingHome:Z

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/MzResolverActivity;->setSafeForwardingMode(Z)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/MzResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v2, Lcom/flyme/internal/R$style;->Theme_Flyme_Resolver:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x48190800

    sub-long v12, v2, v4

    .local v12, "sinceTime":J
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .local v10, "am":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIconDpi:I

    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/MzResolverActivity;->mIconSize:I

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mInitialIntents:[Landroid/content/Intent;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mTargetIntent:Landroid/content/Intent;

    new-instance v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget v8, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    move-object v3, p0

    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;-><init>(Lcom/android/internal/app/MzResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;IZ)V

    iput-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    sget v3, Lcom/flyme/internal/R$layout;->mz_resolve_grid_item:I

    invoke-virtual {v2, v3}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->setItemLayoutId(I)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAppBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mTitle:Ljava/lang/CharSequence;

    sget v2, Lcom/flyme/internal/R$layout;->mz_resolver_grid2:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;->initFragment()V

    return-void

    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v12    # "sinceTime":J
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/MzResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 28
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->hasFilteredItem()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v2, :cond_e

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    .local v15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "cat$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "cat":Ljava/lang/String;
    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .end local v13    # "cat":Ljava/lang/String;
    .end local v14    # "cat$iterator":Ljava/util/Iterator;
    :cond_2
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .local v16, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v19, :cond_3

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_6

    const-string v2, "file"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "content"

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    :goto_2
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v26, v0

    .local v26, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .local v7, "bestMatch":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v9, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->currentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    .local v24, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18

    move-object/from16 v0, v24

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_5

    move-object/from16 v0, v24

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v18    # "i":I
    .end local v24    # "r":Landroid/content/pm/ResolveInfo;
    .end local v26    # "set":[Landroid/content/ComponentName;
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v19    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v17

    .local v17, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    .local v6, "filter":Landroid/content/IntentFilter;
    goto :goto_1

    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v21, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v27

    .local v27, "ssp":Ljava/lang/String;
    :cond_7
    if-eqz v27, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PatternMatcher;

    .local v20, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .end local v20    # "p":Landroid/os/PatternMatcher;
    .end local v27    # "ssp":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_a

    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_9

    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v23

    .local v23, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v23, :cond_c

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v23    # "port":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v21

    if-eqz v21, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v22

    .local v22, "path":Ljava/lang/String;
    :cond_b
    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PatternMatcher;

    .restart local v20    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_2

    .end local v20    # "p":Landroid/os/PatternMatcher;
    .end local v22    # "path":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v23    # "port":I
    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v21    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v23    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v18    # "i":I
    .restart local v26    # "set":[Landroid/content/ComponentName;
    :cond_d
    if-eqz p3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "data":Landroid/net/Uri;
    .end local v18    # "i":I
    .end local v26    # "set":[Landroid/content/ComponentName;
    :cond_e
    :goto_5
    if-eqz p2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    if-eqz v2, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x2000001

    and-int/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MzResolverActivity;->safelyStartActivity(Landroid/content/Intent;)V

    :cond_10
    return-void

    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "data":Landroid/net/Uri;
    .restart local v18    # "i":I
    .restart local v26    # "set":[Landroid/content/ComponentName;
    :cond_11
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/MzResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const/high16 v5, 0x10000

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v25

    .local v25, "re":Landroid/os/RemoteException;
    const-string v2, "MzResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->handlePackagesChanged()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ISDETAIL"

    iget-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mIsInDetailFrag:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v0, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iput-boolean v1, p0, Lcom/android/internal/app/MzResolverActivity;->mRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .local v0, "TouchX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .local v1, "TouchY":I
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public safelyStartActivity(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-boolean v3, p0, Lcom/android/internal/app/MzResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, -0x2710

    :try_start_0
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/internal/app/MzResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v3, "MzResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/MzResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/MzResolverActivity;->mSafeForwardingMode:Z

    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MzResolverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startSelected(IZZ)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mHasMore:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getIsDetail()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.requset_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    iget-boolean v2, p0, Lcom/android/internal/app/MzResolverActivity;->mReturnResult:Z

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity;->setResult(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->intentForPosition(IZ)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/MzResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/MzResolverActivity;->finish()V

    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity;->mAdapter:Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->getCount()I

    move-result v2

    if-le v2, v3, :cond_1

    if-ne p1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/MzResolverActivity;->ChangeFragment()V

    return-void
.end method
