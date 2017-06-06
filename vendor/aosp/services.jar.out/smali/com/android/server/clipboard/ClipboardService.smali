.class public Lcom/android/server/clipboard/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/IUserManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/clipboard/ClipboardService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Landroid/os/IUserManager;

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v1    # "permOwner":Landroid/os/IBinder;
    :goto_0
    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .end local v2    # "userFilter":Landroid/content/IntentFilter;
    .restart local v1    # "permOwner":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .local v7, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .local v8, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "oldIdentity":J
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v7, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_1

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    .local v1, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    :goto_1
    return-void

    .end local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not own package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_3
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_4

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {p0, v9, p2, v10}, Lcom/android/server/clipboard/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .locals 3
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .prologue
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    .prologue
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I

    .prologue
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x1

    move v1, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .local v0, "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    .restart local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v0

    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "ident":J
    :try_start_0
    invoke-static {p1, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .local v6, "sourceUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    move v7, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "sourceUserId":I
    :goto_0
    return-void

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private removeClipboard(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;

    .prologue
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {p1, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v6, 0x3

    invoke-interface {v4, v5, p1, v6, v1}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .locals 3
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .prologue
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/clipboard/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x1d

    invoke-virtual {v2, v4, v3, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :cond_1
    monitor-exit p0

    return-object v1

    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRelatedProfiles(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "ClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Exception calling UserManager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x1d

    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit p0

    return v2

    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    monitor-exit p0

    return v2

    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .locals 12
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-gtz v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "No items"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "clip":Landroid/content/ClipData;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local p1    # "clip":Landroid/content/ClipData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v9, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v10, 0x1e

    invoke-virtual {v9, v10, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .local v8, "userId":I
    invoke-direct {p0, v8}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    .local v2, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-direct {p0, v2}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    invoke-virtual {p0, v2, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    invoke-virtual {p0, v8}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v6

    .local v6, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .local v7, "size":I
    const/4 v9, 0x1

    if-le v7, v9, :cond_5

    const/4 v1, 0x0

    .local v1, "canCopy":Z
    :try_start_3
    iget-object v9, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v9, v8}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "no_cross_profile_copy_paste"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    const/4 p1, 0x0

    .end local p1    # "clip":Landroid/content/ClipData;
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_5

    :try_start_4
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v5, v9, Landroid/content/pm/UserInfo;->id:I

    .local v5, "id":I
    if-eq v5, v8, :cond_2

    invoke-direct {p0, v5}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v9

    invoke-virtual {p0, v9, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "i":I
    .end local v5    # "id":I
    .restart local p1    # "clip":Landroid/content/ClipData;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "ClipboardService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remote Exception calling UserManager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    invoke-virtual {p1, v8}, Landroid/content/ClipData;->fixUrisLight(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v1    # "canCopy":Z
    .end local v7    # "size":I
    .end local p1    # "clip":Landroid/content/ClipData;
    :cond_5
    monitor-exit p0

    return-void
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V
    .locals 10
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "clip"    # Landroid/content/ClipData;

    .prologue
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    if-nez p2, :cond_0

    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .local v5, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    :try_start_0
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .local v4, "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    iget-object v6, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    iget v7, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    iget-object v8, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    const/16 v9, 0x1d

    invoke-virtual {v6, v9, v7, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v6}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v6

    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
