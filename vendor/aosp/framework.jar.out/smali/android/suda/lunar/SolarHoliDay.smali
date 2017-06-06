.class public Landroid/suda/lunar/SolarHoliDay;
.super Ljava/lang/Object;
.source "SolarHoliDay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSolarHoliDay(III)Ljava/lang/String;
    .locals 10
    .param p0, "currentYear"    # I
    .param p1, "currentMonth"    # I
    .param p2, "currentDayForMonth"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "num_date":Ljava/lang/String;
    invoke-static {}, Landroid/suda/lunar/Constant;->getSolarHoliday()[Ljava/lang/String;

    move-result-object v2

    .local v2, "solarHolidayArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-object v4, v2, v0

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "solarHolidayDateStr":[Ljava/lang/String;
    aget-object v4, v3, v8

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v9

    return-object v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "solarHolidayDateStr":[Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/suda/lunar/SolarHoliDay;->getSpecialDay(III)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSpecialDay(III)Ljava/lang/String;
    .locals 15
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    invoke-static {}, Landroid/suda/lunar/Constant;->getSpecday()[Ljava/lang/String;

    move-result-object v9

    .local v9, "specDays":[Ljava/lang/String;
    const/4 v11, 0x0

    array-length v12, v9

    :goto_0
    if-ge v11, v12, :cond_3

    aget-object v8, v9, v11

    .local v8, "specDay":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    .local v7, "monthIndex":I
    move/from16 v0, p1

    if-eq v0, v7, :cond_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .local v10, "weekIndex":I
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "dayIndex":I
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    aget-object v4, v13, v14

    .local v4, "dayName":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v13, 0x1

    invoke-virtual {v2, v13, p0}, Ljava/util/Calendar;->set(II)V

    const/4 v13, 0x2

    move/from16 v0, p1

    invoke-virtual {v2, v13, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    const/4 v13, 0x7

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v5, v13, -0x1

    .local v5, "dayOfWeek":I
    sub-int v6, v3, v5

    .local v6, "mark":I
    if-ltz v6, :cond_2

    add-int/lit8 v10, v10, -0x1

    :cond_2
    mul-int/lit8 v13, v10, 0x7

    add-int v1, v6, v13

    .local v1, "addDay":I
    const/4 v13, 0x5

    invoke-virtual {v2, v13, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move/from16 v0, p2

    if-ne v13, v0, :cond_0

    return-object v4

    .end local v1    # "addDay":I
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "dayIndex":I
    .end local v4    # "dayName":Ljava/lang/String;
    .end local v5    # "dayOfWeek":I
    .end local v6    # "mark":I
    .end local v7    # "monthIndex":I
    .end local v8    # "specDay":Ljava/lang/String;
    .end local v10    # "weekIndex":I
    :cond_3
    const-string v11, ""

    return-object v11
.end method
