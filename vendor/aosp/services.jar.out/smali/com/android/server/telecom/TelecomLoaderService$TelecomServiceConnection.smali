.class Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    :try_start_0
    new-instance v10, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;

    invoke-direct {v10, p0}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;)V

    const/4 v11, 0x0

    invoke-interface {p2, v10, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    const-string v10, "telecom"

    invoke-static {v10, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get4(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-eqz v10, :cond_1

    :cond_0
    const-class v10, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .local v2, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v10

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .local v6, "smsComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_3

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v5

    .local v5, "requestCount":I
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->get(I)I

    move-result v9

    .local v9, "userid":I
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get3(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->remove(I)V

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v9}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v5    # "requestCount":I
    .end local v6    # "smsComponent":Landroid/content/ComponentName;
    .end local v9    # "userid":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    if-nez v10, :cond_0

    :cond_2
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    .restart local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    :cond_3
    :try_start_3
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_4

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v5

    .restart local v5    # "requestCount":I
    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_4

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .local v8, "userId":I
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get1(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->remove(I)V

    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "requestCount":I
    .end local v8    # "userId":I
    :cond_4
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v10

    const-string v12, "telecom"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/TelecomManager;

    .local v7, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .local v4, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v4, :cond_2

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v5

    .restart local v5    # "requestCount":I
    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_2

    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .restart local v8    # "userId":I
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->remove(I)V

    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v1    # "i":I
    .end local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "requestCount":I
    .end local v7    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v8    # "userId":I
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11

    throw v10
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "TelecomLoaderService"

    const-string v11, "Failed linking to death."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->-wrap0(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method
