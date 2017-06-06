.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$UncaughtHandler;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v8, 0xa

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get1()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v5}, Lcom/android/internal/os/RuntimeInit;->-set0(Z)Z

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "AndroidRuntime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v7, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "message":Ljava/lang/StringBuilder;
    const-string v5, "FATAL EXCEPTION: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    .local v1, "processName":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v5, "Process: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v5, "PID: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    .local v4, "themeConfig":Landroid/content/res/ThemeConfig;
    const-string v5, "\nTheme: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v4, :cond_3

    const-string v4, "system"

    .end local v4    # "themeConfig":Landroid/content/res/ThemeConfig;
    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "AndroidRuntime"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "message":Ljava/lang/StringBuilder;
    .end local v1    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "t2":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "AndroidRuntime"

    const-string v6, "Error reporting crash"

    invoke-static {v5, v6, v2}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .end local v2    # "t2":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    throw v5

    .restart local v2    # "t2":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .local v3, "t3":Ljava/lang/Throwable;
    goto :goto_2
.end method
