.class public Lcom/android/internal/telephony/TelephonyDevController;
.super Landroid/os/Handler;
.source "TelephonyDevController.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_HARDWARE_CONFIG_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TDC"

.field private static final mLock:Ljava/lang/Object;

.field private static mModems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static mSims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static sRilHardwareConfig:Landroid/os/Message;

.field private static sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyDevController;->initFromResource()V

    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method public static create()Lcom/android/internal/telephony/TelephonyDevController;
    .locals 3

    .prologue
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "TelephonyDevController already created!?!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/TelephonyDevController;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyDevController;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/TelephonyDevController;
    .locals 3

    .prologue
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "TelephonyDevController not yet created!?!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getModemCount()I
    .locals 4

    .prologue
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModemCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .param p0, "ar"    # Landroid/os/AsyncResult;

    .prologue
    iget-object v3, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "hwcfg":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v0, 0x0

    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_1

    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "hwcfg":Ljava/util/List;
    .end local v2    # "i":I
    :cond_2
    const-string v3, "handleGetHardwareConfigChanged - returned an error."

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private initFromResource()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "resource":Landroid/content/res/Resources;
    const v5, 0x1070042

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "hwStrings":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .local v1, "hwString":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HardwareConfig;-><init>(Ljava/lang/String;)V

    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    if-eqz v0, :cond_0

    iget v6, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    sget-object v6, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_1

    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "hwString":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "TDC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "TDC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p0, "cmdsIf"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    invoke-interface {p0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getHardwareConfig(Landroid/os/Message;)V

    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static unregisterRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p0, "cmdsIf"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHardwareConfigChanged(Landroid/os/Handler;)V

    return-void
.end method

.method private static updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "hw"    # Lcom/android/internal/telephony/HardwareConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/HardwareConfig;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    .local v1, "item":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v3, v1, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOrInsert: removing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "item":Lcom/android/internal/telephony/HardwareConfig;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOrInsert: inserting: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public getAllModems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "modems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "getAllModems: empty list."

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-object v2

    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "modem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    .local v0, "modem":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "modem$iterator":Ljava/util/Iterator;
    .end local v2    # "modems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getAllSims()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "sims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "getAllSims: empty list."

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-object v2

    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sim$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    .local v0, "sim":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "sim$iterator":Ljava/util/Iterator;
    .end local v2    # "sims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getAllSimsForModem(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "modemIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    sget-object v5, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "getAllSimsForModem: no registered sim device?!?"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v7

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v4

    if-le p1, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllSimsForModem: out-of-bounds access for modem device "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " max: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v7

    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllSimsForModem "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    .local v0, "modem":Lcom/android/internal/telephony/HardwareConfig;
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "sim$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/HardwareConfig;

    .local v2, "sim":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v4, v2, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    .end local v2    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    .end local v3    # "sim$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    .restart local v3    # "sim$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v5

    return-object v1
.end method

.method public getModem(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getModem: no registered modem device?!?"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v0

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModem: out-of-bounds access for modem device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " max: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getModemForSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 7
    .param p1, "simIndex"    # I

    .prologue
    const/4 v6, 0x0

    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "getModemForSim: no registered modem/sim device?!?"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v6

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v3

    if-le p1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModemForSim: out-of-bounds access for sim device "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " max: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v6

    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModemForSim "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getSim(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v2

    .local v2, "sim":Lcom/android/internal/telephony/HardwareConfig;
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "modem$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    .local v0, "modem":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v3, v0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    monitor-exit v4

    return-object v0

    .end local v0    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    :cond_4
    monitor-exit v4

    return-object v6

    .end local v1    # "modem$iterator":Ljava/util/Iterator;
    .end local v2    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getSim: no registered sim device?!?"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v0

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSim: out-of-bounds access for sim device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " max: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSim: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSimCount()I
    .locals 4

    .prologue
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "handleMessage: received EVENT_HARDWARE_CONFIG_CHANGED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
