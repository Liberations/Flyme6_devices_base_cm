.class Lcom/android/server/wifi/WifiLogger;
.super Lcom/android/server/wifi/DummyWifiLogger;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLogger$BugReport;,
        Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;,
        Lcom/android/server/wifi/WifiLogger$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final MAX_ALERT_REPORTS:I = 0x1

.field public static final MAX_BUG_REPORTS:I = 0x4

.field public static final MAX_RING_BUFFERS:I = 0xa

.field private static final MinBufferSizes:[I

.field private static final MinWakeupIntervals:[I

.field public static final REPORT_REASON_ASSOC_FAILURE:I = 0x1

.field public static final REPORT_REASON_AUTH_FAILURE:I = 0x2

.field public static final REPORT_REASON_AUTOROAM_FAILURE:I = 0x3

.field public static final REPORT_REASON_DHCP_FAILURE:I = 0x4

.field public static final REPORT_REASON_NONE:I = 0x0

.field public static final REPORT_REASON_SCAN_FAILURE:I = 0x6

.field public static final REPORT_REASON_UNEXPECTED_DISCONNECT:I = 0x5

.field public static final REPORT_REASON_USER_ACTION:I = 0x7

.field public static final RING_BUFFER_FLAG_HAS_ASCII_ENTRIES:I = 0x2

.field public static final RING_BUFFER_FLAG_HAS_BINARY_ENTRIES:I = 0x1

.field public static final RING_BUFFER_FLAG_HAS_PER_PACKET_ENTRIES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiLogger"

.field public static final VERBOSE_DETAILED_LOG_WITH_WAKEUP:I = 0x3

.field public static final VERBOSE_LOG_WITH_WAKEUP:I = 0x2

.field public static final VERBOSE_NORMAL_LOG:I = 0x1

.field public static final VERBOSE_NO_LOG:I


# instance fields
.field private mDriverVersion:Ljava/lang/String;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private final mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<",
            "Lcom/android/server/wifi/WifiLogger$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private mLogLevel:I

.field private mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mRingBufferData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private mSupportedFeatureSet:I

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -wrap0([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiLogger;->compressToBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x4000

    const/4 v3, 0x0

    const/16 v0, 0xe10

    const/16 v1, 0x3c

    const/16 v2, 0xa

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiLogger;->MinWakeupIntervals:[I

    const/high16 v0, 0x10000

    filled-new-array {v3, v4, v4, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 2
    .param p1, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/DummyWifiLogger;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    new-instance v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/wifi/WifiLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiLogger$1;-><init>(Lcom/android/server/wifi/WifiLogger;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    iput-object p1, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-void
.end method

.method private captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "captureFWDump"    # Z

    .prologue
    const/4 v5, 0x0

    new-instance v4, Lcom/android/server/wifi/WifiLogger$BugReport;

    invoke-direct {v4, v5}, Lcom/android/server/wifi/WifiLogger$BugReport;-><init>(Lcom/android/server/wifi/WifiLogger$BugReport;)V

    .local v4, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput p1, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->errorCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->systemTimeMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->kernelTimeNanos:J

    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v5, 0x0

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v5, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    .local v2, "data":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v5

    new-array v1, v5, [[B

    .local v1, "buffers":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->ringBuffers:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "buffers":[[B
    .end local v2    # "data":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    .end local v3    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDump()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiLogger$BugReport;->fwMemoryDump:[B

    :cond_2
    return-object v4
.end method

.method private static compressToBase64([B)Ljava/lang/String;
    .locals 10
    .param p0, "input"    # [B

    .prologue
    const/4 v9, 0x0

    new-instance v3, Ljava/util/zip/Deflater;

    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    .local v3, "compressor":Ljava/util/zip/Deflater;
    const/16 v7, 0x9

    invoke-virtual {v3, v7}, Ljava/util/zip/Deflater;->setLevel(I)V

    invoke-virtual {v3, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v7, p0

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v4

    .local v4, "count":I
    invoke-virtual {v0, v1, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .end local v4    # "count":I
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .local v2, "compressed":[B
    array-length v7, v2

    array-length v8, p0

    if-ge v7, v8, :cond_1

    .end local v2    # "compressed":[B
    :goto_1
    invoke-static {v2, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .local v6, "result":Ljava/lang/String;
    return-object v6

    .end local v6    # "result":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    const-string v7, "WifiLogger"

    const-string v8, "ByteArrayOutputStream close error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/String;
    return-object v6

    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "result":Ljava/lang/String;
    .restart local v2    # "compressed":[B
    :cond_1
    move-object v2, p0

    goto :goto_1
.end method

.method private fetchRingBuffers()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v3, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    new-instance v8, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v6, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_3
    const-string v3, "WifiLogger"

    const-string v4, "no ring buffers found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v3, :cond_5

    :goto_1
    return v1

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method private getAllRingBufferData()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v2, :cond_0

    const-string v2, "WifiLogger"

    const-string v4, "Not ring buffers available to collect data!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .local v0, "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    if-nez v1, :cond_1

    const-string v2, "WifiLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get ring buffer data of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "element":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v1    # "result":Z
    :cond_2
    const-string v2, "WifiLogger"

    const-string v3, "getAllRingBufferData Successfully!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method private startLoggingAllExceptPerPacketBuffers()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget v4, v0, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    goto :goto_1

    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 5
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .prologue
    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/wifi/WifiLogger;->MinWakeupIntervals:[I

    iget v3, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    aget v1, v2, v3

    .local v1, "minInterval":I
    sget-object v2, Lcom/android/server/wifi/WifiLogger;->MinBufferSizes:[I

    iget v3, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    aget v0, v2, v3

    .local v0, "minDataSize":I
    iget v2, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    iget-object v3, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-static {v2, v4, v1, v0, v3}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v4

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private stopLoggingAllBuffers()Z
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .local v0, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 2
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-static {v1, v1, v1, v1, v0}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "alertData"    # [B

    .prologue
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    move-result-object v0

    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iput-object p2, v0, Lcom/android/server/wifi/WifiLogger$BugReport;->alertData:[B

    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiLogger;->captureBugreport(IZ)Lcom/android/server/wifi/WifiLogger$BugReport;

    move-result-object v0

    .local v0, "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "report":Lcom/android/server/wifi/WifiLogger$BugReport;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "Chipset information :-----------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FW Version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Driver Version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiLogger;->mDriverVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Feature set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiLogger;->mSupportedFeatureSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastAlerts:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bug dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mLastBugReports:Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 3
    .param p1, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p2, "buffer"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiLogger;->mRingBufferData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;

    .local v0, "ring":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .end local v0    # "ring":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<[B>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized onWifiAlert(I[B)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "buffer"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 1
    .param p1, "verboseEnabled"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mFirmwareVersion:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mDriverVersion:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mSupportedFeatureSet:I

    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->fetchRingBuffers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->startLoggingAllExceptPerPacketBuffers()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPacketLog()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopLogging()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->resetLogHandler()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiLogger"

    const-string v1, "Fail to reset log handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingAllBuffers()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiLogger;->mLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLogger;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
