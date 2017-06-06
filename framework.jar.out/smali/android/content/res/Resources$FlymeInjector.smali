.class final Landroid/content/res/Resources$FlymeInjector;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    iget-object v4, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "file":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v2, v4}, Landroid/content/res/Resources$FlymeInjector;->loadFlymeThemeDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    iget-object v4, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v5, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static getFlymeThemeColor(Landroid/content/res/Resources;I)Landroid/content/res/flymetheme/ColorInfo;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x0

    :try_start_0
    iget-object v7, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "resFullName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "index":I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "resName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "resPackageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/res/flymetheme/FlymeThemeUtils;->getResType(Ljava/lang/String;)I

    move-result v5

    .local v5, "resType":I
    iget-object v7, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v7, v3, v5}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeColor(Ljava/lang/String;I)Landroid/content/res/flymetheme/ColorInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .local v6, "themeColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    return-object v6

    .end local v1    # "index":I
    .end local v2    # "resFullName":Ljava/lang/String;
    .end local v3    # "resName":Ljava/lang/String;
    .end local v4    # "resPackageName":Ljava/lang/String;
    .end local v5    # "resType":I
    .end local v6    # "themeColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    return-object v8

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v8
.end method

.method static getFlymeThemeColorValue(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/content/res/Resources$FlymeInjector;->getFlymeThemeColor(Landroid/content/res/Resources;I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    long-to-int v0, v0

    return v0
.end method

.method private static getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "resPackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeUtils;->getResType(Ljava/lang/String;)I

    move-result v2

    .local v2, "resType":I
    invoke-virtual {p0}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/flymetheme/FlymeThemeResource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/flymetheme/FlymeThemeResource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getFlymeThemeResource()Landroid/content/res/flymetheme/FlymeThemeResource;

    move-result-object v3

    invoke-virtual {v3, p2, v2, p3}, Landroid/content/res/flymetheme/FlymeThemeResource;->getThemeFileStream(Ljava/lang/String;ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->setFlymeThemeResource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "resPackageName":Ljava/lang/String;
    .end local v2    # "resType":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method static initFlymeExtraFields(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mIsFlymeThemeChange:Z

    return-void
.end method

.method static isFlymeThemeChange(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-virtual {p0}, Landroid/content/res/Resources;->flymeGetFieldConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->flymeGetFieldTmpConfig()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .local v0, "changes":I
    iput v0, p0, Landroid/content/res/Resources;->mFlymeThemeChanges:I

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->reset()V

    sget-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eq p0, v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mFlymeThemeResource:Landroid/content/res/flymetheme/FlymeThemeResource;

    invoke-virtual {v1}, Landroid/content/res/flymetheme/FlymeThemeResource;->load()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/Resources;->mIsFlymeThemeChange:Z

    :cond_1
    return-void
.end method

.method static isFlymeThemeColor(Landroid/content/res/Resources;I)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/content/res/Resources$FlymeInjector;->getFlymeThemeColor(Landroid/content/res/Resources;I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadFlymeColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {p0, p2}, Landroid/content/res/Resources$FlymeInjector;->getFlymeThemeColor(Landroid/content/res/Resources;I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v1

    .local v1, "themeColorInfo":Landroid/content/res/flymetheme/ColorInfo;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    long-to-int v2, v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "csl":Landroid/content/res/ColorStateList;
    return-object v0

    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    :cond_0
    return-object v2
.end method

.method private static loadFlymeThemeDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "op"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, "flymeInputStream":Ljava/io/InputStream;
    invoke-static {p0, p2, p3, p1}, Landroid/content/res/Resources$FlymeInjector;->getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "flymeInputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    invoke-static {p0, p1, v1, p3, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "flymeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    .end local v0    # "flymeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v2
.end method

.method static openFlymeThemeRawResource(Landroid/content/res/Resources;ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v0, 0x0

    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, p2}, Landroid/content/res/Resources$FlymeInjector;->getThemeFileStream(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .local v0, "is":Ljava/io/InputStream;
    return-object v0
.end method

.method static setFlymeSystemThemeResource()V
    .locals 2

    .prologue
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->setFlymeThemeResource(Ljava/lang/String;)V

    return-void
.end method
