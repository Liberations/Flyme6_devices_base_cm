.class Lcom/android/internal/telephony/cat/DTTZResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private byteToBCD(I)B
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    if-gez p1, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Err: byteToBCD conversion Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Value has to be between 0 and 99"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v1, p1, 0xa

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private getTZOffSetByte(J)B
    .locals 7
    .param p1, "offSetVal"    # J

    .prologue
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    .local v1, "isNegative":Z
    :goto_0
    const-wide/32 v4, 0xdbba0

    div-long v2, p1, v4

    .local v2, "tzOffset":J
    if-eqz v1, :cond_1

    const/4 v4, -0x1

    :goto_1
    int-to-long v4, v4

    mul-long/2addr v2, v4

    long-to-int v4, v2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v0

    .local v0, "bcdVal":B
    if-eqz v1, :cond_2

    or-int/lit8 v4, v0, 0x8

    int-to-byte v0, v4

    :goto_2
    int-to-byte v4, v4

    return v4

    .end local v0    # "bcdVal":B
    .end local v1    # "isNegative":Z
    .end local v2    # "tzOffset":J
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isNegative":Z
    goto :goto_0

    .restart local v2    # "tzOffset":J
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .restart local v0    # "bcdVal":B
    :cond_2
    move v4, v0

    goto :goto_2
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 12
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v11, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v7

    or-int/lit16 v2, v7, 0x80

    .local v2, "tag":I
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v7, 0x8

    new-array v1, v7, [B

    .local v1, "data":[B
    aput-byte v10, v1, v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    rem-int/lit8 v7, v7, 0x64

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v7

    aput-byte v7, v1, v8

    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v7

    aput-byte v7, v1, v9

    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v7

    const/4 v8, 0x3

    aput-byte v7, v1, v8

    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v7

    const/4 v8, 0x4

    aput-byte v7, v1, v8

    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v7

    aput-byte v7, v1, v11

    iget-object v7, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v7

    const/4 v8, 0x6

    aput-byte v7, v1, v8

    const-string v7, "persist.sys.timezone"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "tz":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    aput-byte v7, v1, v10

    :goto_0
    array-length v7, v1

    :goto_1
    if-ge v6, v7, :cond_3

    aget-byte v0, v1, v6

    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0    # "b":B
    :cond_2
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .local v4, "zone":Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v8

    add-int v5, v7, v8

    .local v5, "zoneOffset":I
    int-to-long v8, v5

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/cat/DTTZResponseData;->getTZOffSetByte(J)B

    move-result v7

    aput-byte v7, v1, v10

    goto :goto_0

    .end local v4    # "zone":Ljava/util/TimeZone;
    .end local v5    # "zoneOffset":I
    :cond_3
    return-void
.end method
