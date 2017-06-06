.class public Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;
.super Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;
.source "HueSaturationBrightnessFilter.java"


# static fields
.field private static final FLAG_HUE_ADJUST:I = 0x1

.field private static final FLAG_HUE_MODIFY:I = 0x8

.field private static final FLAG_LUM_ADJUST:I = 0x4

.field private static final FLAG_LUM_MODIFY:I = 0x20

.field private static final FLAG_SATURATION_ADJUST:I = 0x2

.field private static final FLAG_SATURATION_MODIFY:I = 0x10


# instance fields
.field private mFlag:I

.field private mHueAdjust:F

.field private mHueModify:F

.field private mLumAdjust:F

.field private mLumModify:F

.field private mSaturationAdjust:F

.field private mSaturationModify:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/content/res/flymetheme/iconfilter/filters/BaseFilter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    return-void
.end method

.method private adjustColorChannelLum(I)I
    .locals 4
    .param p1, "c"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mLumAdjust:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    int-to-float v0, p1

    rsub-int v1, p1, 0xff

    int-to-float v1, v1

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mLumAdjust:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int p1, v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(III)I

    return p1

    :cond_1
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mLumAdjust:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    int-to-float v0, p1

    int-to-float v1, p1

    iget v2, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mLumAdjust:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_0
.end method

.method private adjustHsl([F)V
    .locals 5
    .param p1, "hsl"    # [F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    aget v0, p1, v3

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mHueAdjust:F

    add-float/2addr v0, v1

    aput v0, p1, v3

    aget v0, p1, v3

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, v4, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrainLoop(FFF)F

    move-result v0

    aput v0, p1, v3

    :cond_0
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget v0, p1, v2

    iget v1, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mSaturationAdjust:F

    add-float/2addr v0, v1

    aput v0, p1, v2

    aget v0, p1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v4, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(FFF)F

    move-result v0

    aput v0, p1, v2

    :cond_1
    return-void
.end method

.method private adjustLum(I)I
    .locals 6
    .param p1, "color"    # I

    .prologue
    iget v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .local v2, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .local v1, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .local v0, "b":I
    invoke-direct {p0, v2}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->adjustColorChannelLum(I)I

    move-result v3

    invoke-direct {p0, v1}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->adjustColorChannelLum(I)I

    move-result v4

    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->adjustColorChannelLum(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .end local v0    # "b":I
    .end local v1    # "g":I
    .end local v2    # "r":I
    :cond_0
    return p1
.end method

.method private adjustOrModify([F)V
    .locals 0
    .param p1, "hsl"    # [F

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->adjustHsl([F)V

    invoke-direct {p0, p1}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->modifyHsl([F)V

    return-void
.end method

.method private modifyHsl([F)V
    .locals 7
    .param p1, "hsl"    # [F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mHueModify:F

    aput v0, p1, v3

    aget v0, p1, v3

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v0, v2, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrainLoop(FFF)F

    move-result v0

    aput v0, p1, v3

    :cond_0
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mSaturationModify:F

    aput v0, p1, v4

    aget v0, p1, v4

    invoke-static {v0, v2, v6}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(FFF)F

    move-result v0

    aput v0, p1, v4

    :cond_1
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mLumModify:F

    aput v0, p1, v5

    aget v0, p1, v5

    invoke-static {v0, v2, v6}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(FFF)F

    move-result v0

    aput v0, p1, v5

    :cond_2
    return-void
.end method


# virtual methods
.method public filter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    if-ge v12, v7, :cond_1

    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    if-ge v11, v3, :cond_0

    mul-int v0, v12, v3

    add-int v10, v0, v11

    .local v10, "position":I
    const/4 v0, 0x3

    new-array v9, v0, [F

    .local v9, "hsl":[F
    aget v0, v1, v10

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .local v8, "alpha":I
    aget v0, v1, v10

    invoke-static {v0, v9}, Landroid/content/res/flymetheme/iconfilter/utils/ColorUtils;->colorToHSL(I[F)V

    invoke-direct {p0, v9}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->adjustOrModify([F)V

    invoke-static {v9}, Landroid/content/res/flymetheme/iconfilter/utils/ColorUtils;->HSLToColor([F)I

    move-result v0

    aput v0, v1, v10

    aget v0, v1, v10

    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->adjustLum(I)I

    move-result v0

    const v2, 0xffffff

    and-int/2addr v0, v2

    shl-int/lit8 v2, v8, 0x18

    or-int/2addr v0, v2

    aput v0, v1, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v8    # "alpha":I
    .end local v9    # "hsl":[F
    .end local v10    # "position":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v11    # "x":I
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setHueAdjust(I)V
    .locals 2
    .param p1, "hueAdjust"    # I

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    const/16 v0, -0xb4

    const/16 v1, 0xb4

    invoke-static {p1, v0, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(III)I

    move-result p1

    int-to-float v0, p1

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mHueAdjust:F

    return-void
.end method

.method public setHueModify(I)V
    .locals 2
    .param p1, "hueModify"    # I

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    const/4 v0, 0x0

    const/16 v1, 0x168

    invoke-static {p1, v0, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(III)I

    move-result p1

    int-to-float v0, p1

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mHueModify:F

    return-void
.end method

.method public setLumAdjust(I)V
    .locals 2
    .param p1, "lumAdjust"    # I

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(III)I

    move-result p1

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mLumAdjust:F

    return-void
.end method

.method public setLumModify(I)V
    .locals 2
    .param p1, "lumModify"    # I

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(III)I

    move-result p1

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mLumModify:F

    return-void
.end method

.method public setSaturationAdjust(I)V
    .locals 2
    .param p1, "saturationAdjust"    # I

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(III)I

    move-result p1

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mSaturationAdjust:F

    return-void
.end method

.method public setSaturationModify(I)V
    .locals 2
    .param p1, "saturationModify"    # I

    .prologue
    iget v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mFlag:I

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/content/res/flymetheme/iconfilter/utils/ConstrainUtils;->constrain(III)I

    move-result p1

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/flymetheme/iconfilter/filters/HueSaturationBrightnessFilter;->mSaturationModify:F

    return-void
.end method
