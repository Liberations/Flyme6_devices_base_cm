.class Lcom/android/server/shrinker/LowMemoryScanner;
.super Lcom/android/server/shrinker/Scanner;
.source "LowMemoryScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/shrinker/LowMemoryScanner$Comparator;
    }
.end annotation


# static fields
.field public static BG_DURATION:I = 0x0

.field public static MAX_MM_PSS:I = 0x0

.field public static MAX_NORMAL_PSS:I = 0x0

.field public static MAX_SELECTED_PSS:I = 0x0

.field private static final MEM_REASON:Ljava/lang/String; = "by shrinker for lowmemory"

.field private static final MUSIC_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static NORMAL_MAX_SUPER_PSS:I


# instance fields
.field private mBgDuration:J

.field private mComparator:Lcom/android/server/shrinker/LowMemoryScanner$Comparator;

.field private mKillingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation
.end field

.field private mMemIsReleased:J

.field private mMemTryReleased:J

.field private mNormalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation
.end field

.field private mSuperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/shrinker/PackageRecordExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/shrinker/LowMemoryScanner;->MUSIC_LIST:Ljava/util/ArrayList;

    const-string v0, "persist.sys.shrink_super_pss"

    const/16 v1, 0xb4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lcom/android/server/shrinker/LowMemoryScanner;->NORMAL_MAX_SUPER_PSS:I

    const-string v0, "persist.sys.shrink_super_pss2"

    const/16 v1, 0x200

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_MM_PSS:I

    const-string v0, "persist.sys.shrink_bg_s"

    const/16 v1, 0x1e0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/shrinker/LowMemoryScanner;->BG_DURATION:I

    sget-boolean v0, Lcom/android/server/shrinker/Utils;->IS_2K:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x20000

    :goto_0
    sput v0, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_NORMAL_PSS:I

    const v0, 0x70800

    sput v0, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_SELECTED_PSS:I

    return-void

    :cond_0
    const v0, 0x19000

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/shrinker/RootScanner;)V
    .locals 2
    .param p1, "scanner"    # Lcom/android/server/shrinker/RootScanner;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/shrinker/Scanner;-><init>(Lcom/android/server/shrinker/RootScanner;)V

    new-instance v0, Lcom/android/server/shrinker/LowMemoryScanner$Comparator;

    invoke-direct {v0}, Lcom/android/server/shrinker/LowMemoryScanner$Comparator;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mComparator:Lcom/android/server/shrinker/LowMemoryScanner$Comparator;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mKillingList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mNormalList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSelectedList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mWorkingList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSuperList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/shrinker/LowMemoryScanner;->MUSIC_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.qqmusic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/shrinker/LowMemoryScanner;->MUSIC_LIST:Ljava/util/ArrayList;

    const-string v1, "com.netease.cloudmusic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/shrinker/LowMemoryScanner;->MUSIC_LIST:Ljava/util/ArrayList;

    const-string v1, "fm.xiami.main"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/shrinker/LowMemoryScanner;->MUSIC_LIST:Ljava/util/ArrayList;

    const-string v1, "com.ximalaya.ting.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/shrinker/LowMemoryScanner;->MUSIC_LIST:Ljava/util/ArrayList;

    const-string v1, "com.kugou.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/shrinker/LowMemoryScanner;->MUSIC_LIST:Ljava/util/ArrayList;

    const-string v1, "cn.kuwo.player"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private killList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RootScanner;->getLogsWriter()Lcom/android/server/shrinker/LogsWriter;

    move-result-object v2

    const-string v3, "trimMemory :"

    invoke-virtual {v2, v3}, Lcom/android/server/shrinker/LogsWriter;->append(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageRecordExt;

    .local v0, "r":Lcom/android/server/shrinker/PackageRecordExt;
    const-string v2, "by shrinker for lowmemory"

    iput-object v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->killReason:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/android/server/shrinker/PackageRecordExt;->skip:Z

    invoke-virtual {v0}, Lcom/android/server/shrinker/PackageRecordExt;->kill()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RootScanner;->getLogsWriter()Lcom/android/server/shrinker/LogsWriter;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/android/server/shrinker/PackageRecordExt;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/shrinker/LogsWriter;->append(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_1
    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private prepare()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RootScanner;->isMonkey()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x1e

    :goto_0
    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mBgDuration:J

    sget v2, Lcom/android/server/shrinker/Utils;->LOW_STATUS_KB:I

    int-to-long v2, v2

    invoke-static {}, Lcom/android/server/shrinker/Utils;->getCurrentMemFree()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemTryReleased:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v2}, Lcom/android/server/shrinker/RootScanner;->prepareList()V

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v2, v6}, Lcom/android/server/shrinker/RootScanner;->getRunningAppList(Z)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mRunningAppList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mRunningAppList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageRecordExt;

    .local v0, "r":Lcom/android/server/shrinker/PackageRecordExt;
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->duration:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mBgDuration:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->flags:I

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->isIgnore(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->minAdj:I

    if-lez v2, :cond_0

    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->oomAdj:I

    if-gt v2, v6, :cond_1

    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->oomAdj:I

    const/16 v3, -0x10

    if-ne v2, v3, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/shrinker/PackageRecordExt;->updateRss()V

    iget-wide v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->totalRss:J

    const-wide/32 v4, 0x19000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mNormalList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    sget v2, Lcom/android/server/shrinker/LowMemoryScanner;->BG_DURATION:I

    goto :goto_0

    .restart local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    .restart local v1    # "r$iterator":Ljava/util/Iterator;
    :cond_3
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    const/16 v3, 0x80

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    const/16 v3, 0x200

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    const/16 v3, 0x400

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSuperList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_6
    return-void
.end method

.method private scanNormal()V
    .locals 10

    .prologue
    iget-object v3, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mNormalList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mNormalList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mComparator:Lcom/android/server/shrinker/LowMemoryScanner$Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mNormalList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageRecordExt;

    .local v0, "r":Lcom/android/server/shrinker/PackageRecordExt;
    invoke-virtual {v0}, Lcom/android/server/shrinker/PackageRecordExt;->updatePss()V

    sget v2, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_NORMAL_PSS:I

    .local v2, "threshold":I
    iget v3, v0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    iget-boolean v3, v0, Lcom/android/server/shrinker/PackageRecordExt;->showUI:Z

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/server/shrinker/PackageRecordExt;->duration:I

    int-to-long v4, v3

    iget-wide v6, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mBgDuration:J

    const-wide/16 v8, 0x3

    mul-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    sget v3, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_NORMAL_PSS:I

    div-int/lit8 v2, v3, 0x2

    :cond_2
    iget-wide v4, v0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    iget-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-wide v6, v0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-object v3, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-wide v6, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemTryReleased:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .end local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    .end local v2    # "threshold":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mNormalList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private scanSelected()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSelectedList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mComparator:Lcom/android/server/shrinker/LowMemoryScanner$Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSelectedList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageRecordExt;

    .local v0, "r":Lcom/android/server/shrinker/PackageRecordExt;
    invoke-virtual {v0}, Lcom/android/server/shrinker/PackageRecordExt;->updatePss()V

    iget-boolean v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->showUI:Z

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    sget v4, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_SELECTED_PSS:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    :goto_0
    iget-wide v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-wide v4, v0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-wide v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemTryReleased:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .end local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_3
    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    .restart local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_4
    iget-boolean v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->showUI:Z

    if-nez v2, :cond_2

    iget-wide v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->totalPss:J

    sget v4, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_SELECTED_PSS:I

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_0
.end method

.method private scanSuper()V
    .locals 8

    .prologue
    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSuperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSuperList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mComparator:Lcom/android/server/shrinker/LowMemoryScanner$Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSuperList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/PackageRecordExt;

    .local v2, "r":Lcom/android/server/shrinker/PackageRecordExt;
    iget-boolean v4, v2, Lcom/android/server/shrinker/PackageRecordExt;->showUI:Z

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/server/shrinker/PackageRecordExt;->updatePss()V

    iget-object v0, v2, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    .local v0, "mainProc":Lcom/android/server/shrinker/ProcessRecord;
    sget-boolean v4, Lcom/android/server/shrinker/Utils;->IS_ABOVE_4G:Z

    if-eqz v4, :cond_5

    const-string v4, "com.tencent.mm"

    iget-object v5, v2, Lcom/android/server/shrinker/PackageRecordExt;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget v1, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_MM_PSS:I

    .local v1, "maxPss":I
    :goto_0
    iget v4, v2, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    and-int/lit8 v4, v4, 0x60

    if-eqz v4, :cond_2

    sget v4, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_SELECTED_PSS:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    invoke-static {v0}, Lcom/android/server/shrinker/Utils;->isValid(Lcom/android/server/shrinker/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-wide v6, v0, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    sget v4, Lcom/android/server/shrinker/Utils;->PROC_KILL_MAIN:I

    iput v4, v2, Lcom/android/server/shrinker/PackageRecordExt;->killType:I

    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "mainProc":Lcom/android/server/shrinker/ProcessRecord;
    .end local v1    # "maxPss":I
    :cond_3
    iget-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-wide v6, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemTryReleased:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .end local v2    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_4
    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mSuperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void

    .restart local v0    # "mainProc":Lcom/android/server/shrinker/ProcessRecord;
    .restart local v2    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_5
    sget v1, Lcom/android/server/shrinker/LowMemoryScanner;->NORMAL_MAX_SUPER_PSS:I

    .restart local v1    # "maxPss":I
    goto :goto_0
.end method

.method private scanWorking()V
    .locals 8

    .prologue
    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mWorkingList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mComparator:Lcom/android/server/shrinker/LowMemoryScanner$Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mWorkingList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/shrinker/PackageRecordExt;

    .local v2, "r":Lcom/android/server/shrinker/PackageRecordExt;
    iget-boolean v4, v2, Lcom/android/server/shrinker/PackageRecordExt;->showUI:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/shrinker/LowMemoryScanner;->MUSIC_LIST:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/shrinker/PackageRecordExt;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/server/shrinker/PackageRecordExt;->updatePss()V

    iget-object v0, v2, Lcom/android/server/shrinker/PackageRecordExt;->mainProc:Lcom/android/server/shrinker/ProcessRecord;

    .local v0, "mainProc":Lcom/android/server/shrinker/ProcessRecord;
    sget v1, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_NORMAL_PSS:I

    .local v1, "maxPss":I
    iget v4, v2, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    and-int/lit8 v4, v4, 0x60

    if-eqz v4, :cond_2

    sget v4, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_SELECTED_PSS:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    invoke-static {v0}, Lcom/android/server/shrinker/Utils;->isValid(Lcom/android/server/shrinker/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    int-to-long v6, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-wide v6, v0, Lcom/android/server/shrinker/ProcessRecord;->pss:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    sget v4, Lcom/android/server/shrinker/Utils;->PROC_KILL_MAIN:I

    iput v4, v2, Lcom/android/server/shrinker/PackageRecordExt;->killType:I

    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mKillingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "mainProc":Lcom/android/server/shrinker/ProcessRecord;
    .end local v1    # "maxPss":I
    :cond_3
    iget-wide v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemIsReleased:J

    iget-wide v6, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mMemTryReleased:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .end local v2    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_4
    iget-object v4, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private scheduleTrimMemory()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mRunningAppList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageRecordExt;

    .local v0, "r":Lcom/android/server/shrinker/PackageRecordExt;
    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->oomAdj:I

    if-lez v2, :cond_0

    iget v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->priority:I

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->isVisible(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->skip:Z

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/android/server/shrinker/PackageRecordExt;->totalRss:J

    sget v4, Lcom/android/server/shrinker/LowMemoryScanner;->MAX_NORMAL_PSS:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/shrinker/PackageRecordExt;->scheduleTrimMemory(I)V

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/shrinker/PackageRecordExt;
    :cond_1
    return-void
.end method


# virtual methods
.method public scan()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/shrinker/Utils;->isMemStatusLow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mScanner:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v0}, Lcom/android/server/shrinker/RootScanner;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/shrinker/LowMemoryScanner;->prepare()V

    invoke-direct {p0}, Lcom/android/server/shrinker/LowMemoryScanner;->scanNormal()V

    invoke-direct {p0}, Lcom/android/server/shrinker/LowMemoryScanner;->scanWorking()V

    invoke-direct {p0}, Lcom/android/server/shrinker/LowMemoryScanner;->scanSelected()V

    invoke-direct {p0}, Lcom/android/server/shrinker/LowMemoryScanner;->scanSuper()V

    invoke-direct {p0}, Lcom/android/server/shrinker/LowMemoryScanner;->killList()V

    invoke-direct {p0}, Lcom/android/server/shrinker/LowMemoryScanner;->scheduleTrimMemory()V

    iget-object v0, p0, Lcom/android/server/shrinker/LowMemoryScanner;->mRunningAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
