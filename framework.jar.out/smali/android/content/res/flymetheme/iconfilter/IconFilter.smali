.class public Landroid/content/res/flymetheme/iconfilter/IconFilter;
.super Ljava/lang/Object;
.source "IconFilter.java"


# static fields
.field private static sMe:Landroid/content/res/flymetheme/iconfilter/IconFilter;


# instance fields
.field private isLoaded:Z

.field private mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "filterUtils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->sMe:Landroid/content/res/flymetheme/iconfilter/IconFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->isLoaded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->isLoaded:Z

    return-void
.end method

.method private addColorLevelFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V
    .locals 15
    .param p1, "filter"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;

    invoke-direct {v0}, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;-><init>()V

    .local v0, "colorLevelFilter":Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->getParams()Ljava/util/Map;

    move-result-object v14

    .local v14, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ColorChannel"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "colorChannel":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v1, "R"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "r"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x1

    :goto_0
    or-int/lit8 v8, v1, 0x0

    .local v8, "flag":I
    const-string v1, "G"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "g"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    const/4 v1, 0x2

    :goto_1
    or-int/2addr v8, v1

    const-string v1, "B"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "b"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    const/4 v1, 0x4

    :goto_2
    or-int/2addr v8, v1

    if-eqz v8, :cond_3

    invoke-virtual {v0, v8}, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->setFlag(I)V

    .end local v8    # "flag":I
    :cond_3
    const-string v1, "InputMin"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "inputMin":Ljava/lang/String;
    const-string v1, "InputMiddle"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "inputMid":Ljava/lang/String;
    const-string v1, "InputMax"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "inputMax":Ljava/lang/String;
    const-string v1, "OutputMin"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "outputMin":Ljava/lang/String;
    const-string v1, "OutputMax"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "outputMax":Ljava/lang/String;
    invoke-direct {p0, v9}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInputMaxOrOutputMax(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v11}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInputMinOrOutputMin(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_7

    return-void

    .end local v9    # "inputMax":Ljava/lang/String;
    .end local v10    # "inputMid":Ljava/lang/String;
    .end local v11    # "inputMin":Ljava/lang/String;
    .end local v12    # "outputMax":Ljava/lang/String;
    .end local v13    # "outputMin":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .restart local v8    # "flag":I
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .end local v8    # "flag":I
    .restart local v9    # "inputMax":Ljava/lang/String;
    .restart local v10    # "inputMid":Ljava/lang/String;
    .restart local v11    # "inputMin":Ljava/lang/String;
    .restart local v12    # "outputMax":Ljava/lang/String;
    .restart local v13    # "outputMin":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v11}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInputMinOrOutputMin(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v10}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInputMiddle(Ljava/lang/String;)F

    move-result v2

    invoke-direct {p0, v9}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInputMaxOrOutputMax(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v13}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInputMinOrOutputMin(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v12}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->getInputMaxOrOutputMax(Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;->setParams(IFIII)V

    iget-object v1, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "colorLevelFilter":Landroid/content/res/flymetheme/iconfilter/filters/ColorLevelFilter;
    .end local v6    # "colorChannel":Ljava/lang/String;
    .end local v9    # "inputMax":Ljava/lang/String;
    .end local v10    # "inputMid":Ljava/lang/String;
    .end local v11    # "inputMin":Ljava/lang/String;
    .end local v12    # "outputMax":Ljava/lang/String;
    .end local v13    # "outputMin":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private addColorMappingFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V
    .locals 6
    .param p1, "filter"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    .prologue
    :try_start_0
    new-instance v0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;

    invoke-direct {v0}, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;-><init>()V

    .local v0, "colorGradientFilter":Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;
    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->getParams()Ljava/util/Map;

    move-result-object v3

    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "StartColor"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "startColor":Ljava/lang/String;
    const-string v5, "EndColor"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "endColor":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumericWithRadix16(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumericWithRadix16(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->setStartColor(I)V

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->setEndColor(I)V

    iget-object v5, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "colorGradientFilter":Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;
    .end local v2    # "endColor":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "startColor":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v0    # "colorGradientFilter":Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;
    .restart local v2    # "endColor":Ljava/lang/String;
    .restart local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "startColor":Ljava/lang/String;
    :cond_0
    return-void

    .end local v0    # "colorGradientFilter":Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;
    .end local v2    # "endColor":Ljava/lang/String;
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "startColor":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addEdgeDetect(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V
    .locals 6
    .param p1, "filter"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    .prologue
    :try_start_0
    new-instance v3, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;

    invoke-direct {v3}, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;-><init>()V

    .local v3, "edgeFilter":Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;
    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->getParams()Ljava/util/Map;

    move-result-object v4

    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "EdgeColor"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "edgeColor":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumericWithRadix16(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "color":I
    invoke-virtual {v3, v0}, Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;->setEdgeColor(I)V

    iget-object v5, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "color":I
    .end local v2    # "edgeColor":Ljava/lang/String;
    .end local v3    # "edgeFilter":Landroid/content/res/flymetheme/iconfilter/filters/EdgeFilter;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    .prologue
    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GradientMapping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->addColorMappingFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Hsl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->addHSLFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V

    goto :goto_0

    :cond_2
    const-string v1, "ColorLevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->addColorLevelFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V

    goto :goto_0

    :cond_3
    const-string v1, "EdgeDetect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->addEdgeDetect(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V

    goto :goto_0
.end method

.method private addFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V
    .locals 14
    .param p1, "config"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->getPoints()Ljava/util/List;

    move-result-object v5

    .local v5, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v4, v6, :cond_0

    invoke-interface {v5, v4, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    invoke-static {v6, v7, v8, v9}, Landroid/content/res/flymetheme/iconfilter/utils/ShapeUtils;->isCanFormParallelogram(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    new-instance v0, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;

    invoke-direct {v0}, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;-><init>()V

    .local v0, "deformFilter":Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;->setPoint(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object v6, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0    # "deformFilter":Landroid/content/res/flymetheme/iconfilter/filters/DeformFilter;
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;->getFilters()Ljava/util/List;

    move-result-object v3

    .local v3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "filter$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    .local v1, "filter":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    invoke-direct {p0, v1}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->addFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V

    goto :goto_1

    .end local v1    # "filter":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;
    .end local v2    # "filter$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private addHSLFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;)V
    .locals 10
    .param p1, "filter"    # Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;

    invoke-direct {v1}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;-><init>()V

    .local v1, "hslFilter":Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;
    invoke-virtual {p1}, Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo$Filter;->getParams()Ljava/util/Map;

    move-result-object v6

    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "HueAdjust"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "hueAdjust":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->setHueAdjust(I)V

    :cond_0
    const-string v9, "SaturationAdjust"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "saturationAdjust":Ljava/lang/String;
    invoke-static {v7}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->setSaturationAdjust(I)V

    :cond_1
    const-string v9, "LumAdjust"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "lumAdjust":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->setLumAdjust(I)V

    :cond_2
    const-string v9, "HueModify"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "hueModify":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->setHueModify(I)V

    :cond_3
    const-string v9, "SaturationModify"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "saturationModify":Ljava/lang/String;
    invoke-static {v8}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->setSaturationModify(I)V

    :cond_4
    const-string v9, "LumModify"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "lumModify":Ljava/lang/String;
    invoke-static {v5}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->setLumModify(I)V

    :cond_5
    iget-object v9, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "hslFilter":Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;
    .end local v2    # "hueAdjust":Ljava/lang/String;
    .end local v3    # "hueModify":Ljava/lang/String;
    .end local v4    # "lumAdjust":Ljava/lang/String;
    .end local v5    # "lumModify":Ljava/lang/String;
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "saturationAdjust":Ljava/lang/String;
    .end local v8    # "saturationModify":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getInputMaxOrOutputMax(Ljava/lang/String;)I
    .locals 1
    .param p1, "max"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xff

    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getInputMiddle(Ljava/lang/String;)F
    .locals 1
    .param p1, "inputMid"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isFloatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getInputMinOrOutputMin(Ljava/lang/String;)I
    .locals 1
    .param p1, "Min"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/content/res/flymetheme/iconfilter/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/content/res/flymetheme/iconfilter/IconFilter;
    .locals 2

    .prologue
    sget-object v0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->sMe:Landroid/content/res/flymetheme/iconfilter/IconFilter;

    if-nez v0, :cond_1

    const-class v1, Landroid/content/res/flymetheme/iconfilter/IconFilter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->sMe:Landroid/content/res/flymetheme/iconfilter/IconFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/flymetheme/iconfilter/IconFilter;

    invoke-direct {v0}, Landroid/content/res/flymetheme/iconfilter/IconFilter;-><init>()V

    sput-object v0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->sMe:Landroid/content/res/flymetheme/iconfilter/IconFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->sMe:Landroid/content/res/flymetheme/iconfilter/IconFilter;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cleanFilter()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->isLoaded:Z

    return-void
.end method

.method public filter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->isLoaded:Z

    if-nez v3, :cond_0

    return-object p1

    :cond_0
    iget-object v3, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->mFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "filter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;

    .local v1, "filter":Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;
    invoke-virtual {v1, p1}, Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;->filter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .end local v1    # "filter":Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;
    :cond_1
    return-object p1

    .end local v2    # "filter$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->isLoaded:Z

    return v0
.end method

.method public setConfig(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p1}, Landroid/content/res/flymetheme/iconfilter/utils/XmlUtils;->parseXml(Ljava/io/InputStream;)Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;

    move-result-object v0

    .local v0, "config":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/iconfilter/IconFilter;->addFilter(Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "config":Landroid/content/res/flymetheme/iconfilter/bean/FilterConfigInfo;
    :goto_0
    iput-boolean v4, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->isLoaded:Z

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IconFilter"

    const-string v3, "File config is not existed or config is not a xml file!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iput-boolean v4, p0, Landroid/content/res/flymetheme/iconfilter/IconFilter;->isLoaded:Z

    throw v2
.end method
