.class Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteJobsMapToDiskRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method private constructor <init>(Lcom/android/server/job/JobStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;

    .prologue
    iput-object p1, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;-><init>(Lcom/android/server/job/JobStore;)V

    return-void
.end method

.method private addIdentifierAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v0, "jobid"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "package"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "class"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "uid"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v0, "extras"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "extras"

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "constraints"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unmetered"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "connectivity"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "idle"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "charging"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const-string v0, "constraints"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 13
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    .local v4, "job":Landroid/app/job/JobInfo;
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "periodic"

    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "period"

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long v0, v6, v8

    .local v0, "deadlineWallclock":J
    const-string v5, "deadline"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v0    # "deadlineWallclock":J
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long v2, v6, v8

    .local v2, "delayWallclock":J
    const-string v5, "delay"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .end local v2    # "delayWallclock":J
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    :cond_2
    const-string v5, "backoff-policy"

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "initial-backoff"

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v12, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "periodic"

    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    return-void

    :cond_4
    const-string v5, "one-off"

    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :cond_5
    const-string v5, "one-off"

    invoke-interface {p1, v12, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1
.end method

.method private writeJobsMapImpl(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "jobList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v7, "job-info"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "version"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v6, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .local v5, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    const-string v7, "job"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0, v6, v5}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->addIdentifierAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    invoke-direct {p0, v6, v5}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    invoke-direct {p0, v6, v5}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v7, "job"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v5    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    const-string v7, "job-info"

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v7, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v7}, Lcom/android/server/job/JobStore;->-get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v7, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v7}, Lcom/android/server/job/JobStore;->-get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    iget-object v7, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/job/JobStore;->-set0(Lcom/android/server/job/JobStore;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .local v10, "startElapsed":J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "mStoreCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v12, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    monitor-enter v12

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .local v8, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v4

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IJJ)V

    .local v1, "copy":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "copy":Lcom/android/server/job/controllers/JobStatus;
    .end local v8    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    monitor-exit v12

    invoke-direct {p0, v9}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;->writeJobsMapImpl(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2
.end method
