.class public Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;
.super Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;
.source "ColorGradientFilter.java"


# instance fields
.field private mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mEndB:I

.field private mEndG:I

.field private mEndR:I

.field private mStartB:I

.field private mStartG:I

.field private mStartR:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;-><init>()V

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartR:I

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartG:I

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartB:I

    iput v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndR:I

    iput v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndG:I

    iput v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndB:I

    return-void
.end method

.method private createColorMatrix()Landroid/graphics/ColorMatrix;
    .locals 8

    .prologue
    const v7, 0x3f1645a2    # 0.587f

    const v6, 0x3e991687    # 0.299f

    const v5, 0x3de978d5    # 0.114f

    const/4 v4, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mColorMatrix:Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v0, v1, [F

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndR:I

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartR:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v6

    div-float/2addr v1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndR:I

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartR:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v7

    div-float/2addr v1, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndR:I

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartR:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput v4, v0, v1

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartR:I

    int-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndG:I

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartG:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v6

    div-float/2addr v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndG:I

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartG:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v7

    div-float/2addr v1, v3

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndG:I

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartG:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v3

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x8

    aput v4, v0, v1

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartG:I

    int-to-float v1, v1

    const/16 v2, 0x9

    aput v1, v0, v2

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndB:I

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartB:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v6

    div-float/2addr v1, v3

    const/16 v2, 0xa

    aput v1, v0, v2

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndB:I

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartB:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v7

    div-float/2addr v1, v3

    const/16 v2, 0xb

    aput v1, v0, v2

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndB:I

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartB:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v3

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0xd

    aput v4, v0, v1

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartB:I

    int-to-float v1, v1

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0x13

    aput v4, v0, v1

    .local v0, "floatMatrix":[F
    iget-object v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mColorMatrix:Landroid/graphics/ColorMatrix;

    return-object v1
.end method


# virtual methods
.method public filter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mColorMatrix:Landroid/graphics/ColorMatrix;

    if-nez v3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mColorMatrix:Landroid/graphics/ColorMatrix;

    if-nez v3, :cond_0

    invoke-direct {p0}, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->createColorMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v3

    iput-object v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mColorMatrix:Landroid/graphics/ColorMatrix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "dstBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v4, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "dstBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "paint":Landroid/graphics/Paint;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setEndColor(I)V
    .locals 1
    .param p1, "endColor"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndR:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndG:I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mEndB:I

    return-void
.end method

.method public setStartColor(I)V
    .locals 1
    .param p1, "startColor"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartR:I

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartG:I

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/ColorGradientFilter;->mStartB:I

    return-void
.end method
