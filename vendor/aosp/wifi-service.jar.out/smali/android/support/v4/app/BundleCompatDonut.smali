.class Landroid/support/v4/app/BundleCompatDonut;
.super Ljava/lang/Object;
.source "BundleCompatDonut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatDonut"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    if-nez v2, :cond_0

    :try_start_0
    const-class v2, Landroid/os/Bundle;

    const-string v3, "getIBinder"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v7, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    :cond_0
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    :try_start_1
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "BundleCompatDonut"

    const-string v3, "Failed to retrieve getIBinder method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BundleCompatDonut"

    const-string v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v8, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v8
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    if-nez v2, :cond_0

    :try_start_0
    const-class v2, Landroid/os/Bundle;

    const-string v3, "putIBinder"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v7, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    :cond_0
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    :try_start_1
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "BundleCompatDonut"

    const-string v3, "Failed to retrieve putIBinder method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BundleCompatDonut"

    const-string v3, "Failed to invoke putIBinder via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v8, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1
.end method
