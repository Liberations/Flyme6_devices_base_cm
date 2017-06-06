.class public Landroid/suda/lunar/LunarFestival;
.super Ljava/lang/Object;
.source "LunarFestival.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLunarFestival(Ljava/lang/String;Landroid/suda/lunar/Lunar;)Ljava/lang/String;
    .locals 7
    .param p0, "chinadate"    # Ljava/lang/String;
    .param p1, "lunar"    # Landroid/suda/lunar/Lunar;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/suda/lunar/Constant;->getLunarFestival()[Ljava/lang/String;

    move-result-object v1

    .local v1, "lunarFestivalArray":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_3

    aget-object v3, v1, v0

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "lunar_str":[Ljava/lang/String;
    aget-object v3, v2, v5

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    aget-object v3, v2, v5

    invoke-virtual {p1, v3}, Landroid/suda/lunar/Lunar;->isBigMonth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    :goto_1
    return-object v3

    :cond_0
    aget-object v3, v2, v6

    goto :goto_1

    :cond_1
    aget-object v3, v2, v6

    return-object v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "lunar_str":[Ljava/lang/String;
    :cond_3
    const-string v3, ""

    return-object v3
.end method
