.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformUnifiedRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;
    }
.end annotation


# static fields
.field private static synthetic -com_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$UnifiedRestoreState:[I

.field private mAcceptSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgent:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mFinished:Z

.field private mIsSystemRestore:Z

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field private mSavedStateName:Ljava/io/File;

.field private mStageName:Ljava/io/File;

.field private mStartRealtime:J

.field private mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field private mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object v0
.end method

.method private static synthetic -getcom_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-com_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-com_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->values()[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-com_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    return-object p1
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "restoreSetToken"    # J
    .param p6, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p7, "pmToken"    # I
    .param p8, "isFullSystemRestore"    # Z
    .param p9, "filterSet"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v8, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStartRealtime:J

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    if-eqz p6, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move-object/from16 v0, p6

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p9, :cond_2

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v2

    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p9

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Full restore; asking about "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " apps"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, p9

    array-length v9, v0

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v5, 0x0

    .local v5, "hasSystem":Z
    const/4 v4, 0x0

    .local v4, "hasSettings":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p9

    array-length v8, v0

    if-ge v6, v8, :cond_6

    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    aget-object v9, p9, v6

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .local v7, "info":Landroid/content/pm/PackageInfo;
    const-string v8, "android"

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x1

    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    :cond_4
    const-string v8, "com.android.providers.settings"

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    if-eqz v5, :cond_7

    :try_start_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_3
    if-eqz v4, :cond_0

    :try_start_2
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.android.providers.settings"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3
.end method

.method private dispatchNextRestore()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .local v5, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v8}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_1

    const-string v8, "BackupManagerService"

    const-string v9, "Failure getting next package name"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v9, 0xb0f

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    .local v6, "pkgName":Ljava/lang/String;
    goto :goto_0

    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    sget-object v9, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    if-ne v8, v9, :cond_2

    const-string v8, "BackupManagerService"

    const-string v9, "No more packages; finishing restore"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStartRealtime:J

    sub-long/2addr v8, v10

    long-to-int v4, v8

    .local v4, "millis":I
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/16 v9, 0xb12

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    .end local v4    # "millis":I
    :cond_2
    :try_start_2
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Next restore package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v8, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v3

    .local v3, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    if-nez v3, :cond_3

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const-string v9, "Package metadata missing"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/16 v9, 0xb10

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v8, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x20000

    and-int/2addr v8, v9

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > installed version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "message":Ljava/lang/String;
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/16 v9, 0xb10

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package not present: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const-string v9, "Package missing on device"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/16 v9, 0xb10

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    :try_start_6
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > installed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v10, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but restoreAnyVersion"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v8}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v7

    .local v7, "type":I
    if-ne v7, v11, :cond_6

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    :cond_6
    if-ne v7, v12, :cond_7

    :try_start_7
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_1

    :cond_7
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecognized restore type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    .end local v3    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .end local v7    # "type":I
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v8, "BackupManagerService"

    const-string v9, "Can\'t get next target from transport; ending restore"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v9, 0xb0f

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    throw v8
.end method

.method private finalizeRestore()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v2, v3}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v2, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    if-lez v2, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->restoreFinished(I)V

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    iput-wide v4, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    :cond_1
    const-string v2, "BackupManagerService"

    const-string v3, "Restore complete."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    const-string v3, "Error finishing restore"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v3, "Restore observer died at restoreFinished"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v7, v4, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private packagesToNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private restoreFinished()V
    .locals 6

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v2

    .local v2, "token":I
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v2, v4, v5, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2, v4}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "token":I
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to finalize restore of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0xb10

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_0
.end method

