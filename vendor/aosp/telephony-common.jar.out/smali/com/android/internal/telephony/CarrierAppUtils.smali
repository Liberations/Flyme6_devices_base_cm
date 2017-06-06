.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;,
        Lcom/android/internal/telephony/CarrierAppUtils$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarrierAppUtils"

.field private static final mCarriersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/CarrierAppUtils$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CarrierAppUtils$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierAppUtils;->mCarriersMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V
    .locals 7
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "userId"    # I

    .prologue
    const-class v6, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .local v5, "systemCarrierAppsEnabled":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    .end local v4    # "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    .end local v5    # "systemCarrierAppsEnabled":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 19
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "userId"    # I
    .param p4, "systemCarrierAppsDisabledUntilUsed"    # [Ljava/lang/String;
    .param p5, "systemCarrierAppsEnabled"    # [Ljava/lang/String;

    .prologue
    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .local v12, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v14, Ljava/util/HashSet;

    move-object/from16 v0, p5

    array-length v4, v0

    invoke-direct {v14, v4}, Ljava/util/HashSet;-><init>(I)V

    .local v14, "enabledCarrierAppsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, p5

    array-length v6, v0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v5, p5, v4

    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "ai$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .restart local v5    # "packageName":Ljava/lang/String;
    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    const/16 v17, 0x1

    .local v17, "hasPrivileges":Z
    :goto_2
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v17, :cond_8

    iget v4, v10, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-eqz v4, :cond_4

    iget v4, v10, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_8

    :cond_4
    const-string v4, "CarrierAppUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update state("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): ENABLED for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p1

    move/from16 v8, p3

    move-object/from16 v9, p0

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    :cond_5
    :goto_3
    if-eqz v17, :cond_3

    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "ai$iterator":Ljava/util/Iterator;
    .end local v17    # "hasPrivileges":Z
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    const-string v4, "CarrierAppUtils"

    const-string v6, "Could not reach PackageManager"

    invoke-static {v4, v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_4
    return-void

    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "ai$iterator":Ljava/util/Iterator;
    :cond_7
    const/16 v17, 0x0

    .restart local v17    # "hasPrivileges":Z
    goto :goto_2

    :cond_8
    if-nez v17, :cond_5

    :try_start_1
    iget v4, v10, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-nez v4, :cond_5

    const-string v4, "CarrierAppUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update state("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): DISABLED_UNTIL_USED for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move/from16 v8, p3

    move-object/from16 v9, p0

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_3

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "hasPrivileges":Z
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p5

    array-length v6, v0

    :goto_5
    if-ge v4, v6, :cond_a

    aget-object v16, p5, v4

    .local v16, "enabledPackageName":Ljava/lang/String;
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v16    # "enabledPackageName":Ljava/lang/String;
    :cond_a
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v18, v0

    .local v18, "packageNames":[Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static getCarrierId()Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;
    .locals 2

    .prologue
    const-string v1, "persist.radio.atel.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "property":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/CarrierAppUtils;->mCarriersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CarrierAppUtils;->mCarriersMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;
    .locals 4
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "systemCarrierAppsDisabledUntilUsed":[Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "systemCarrierAppsEnabled":[Ljava/lang/String;
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .param p2, "systemCarrierAppsDisabledUntilUsed"    # [Ljava/lang/String;
    .param p3, "systemCarrierAppsEnabled"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    array-length v7, p2

    if-nez v7, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    array-length v7, p3

    if-nez v7, :cond_2

    :cond_1
    return-object v8

    :cond_2
    const/4 v1, 0x0

    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v7, p2

    array-length v8, p3

    add-int/2addr v7, v8

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_1
    array-length v8, p2

    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_5

    aget-object v5, p2, v7

    .local v5, "packageName":Ljava/lang/String;
    const v9, 0x8000

    invoke-interface {p0, v5, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    move-object v1, v2

    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_2
    const-string v6, "CarrierAppUtils"

    const-string v7, "Could not reach PackageManager"

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    return-object v1

    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_5
    :try_start_2
    array-length v7, p3

    :goto_4
    if-ge v6, v7, :cond_7

    aget-object v3, p3, v6

    .local v3, "carrierApp":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {p0, v3, v8, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_6

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "carrierApp":Ljava/lang/String;
    :cond_7
    move-object v1, v2

    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_3

    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_1
    move-exception v4

    .restart local v4    # "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public static getDefaultCarrierApps(Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)Ljava/util/List;
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static {p0, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;

    move-result-object v1

    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-object v9

    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070010

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .local v6, "systemCarrierAppsEnabled":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    array-length v8, v6

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(I)V

    .local v2, "enabledCarrierAppsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v5, v6, v7

    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .restart local v5    # "packageName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/4 v3, 0x1

    .local v3, "hasPrivileges":Z
    :goto_2
    if-nez v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v3    # "hasPrivileges":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "hasPrivileges":Z
    goto :goto_2

    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "hasPrivileges":Z
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_6
    return-object v1
.end method
