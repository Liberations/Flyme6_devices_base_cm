.class public Landroid/suda/utils/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, p0, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .local v4, "shader":Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public static getColoredBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    if-nez p0, :cond_0

    return-object v6

    :cond_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "colorBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/suda/utils/ImageHelper;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "grayscaleBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .local v4, "pp":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .local v2, "frontFilter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "cc":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v3
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    const/high16 v11, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    if-nez p0, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .local v5, "rectF":Landroid/graphics/RectF;
    const/high16 v6, 0x41c00000    # 24.0f

    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v5, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method public static resize(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "size"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return-object v10

    :cond_1
    invoke-static {p0, p2}, Landroid/suda/utils/Converter;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    .local v4, "newSize":I
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "scaledBitmap":Landroid/graphics/Bitmap;
    int-to-float v10, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v6, v10, v11

    .local v6, "ratioX":F
    int-to-float v10, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .local v7, "ratioY":F
    int-to-float v10, v4

    div-float v2, v10, v12

    .local v2, "middleX":F
    int-to-float v10, v4

    div-float v3, v10, v12

    .local v3, "middleY":F
    new-instance v5, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v5, v10}, Landroid/graphics/Paint;-><init>(I)V

    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .local v8, "scaleMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v6, v7, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v10, v2, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float v11, v3, v11

    invoke-virtual {v1, v0, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v10
.end method

.method private static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bmpOriginal"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .local v7, "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmpGrayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .local v2, "cm":Landroid/graphics/ColorMatrix;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v6, "rect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .local v3, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method
