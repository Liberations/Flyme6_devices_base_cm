.class public Landroid/suda/lunar/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# static fields
.field private static final lunarInfo:[J


# instance fields
.field private chineseDateFormat:Ljava/text/SimpleDateFormat;

.field private chineseNumber:[Ljava/lang/String;

.field private day:I

.field private leap:Z

.field private lunarMonthName:[Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private month:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    return-void

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 20
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    .local v11, "leapMonth":I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/suda/lunar/Lunar;->mCalendar:Ljava/util/Calendar;

    sget-object v15, Landroid/suda/lunar/Constant;->CHINESE_NUMBER_CN:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/suda/lunar/Lunar;->chineseNumber:[Ljava/lang/String;

    sget-object v15, Landroid/suda/lunar/Constant;->LUNAR_MONTH_NAME_CN:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/suda/lunar/Lunar;->lunarMonthName:[Ljava/lang/String;

    const-string v7, "yyyy\u5e74MM\u6708dd\u65e5"

    .local v7, "format1":Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    invoke-direct {v15, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/suda/lunar/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v2, 0x0

    .local v2, "baseDate":Ljava/util/Date;
    :try_start_0
    const-string v8, "1900\u5e741\u670831\u65e5"

    .local v8, "format2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/suda/lunar/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v15, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v2    # "baseDate":Ljava/util/Date;
    .end local v8    # "format2":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    const-wide/32 v18, 0x5265c00

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v13, v0

    .local v13, "offset":I
    add-int/lit8 v3, v13, 0x28

    .local v3, "dayCyl":I
    const/16 v12, 0xe

    .local v12, "monCyl":I
    const/4 v5, 0x0

    .local v5, "daysOfYear":I
    const/16 v10, 0x76c

    .local v10, "iYear":I
    :goto_1
    const/16 v15, 0x802

    if-ge v10, v15, :cond_0

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/suda/lunar/Lunar;->yearDays(I)I

    move-result v5

    sub-int/2addr v13, v5

    add-int/lit8 v12, v12, 0xc

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v3    # "dayCyl":I
    .end local v5    # "daysOfYear":I
    .end local v10    # "iYear":I
    .end local v12    # "monCyl":I
    .end local v13    # "offset":I
    .restart local v2    # "baseDate":Ljava/util/Date;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "baseDate":Ljava/util/Date;
    .end local v6    # "e":Ljava/text/ParseException;
    .restart local v3    # "dayCyl":I
    .restart local v5    # "daysOfYear":I
    .restart local v10    # "iYear":I
    .restart local v12    # "monCyl":I
    .restart local v13    # "offset":I
    :cond_0
    if-gez v13, :cond_1

    add-int/2addr v13, v5

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v12, v12, -0xc

    :cond_1
    move-object/from16 v0, p0

    iput v10, v0, Landroid/suda/lunar/Lunar;->year:I

    add-int/lit16 v14, v10, -0x748

    .local v14, "yearCyl":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/suda/lunar/Lunar;->leapMonth(I)I

    move-result v11

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    const/4 v4, 0x0

    .local v4, "daysOfMonth":I
    const/4 v9, 0x1

    .local v9, "iMonth":I
    :goto_2
    const/16 v15, 0xd

    if-ge v9, v15, :cond_6

    if-lez v13, :cond_6

    if-lez v11, :cond_2

    add-int/lit8 v15, v11, 0x1

    if-ne v9, v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    if-eqz v15, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/suda/lunar/Lunar;->year:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Landroid/suda/lunar/Lunar;->monthDays(II)I

    move-result v4

    :goto_3
    sub-int/2addr v13, v4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    if-eqz v15, :cond_3

    add-int/lit8 v15, v11, 0x1

    if-ne v9, v15, :cond_3

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    if-nez v15, :cond_4

    add-int/lit8 v12, v12, 0x1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v9, -0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    move-object/from16 v0, p0

    iget v15, v0, Landroid/suda/lunar/Lunar;->year:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/suda/lunar/Lunar;->leapDays(I)I

    move-result v4

    goto :goto_3

    :cond_6
    if-nez v13, :cond_7

    if-lez v11, :cond_7

    add-int/lit8 v15, v11, 0x1

    if-ne v9, v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    :cond_7
    :goto_4
    if-gez v13, :cond_8

    add-int/2addr v13, v4

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v12, v12, -0x1

    :cond_8
    move-object/from16 v0, p0

    iput v9, v0, Landroid/suda/lunar/Lunar;->month:I

    add-int/lit8 v15, v13, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/suda/lunar/Lunar;->day:I

    return-void

    :cond_9
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/suda/lunar/Lunar;->leap:Z

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_4
.end method

.method private cyclicalm(I)Ljava/lang/String;
    .locals 4
    .param p1, "num"    # I

    .prologue
    sget-object v0, Landroid/suda/lunar/Constant;->GAN_CN:[Ljava/lang/String;

    .local v0, "Gan":[Ljava/lang/String;
    sget-object v1, Landroid/suda/lunar/Constant;->ZHI_CN:[Ljava/lang/String;

    .local v1, "Zhi":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, p1, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private leapDays(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/suda/lunar/Lunar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    return v0

    :cond_0
    const/16 v0, 0x1d

    return v0

    :cond_1
    return v1
.end method

.method private leapMonth(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    sget-object v0, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private monthDays(II)I
    .locals 4
    .param p1, "y"    # I
    .param p2, "m"    # I

    .prologue
    sget-object v0, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p2

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method private yearDays(I)I
    .locals 6
    .param p1, "y"    # I

    .prologue
    const/16 v1, 0x15c

    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    sget-object v2, Landroid/suda/lunar/Lunar;->lunarInfo:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/suda/lunar/Lunar;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public animalsYear()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-static {}, Landroid/suda/lunar/Constant;->getAnimals()[Ljava/lang/String;

    move-result-object v0

    .local v0, "Animals":[Ljava/lang/String;
    iget v1, p0, Landroid/suda/lunar/Lunar;->year:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v1, v0, v1

    return-object v1
.end method

.method public cyclical()Ljava/lang/String;
    .locals 2

    .prologue
    iget v1, p0, Landroid/suda/lunar/Lunar;->year:I

    add-int/lit16 v1, v1, -0x76c

    add-int/lit8 v0, v1, 0x24

    .local v0, "num":I
    invoke-direct {p0, v0}, Landroid/suda/lunar/Lunar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getChinaDayString(I)Ljava/lang/String;
    .locals 4
    .param p1, "day"    # I

    .prologue
    const/16 v3, 0x1e

    sget-object v0, Landroid/suda/lunar/Constant;->CHINESE_TEN_CN:[Ljava/lang/String;

    .local v0, "chineseTen":[Ljava/lang/String;
    rem-int/lit8 v2, p1, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .local v1, "n":I
    :goto_0
    if-le p1, v3, :cond_1

    const-string v2, ""

    return-object v2

    .end local v1    # "n":I
    :cond_0
    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "n":I
    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    const-string v2, "\u521d\u5341"

    return-object v2

    :cond_2
    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    const-string v2, "\u4e8c\u5341"

    return-object v2

    :cond_3
    if-ne p1, v3, :cond_4

    const-string v2, "\u4e09\u5341"

    return-object v2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/suda/lunar/Lunar;->chineseNumber:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isBigMonth(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lunarFestivalStr"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Landroid/suda/lunar/Lunar;->year:I

    iget v1, p0, Landroid/suda/lunar/Lunar;->month:I

    invoke-direct {p0, v0, v1}, Landroid/suda/lunar/Lunar;->monthDays(II)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v2, "\u5e74"

    .local v2, "year1":Ljava/lang/String;
    invoke-static {}, Landroid/suda/lunar/Constant;->getLeap()Ljava/lang/String;

    move-result-object v1

    .local v1, "run1":Ljava/lang/String;
    const-string v0, "\u6708"

    .local v0, "month1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/suda/lunar/Lunar;->cyclical()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/suda/lunar/Lunar;->animalsYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/suda/lunar/Lunar;->leap:Z

    if-eqz v4, :cond_0

    .end local v1    # "run1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/suda/lunar/Lunar;->lunarMonthName:[Ljava/lang/String;

    iget v5, p0, Landroid/suda/lunar/Lunar;->month:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/suda/lunar/Lunar;->day:I

    invoke-virtual {p0, v4}, Landroid/suda/lunar/Lunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .restart local v1    # "run1":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
