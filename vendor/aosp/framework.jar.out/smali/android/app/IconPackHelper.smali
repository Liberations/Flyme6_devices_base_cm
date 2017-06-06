.class public Landroid/app/IconPackHelper;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IconPackHelper$IconCustomizer;,
        Landroid/app/IconPackHelper$ColorFilterUtils;
    }
.end annotation


# static fields
.field private static final ANGLE_ATTR:Ljava/lang/String; = "angle"

.field private static final ANGLE_VARIANCE:Ljava/lang/String; = "plusMinus"

.field private static final COMPOSED_ICON_COOKIE:I = 0x80

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final DEFAULT_SWATCH_COLOR_ATTR:Ljava/lang/String; = "defaultSwatchColor"

.field private static final ICON_BACK_COMPONENT:Landroid/content/ComponentName;

.field private static final ICON_BACK_FORMAT:Ljava/lang/String; = "iconback%d"

.field private static final ICON_BACK_TAG:Ljava/lang/String; = "iconback"

.field private static final ICON_CACHE_SERVICE:Ljava/lang/String; = "cmiconcache"

.field private static final ICON_MASK_COMPONENT:Landroid/content/ComponentName;

.field private static final ICON_MASK_TAG:Ljava/lang/String; = "iconmask"

.field private static final ICON_PALETTIZED_BACK_TAG:Ljava/lang/String; = "paletteback"

.field private static final ICON_ROTATE_TAG:Ljava/lang/String; = "rotate"

.field private static final ICON_SCALE_COMPONENT:Landroid/content/ComponentName;

.field private static final ICON_SCALE_TAG:Ljava/lang/String; = "scale"

.field private static final ICON_TRANSLATE_TAG:Ljava/lang/String; = "translate"

.field private static final ICON_UPON_COMPONENT:Landroid/content/ComponentName;

.field private static final ICON_UPON_TAG:Ljava/lang/String; = "iconupon"

.field private static final IMG_ATTR:Ljava/lang/String; = "img"

.field private static final MUTED_DARK_VALUE:Ljava/lang/String; = "mutedDark"

.field private static final MUTED_LIGHT_VALUE:Ljava/lang/String; = "mutedLight"

.field private static final MUTED_VALUE:Ljava/lang/String; = "muted"

.field private static final NUM_PALETTE_COLORS:I = 0x20

.field private static final SWATCH_TYPE_ATTR:Ljava/lang/String; = "swatchType"

.field public static final SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/data/system/theme"

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSLATE_X_ATTR:Ljava/lang/String; = "xOffset"

.field private static final TRANSLATE_Y_ATTR:Ljava/lang/String; = "yOffset"

.field private static final VIBRANT_DARK_VALUE:Ljava/lang/String; = "vibrantDark"

.field private static final VIBRANT_LIGHT_VALUE:Ljava/lang/String; = "vibrantLight"

.field private static final VIBRANT_VALUE:Ljava/lang/String; = "vibrant"


# instance fields
.field private mComposedIconInfo:Landroid/app/ComposedIconInfo;

.field private final mContext:Landroid/content/Context;

.field private mFilterBuilder:Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

.field private mIconBackCount:I

.field private mIconPackResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedIconPackName:Ljava/lang/String;

.field private mLoadedIconPackResource:Landroid/content/res/Resources;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v0, Landroid/app/IconPackHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/IconPackHelper;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "iconback"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/IconPackHelper;->ICON_BACK_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "iconmask"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/IconPackHelper;->ICON_MASK_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "iconupon"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/IconPackHelper;->ICON_UPON_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "scale"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/IconPackHelper;->ICON_SCALE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    iput-object p1, p0, Landroid/app/IconPackHelper;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ComposedIconInfo;

    invoke-direct {v1}, Landroid/app/ComposedIconInfo;-><init>()V

    iput-object v1, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iget-object v1, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, v1, Landroid/app/ComposedIconInfo;->iconSize:I

    iget-object v1, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, v1, Landroid/app/ComposedIconInfo;->iconDensity:I

    new-instance v1, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    invoke-direct {v1}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;-><init>()V

    iput-object v1, p0, Landroid/app/IconPackHelper;->mFilterBuilder:Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    return-void
.end method