.method private restoreFull()V
    .locals 4

    .prologue
    :try_start_0
    new-instance v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;

    invoke-direct {v1, p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V

    .local v1, "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "unified-stream-feeder"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to construct pipes for stream restore!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_0
.end method

.method private restoreKeyValue()V
    .locals 10

    .prologue
    const/16 v9, 0xb10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Package has no agent"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v1

    .local v1, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    iget-object v3, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature mismatch restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Signature mismatch"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v3, :cond_3

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find backup agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Restore agent missing"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v4, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when attempting restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_0
.end method

.method private startRestore()V
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/16 v8, -0x3e8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendStartRestore(I)V

    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v5, :cond_0

    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->restoreStarting(I)V

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .local v4, "transportDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v3, Landroid/content/pm/PackageInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    .local v3, "pmPackage":Landroid/content/pm/PackageInfo;
    const-string v5, "@pm@"

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/PackageInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PackageInfo;

    .local v2, "packages":[Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-wide v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    invoke-interface {v5, v6, v7, v2}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v5

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    if-eqz v5, :cond_1

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; no restore possible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    .local v0, "desc":Landroid/app/backup/RestoreDescription;
    if-nez v0, :cond_2

    const-string v5, "BackupManagerService"

    const-string v6, "No restore metadata available; halting"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    :cond_2
    const-string v5, "@pm@"

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required metadata but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    :cond_3
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v6, "@pm@"

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v5, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "BackupManagerService"

    const-string v6, "No restore metadata available, so not restoring"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "@pm@"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Package manager restore metadata missing"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/16 v6, 0xb10

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .end local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .end local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "transportDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to contact transport for restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v9, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .restart local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .restart local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "transportDir":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-getcom_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->startRestore()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->dispatchNextRestore()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreKeyValue()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFull()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFinished()V

    goto :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->finalizeRestore()V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    goto :goto_0

    :cond_0
    const-string v0, "BackupManagerService"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    .locals 3
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .prologue
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleTimeout()V
    .locals 3

    .prologue
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout restoring application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "restore timeout"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb10

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;I)V
    .locals 18
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "appVersionCode"    # I

    .prologue
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v14, "packageName":Ljava/lang/String;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiateOneRestore packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".restore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".stage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    invoke-direct {v2, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mSavedStateName:Ljava/io/File;

    const-string v2, "android"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v17, 0x0

    .local v17, "staging":Z
    :goto_0
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .local v9, "downloadFile":Ljava/io/File;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v6

    .local v6, "token":I
    const/high16 v2, 0x3c000000    # 0.0078125f

    :try_start_0
    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .local v16, "stage":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting restore data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xb0f

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .end local v6    # "token":I
    .end local v9    # "downloadFile":Ljava/io/File;
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "staging":Z
    :cond_1
    const/16 v17, 0x1

    .restart local v17    # "staging":Z
    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .restart local v9    # "downloadFile":Ljava/io/File;
    goto :goto_1

    .restart local v6    # "token":I
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_3
    if-eqz v17, :cond_7

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    const/high16 v2, 0x10000000

    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    new-instance v11, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .local v11, "in":Landroid/app/backup/BackupDataInput;
    new-instance v13, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .local v13, "out":Landroid/app/backup/BackupDataOutput;
    const/16 v2, 0x2000

    new-array v8, v2, [B

    .local v8, "buffer":[B
    :goto_2
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v12

    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v15

    .local v15, "size":I
    const-string v2, "\uffed\uffedwidget"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring widget state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v15, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v15    # "size":I
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call app for restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0xb10

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .restart local v8    # "buffer":[B
    .restart local v11    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v15    # "size":I
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_4
    :try_start_2
    array-length v2, v8

    if-le v15, v2, :cond_5

    new-array v8, v15, [B

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    invoke-virtual {v13, v12, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {v13, v8, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto/16 :goto_2

    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "size":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v4, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v2, v6, v4, v5, v0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method keyValueAgentCleanup()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .local v0, "appFlags":I
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v4}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    .local v3, "killAfterRestore":Z
    :goto_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restore complete, killing host process of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "appFlags":I
    .end local v3    # "killAfterRestore":Z
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void

    .restart local v0    # "appFlags":I
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "killAfterRestore":Z
    goto :goto_2

    .end local v3    # "killAfterRestore":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "killAfterRestore":Z
    goto :goto_2

    .end local v0    # "appFlags":I
    .end local v3    # "killAfterRestore":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_3

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method keyValueAgentErrorCleanup()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    return-void
.end method

.method public operationComplete(I)V
    .locals 5
    .param p1, "unusedResult"    # I

    .prologue
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->-getcom_android_server_backup_BackupManagerService$UnifiedRestoreStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected restore callback into state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .local v0, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    return-void

    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_1
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .local v1, "size":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0xb11

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    invoke-virtual {v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->restoreWidgetData(Ljava/lang/String;[B)V

    :cond_0
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method sendEndRestore()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    invoke-interface {v1, v2, p1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died in onUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_0
.end method

.method sendStartRestore(I)V
    .locals 4
    .param p1, "numPackages"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_0
.end method
