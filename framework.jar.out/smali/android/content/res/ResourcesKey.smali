.class public final Landroid/content/res/ResourcesKey;
.super Ljava/lang/Object;
.source "ResourcesKey.java"


# instance fields
.field public final mDisplayId:I

.field private final mHash:I

.field private final mIsThemeable:Z

.field public final mOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mResDir:Ljava/lang/String;

.field private final mScale:F

.field private final mThemeConfig:Landroid/content/res/ThemeConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/Configuration;FZLandroid/content/res/ThemeConfig;)V
    .locals 4
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p4, "scale"    # F
    .param p5, "isThemeable"    # Z
    .param p6, "themeConfig"    # Landroid/content/res/ThemeConfig;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iput p2, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eqz p3, :cond_1

    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_0
    iput-object p3, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iput p4, p0, Landroid/content/res/ResourcesKey;->mScale:F

    iput-boolean p5, p0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    iput-object p6, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    add-int/lit16 v0, v1, 0x20f

    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/content/res/ResourcesKey;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/content/res/ThemeConfig;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    iput v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return-void

    .end local v0    # "hash":I
    .restart local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_1
    sget-object p3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0

    .end local p3    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .restart local v0    # "hash":I
    :cond_3
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    instance-of v1, p1, Landroid/content/res/ResourcesKey;

    if-nez v1, :cond_0

    return v3

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/ResourcesKey;

    .local v0, "peer":Landroid/content/res/ResourcesKey;
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget v1, p0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget v2, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget v1, p0, Landroid/content/res/ResourcesKey;->mScale:F

    iget v2, v0, Landroid/content/res/ResourcesKey;->mScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    return v3

    :cond_4
    iget-boolean v1, p0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    iget-boolean v2, v0, Landroid/content/res/ResourcesKey;->mIsThemeable:Z

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    if-nez v1, :cond_7

    :cond_6
    return v3

    :cond_7
    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mThemeConfig:Landroid/content/res/ThemeConfig;

    invoke-virtual {v1, v2}, Landroid/content/res/ThemeConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    const/4 v1, 0x1

    return v1
.end method

.method public hasOverrideConfiguration()Z
    .locals 2

    .prologue
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/res/ResourcesKey;->mHash:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