.method public static createIconResource(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .local v7, "themeApk":Ljava/lang/String;
    iget-boolean v8, v4, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v8, :cond_0

    const-string v3, ""

    .local v3, "iconApkPath":Ljava/lang/String;
    const-string v5, ""

    .local v5, "prefixPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .local v0, "assets":Landroid/content/res/AssetManager;
    const/16 v8, 0x62

    invoke-virtual {v0, v7, v3, v5, v8}, Landroid/content/res/AssetManager;->addIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v6, Landroid/content/res/Resources;

    invoke-direct {v6, v0, v2, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .local v6, "res":Landroid/content/res/Resources;
    return-object v6

    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "iconApkPath":Ljava/lang/String;
    .end local v5    # "prefixPath":Ljava/lang/String;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v5, "assets/icons/"

    .restart local v5    # "prefixPath":Ljava/lang/String;
    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getIconPackApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "iconApkPath":Ljava/lang/String;
    goto :goto_0
.end method

.method private getResourceIdForDrawable(Ljava/lang/String;)I
    .locals 4
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "resId":I
    return v0
.end method

.method private getResourceIdForName(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    iget-object v1, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "item":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Landroid/app/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isComposedIconComponent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const-string v0, "iconmask"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iconback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iconupon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "paletteback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadComposedIconComponents()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    sget-object v4, Landroid/app/IconPackHelper;->ICON_MASK_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v4}, Landroid/app/IconPackHelper;->getResourceIdForName(Landroid/content/ComponentName;)I

    move-result v4

    iput v4, v3, Landroid/app/ComposedIconInfo;->iconMask:I

    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    sget-object v4, Landroid/app/IconPackHelper;->ICON_UPON_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v4}, Landroid/app/IconPackHelper;->getResourceIdForName(Landroid/content/ComponentName;)I

    move-result v4

    iput v4, v3, Landroid/app/ComposedIconInfo;->iconUpon:I

    iget v3, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iget v4, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/app/ComposedIconInfo;->iconBacks:[I

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iget-object v3, v3, Landroid/app/ComposedIconInfo;->iconBacks:[I

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "iconback%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Landroid/app/IconPackHelper;->getResourceIdForName(Landroid/content/ComponentName;)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    sget-object v4, Landroid/app/IconPackHelper;->ICON_SCALE_COMPONENT:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "scale":Ljava/lang/String;
    if-eqz v2, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Landroid/app/ComposedIconInfo;->iconScale:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v8, v3, Landroid/app/ComposedIconInfo;->iconScale:F

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v8, v3, Landroid/app/ComposedIconInfo;->iconScale:F

    goto :goto_1
.end method

.method private loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iput v8, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .local v2, "eventType":I
    :cond_0
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_0

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/app/IconPackHelper;->parseComposedIconComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/app/IconPackHelper;->mFilterBuilder:Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    invoke-static {p1, v5}, Landroid/app/IconPackHelper$ColorFilterUtils;->parseIconFilter(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/IconPackHelper$ColorFilterUtils$Builder;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "scale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "factor"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "factor":Ljava/lang/String;
    if-nez v3, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ne v5, v9, :cond_3

    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    sget-object v5, Landroid/app/IconPackHelper;->ICON_SCALE_COMPONENT:Landroid/content/ComponentName;

    invoke-interface {p2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v3    # "factor":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-direct {p0, p1, v5}, Landroid/app/IconPackHelper;->parseRotationComponent(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/ComposedIconInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-direct {p0, p1, v5}, Landroid/app/IconPackHelper;->parseTranslationComponent(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/ComposedIconInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "component"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "component":Ljava/lang/String;
    const-string v5, "drawable"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "drawable":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ComponentInfo{"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .local v4, "name":Landroid/content/ComponentName;
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "name":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "name":Landroid/content/ComponentName;
    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .local v4, "name":Landroid/content/ComponentName;
    :cond_5
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .local v4, "name":Landroid/content/ComponentName;
    goto :goto_1
.end method

.method private parseComposedIconComponent(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Z
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "tag":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/app/IconPackHelper;->isComposedIconComponent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v6

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-lt v3, v7, :cond_4

    const-string v3, "iconback"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    iput v3, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    if-ge v0, v3, :cond_2

    const-string v3, "iconback%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "icon":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, ""

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "icon":Ljava/lang/String;
    :cond_1
    const-string v3, "paletteback"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-direct {p0, p1, v3}, Landroid/app/IconPackHelper;->parsePalettizedBackground(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/ComposedIconInfo;)V

    :cond_2
    :goto_1
    return v7

    :cond_3
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "icon":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, ""

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1    # "icon":Ljava/lang/String;
    :cond_4
    return v6
.end method

.method private parsePalettizedBackground(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/ComposedIconInfo;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .local v0, "attrCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "convertedColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_c

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    const-string v9, "Attribute name cannot be empty or null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    const-string v9, "Attribute value cannot be empty or null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v8, "img"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v7}, Landroid/app/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v8

    iput v8, p2, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [I

    iput-object v8, p2, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    iget-object v9, p2, Landroid/app/ComposedIconInfo;->defaultSwatchColors:[I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v4    # "j":I
    :cond_4
    const-string v8, "swatchType"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    sget-object v6, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    .local v6, "type":Landroid/app/ComposedIconInfo$SwatchType;
    const-string v8, "vibrant"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v6, Landroid/app/ComposedIconInfo$SwatchType;->Vibrant:Landroid/app/ComposedIconInfo$SwatchType;

    :cond_5
    :goto_4
    sget-object v8, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    if-eq v6, v8, :cond_3

    iput-object v6, p2, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    goto :goto_2

    :cond_6
    const-string v8, "vibrantLight"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v6, Landroid/app/ComposedIconInfo$SwatchType;->VibrantLight:Landroid/app/ComposedIconInfo$SwatchType;

    goto :goto_4

    :cond_7
    const-string v8, "vibrantDark"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v6, Landroid/app/ComposedIconInfo$SwatchType;->VibrantDark:Landroid/app/ComposedIconInfo$SwatchType;

    goto :goto_4

    :cond_8
    const-string v8, "muted"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v6, Landroid/app/ComposedIconInfo$SwatchType;->Muted:Landroid/app/ComposedIconInfo$SwatchType;

    goto :goto_4

    :cond_9
    const-string v8, "mutedLight"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v6, Landroid/app/ComposedIconInfo$SwatchType;->MutedLight:Landroid/app/ComposedIconInfo$SwatchType;

    goto :goto_4

    :cond_a
    const-string v8, "mutedDark"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v6, Landroid/app/ComposedIconInfo$SwatchType;->MutedDark:Landroid/app/ComposedIconInfo$SwatchType;

    goto :goto_4

    .end local v6    # "type":Landroid/app/ComposedIconInfo$SwatchType;
    :cond_b
    const-string v8, "defaultSwatchColor"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :try_start_0
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/high16 v9, -0x1000000

    or-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    const-string v9, "Invalid color format"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private parseRotationComponent(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/ComposedIconInfo;)Z
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rotate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    const-string v3, "angle"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "angle":Ljava/lang/String;
    const-string v3, "plusMinus"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "variance":Ljava/lang/String;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p2, Landroid/app/ComposedIconInfo;->iconRotation:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p2, Landroid/app/ComposedIconInfo;->iconRotationVariance:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    const-string v4, "Error parsing angle"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    sget-object v3, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    const-string v4, "Error parsing plusMinus"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private parseTranslationComponent(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/ComposedIconInfo;)Z
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "translate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    iget-object v4, p0, Landroid/app/IconPackHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .local v0, "density":F
    const-string v4, "xOffset"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "translateX":Ljava/lang/String;
    const-string v4, "yOffset"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "translateY":Ljava/lang/String;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v0

    iput v4, p2, Landroid/app/ComposedIconInfo;->iconTranslationX:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    :try_start_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v0

    iput v4, p2, Landroid/app/ComposedIconInfo;->iconTranslationY:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    const-string v5, "Error parsing xOffset"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    sget-object v4, Landroid/app/IconPackHelper;->TAG:Ljava/lang/String;

    const-string v5, "Error parsing yOffset"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static shouldComposeIcon(Landroid/app/ComposedIconInfo;)Z
    .locals 4
    .param p0, "iconInfo"    # Landroid/app/ComposedIconInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget-object v2, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    if-nez v2, :cond_0

    iget v2, p0, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/app/ComposedIconInfo;->iconRotation:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Landroid/app/ComposedIconInfo;->iconRotationVariance:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Landroid/app/ComposedIconInfo;->iconTranslationX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Landroid/app/ComposedIconInfo;->iconTranslationY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getComposedIconInfo()Landroid/app/ComposedIconInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    return-object v0
.end method

.method public getDrawableForActivity(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/app/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    .local v0, "id":I
    if-nez v0, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getDrawableForActivityWithDensity(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "density"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/app/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    .local v0, "id":I
    if-nez v0, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, p2, v3, v2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;
    .locals 24
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v18, 0x0

    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v17, 0x0

    .local v17, "inputStream":Ljava/io/InputStream;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .local v15, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    const-string v21, "appfilter.xml"

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .local v17, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    .local v11, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v20, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v17    # "inputStream":Ljava/io/InputStream;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_0
    if-eqz v18, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Landroid/app/IconPackHelper;->loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    check-cast v18, Landroid/content/res/XmlResourceParser;

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    :goto_1
    return-object v15

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v20, "appfilter"

    const-string v21, "xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .local v19, "resId":I
    if-eqz v19, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "resId":I
    :cond_2
    if-eqz v17, :cond_1

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    goto :goto_1

    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    check-cast v18, Landroid/content/res/XmlResourceParser;

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    const-string v20, "theme_iconpack"

    const-string v21, "array"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .local v5, "arrayId":I
    if-nez v5, :cond_4

    const-string v20, "icon_pack"

    const-string v21, "array"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :cond_4
    if-eqz v5, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .local v14, "iconPack":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "compName":Landroid/content/ComponentName;
    const/16 v20, 0x0

    array-length v0, v14

    move/from16 v21, v0

    .end local v6    # "compName":Landroid/content/ComponentName;
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    aget-object v10, v14, v20

    .local v10, "entry":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_a

    :cond_5
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .end local v5    # "arrayId":I
    .end local v10    # "entry":Ljava/lang/String;
    .end local v14    # "iconPack":[Ljava/lang/String;
    .restart local v7    # "e":Ljava/io/IOException;
    :cond_6
    if-eqz v17, :cond_3

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_2

    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    check-cast v18, Landroid/content/res/XmlResourceParser;

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :cond_7
    if-eqz v17, :cond_3

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_2

    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v20

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    check-cast v18, Landroid/content/res/XmlResourceParser;

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    :goto_5
    throw v20

    :cond_9
    if-eqz v17, :cond_8

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_5

    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "arrayId":I
    .restart local v10    # "entry":Ljava/lang/String;
    .restart local v14    # "iconPack":[Ljava/lang/String;
    :cond_a
    move-object v12, v10

    .local v12, "icon":Ljava/lang/String;
    const-string v22, "_"

    const-string v23, "."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "compName":Landroid/content/ComponentName;
    invoke-interface {v15, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "."

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .local v4, "activityIndex":I
    if-lez v4, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-eq v4, v0, :cond_5

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .local v16, "iconPackage":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    add-int/lit8 v22, v4, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .local v13, "iconActivity":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v6, Landroid/content/ComponentName;

    .end local v6    # "compName":Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-direct {v6, v0, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "compName":Landroid/content/ComponentName;
    invoke-interface {v15, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .end local v4    # "activityIndex":I
    .end local v6    # "compName":Landroid/content/ComponentName;
    .end local v10    # "entry":Ljava/lang/String;
    .end local v12    # "icon":Ljava/lang/String;
    .end local v13    # "iconActivity":Ljava/lang/String;
    .end local v14    # "iconPack":[Ljava/lang/String;
    .end local v16    # "iconPackage":Ljava/lang/String;
    :cond_b
    return-object v15
.end method

.method public getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/IconPackHelper;->isIconPackLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    return v5

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "compName":Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "drawable":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/app/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v2

    .local v2, "resId":I
    if-eqz v2, :cond_1

    return v2

    .end local v2    # "resId":I
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "compName":Landroid/content/ComponentName;
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "compName":Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "drawable":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "drawable":Ljava/lang/String;
    if-nez v1, :cond_2

    return v5

    :cond_2
    invoke-direct {p0, v1}, Landroid/app/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getResourceIdForApp(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .local v0, "info":Landroid/content/pm/ActivityInfo;
    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v1

    return v1
.end method

.method isIconPackLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public loadIconPack(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iput-object v4, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    iput-object v4, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput-object v4, v2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v6, v3, Landroid/app/ComposedIconInfo;->iconUpon:I

    iput v6, v2, Landroid/app/ComposedIconInfo;->iconMask:I

    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v5, v2, Landroid/app/ComposedIconInfo;->iconScale:F

    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v5, v2, Landroid/app/ComposedIconInfo;->iconRotation:F

    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v5, v2, Landroid/app/ComposedIconInfo;->iconTranslationX:F

    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v5, v2, Landroid/app/ComposedIconInfo;->iconTranslationY:F

    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput-object v4, v2, Landroid/app/ComposedIconInfo;->colorFilter:[F

    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    iput v6, v2, Landroid/app/ComposedIconInfo;->iconPaletteBack:I

    iget-object v2, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    sget-object v3, Landroid/app/ComposedIconInfo$SwatchType;->None:Landroid/app/ComposedIconInfo$SwatchType;

    iput-object v3, v2, Landroid/app/ComposedIconInfo;->swatchType:Landroid/app/ComposedIconInfo$SwatchType;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v6, p0, Landroid/app/IconPackHelper;->mIconBackCount:I

    iget-object v2, p0, Landroid/app/IconPackHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/app/IconPackHelper;->createIconResource(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    iput-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    iput-object p1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroid/app/IconPackHelper;->getIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-direct {p0}, Landroid/app/IconPackHelper;->loadComposedIconComponents()V

    iget-object v2, p0, Landroid/app/IconPackHelper;->mFilterBuilder:Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    invoke-virtual {v2}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->build()Landroid/graphics/ColorMatrix;

    move-result-object v0

    .local v0, "cm":Landroid/graphics/ColorMatrix;
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/app/IconPackHelper;->mComposedIconInfo:Landroid/app/ComposedIconInfo;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v3, Landroid/app/ComposedIconInfo;->colorFilter:[F

    goto :goto_0
.end method
