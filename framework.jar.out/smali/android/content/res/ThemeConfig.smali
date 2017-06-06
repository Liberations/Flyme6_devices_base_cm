.class public Landroid/content/res/ThemeConfig;
.super Ljava/lang/Object;
.source "ThemeConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ThemeConfig$AppTheme;,
        Landroid/content/res/ThemeConfig$Builder;,
        Landroid/content/res/ThemeConfig$JsonSerializer;,
        Landroid/content/res/ThemeConfig$SystemConfig;,
        Landroid/content/res/ThemeConfig$SystemAppTheme;,
        Landroid/content/res/ThemeConfig$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/ThemeConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ThemeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DEFAULT_PKG:Ljava/lang/String; = "default"

.field public static final SYSTEMUI_NAVBAR_PKG:Ljava/lang/String; = "com.android.systemui.navbar"

.field public static final SYSTEMUI_STATUS_BAR_PKG:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_DEFAULT:Ljava/lang/String; = "system"

.field public static final TAG:Ljava/lang/String;

.field private static final mSystemAppTheme:Landroid/content/res/ThemeConfig$SystemAppTheme;

.field private static final mSystemConfig:Landroid/content/res/ThemeConfig$SystemConfig;


# instance fields
.field protected final mThemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ThemeConfig$AppTheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/content/res/ThemeConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/res/ThemeConfig$SystemConfig;

    invoke-direct {v0}, Landroid/content/res/ThemeConfig$SystemConfig;-><init>()V

    sput-object v0, Landroid/content/res/ThemeConfig;->mSystemConfig:Landroid/content/res/ThemeConfig$SystemConfig;

    new-instance v0, Landroid/content/res/ThemeConfig$SystemAppTheme;

    invoke-direct {v0}, Landroid/content/res/ThemeConfig$SystemAppTheme;-><init>()V

    sput-object v0, Landroid/content/res/ThemeConfig;->mSystemAppTheme:Landroid/content/res/ThemeConfig$SystemAppTheme;

    new-instance v0, Landroid/content/res/ThemeConfig$1;

    invoke-direct {v0}, Landroid/content/res/ThemeConfig$1;-><init>()V

    sput-object v0, Landroid/content/res/ThemeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ThemeConfig$AppTheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "appThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    iget-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/ThemeConfig;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/ThemeConfig;->getBootThemeForUser(Landroid/content/ContentResolver;I)Landroid/content/res/ThemeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getBootThemeForUser(Landroid/content/ContentResolver;I)Landroid/content/res/ThemeConfig;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    sget-object v0, Landroid/content/res/ThemeConfig;->mSystemConfig:Landroid/content/res/ThemeConfig$SystemConfig;

    .local v0, "bootTheme":Landroid/content/res/ThemeConfig;
    :try_start_0
    const-string v7, "themeConfig"

    invoke-static {p0, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .local v5, "json":Ljava/lang/String;
    invoke-static {v5}, Landroid/content/res/ThemeConfig;->fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v7, "persist.sys.themePackageName"

    invoke-static {p0, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .local v6, "overlayPkgName":Ljava/lang/String;
    const-string v7, "themeIconPackPkgName"

    invoke-static {p0, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .local v4, "iconPackPkgName":Ljava/lang/String;
    const-string v7, "themeFontPackPkgName"

    invoke-static {p0, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .local v3, "fontPkgName":Ljava/lang/String;
    new-instance v1, Landroid/content/res/ThemeConfig$Builder;

    invoke-direct {v1}, Landroid/content/res/ThemeConfig$Builder;-><init>()V

    .local v1, "builder":Landroid/content/res/ThemeConfig$Builder;
    invoke-virtual {v1, v6}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    invoke-virtual {v1, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    invoke-virtual {v1, v3}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    invoke-virtual {v1}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v1    # "builder":Landroid/content/res/ThemeConfig$Builder;
    .end local v3    # "fontPkgName":Ljava/lang/String;
    .end local v4    # "iconPackPkgName":Ljava/lang/String;
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "overlayPkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v7, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    const-string v8, "Could not get boot theme"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    const-string v2, "default"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeConfig$AppTheme;

    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    if-nez v0, :cond_0

    sget-object v0, Landroid/content/res/ThemeConfig;->mSystemAppTheme:Landroid/content/res/ThemeConfig$SystemAppTheme;

    :cond_0
    return-object v0
.end method

.method public static getSystemTheme()Landroid/content/res/ThemeConfig;
    .locals 1

    .prologue
    sget-object v0, Landroid/content/res/ThemeConfig;->mSystemConfig:Landroid/content/res/ThemeConfig$SystemConfig;

    return-object v0
.end method

.method private getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeConfig$AppTheme;

    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v1, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    const-string v2, "clone not supported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public compareTo(Landroid/content/res/ThemeConfig;)I
    .locals 3
    .param p1, "o"    # Landroid/content/res/ThemeConfig;

    .prologue
    if-nez p1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, "n":I
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    iget-object v2, p1, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/content/res/ThemeConfig;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeConfig;->compareTo(Landroid/content/res/ThemeConfig;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    if-ne p1, p0, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    instance-of v3, p1, Landroid/content/res/ThemeConfig;

    if-eqz v3, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/content/res/ThemeConfig;

    .local v2, "o":Landroid/content/res/ThemeConfig;
    iget-object v3, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .local v0, "currThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :goto_0
    iget-object v3, v2, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    if-nez v3, :cond_2

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .local v1, "newThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .end local v0    # "currThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v1    # "newThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :cond_1
    iget-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    .restart local v0    # "currThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    goto :goto_0

    :cond_2
    iget-object v1, v2, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    .restart local v1    # "newThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    goto :goto_1

    .end local v0    # "currThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v1    # "newThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v2    # "o":Landroid/content/res/ThemeConfig;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public getAppThemes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ThemeConfig$AppTheme;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFontPkgName()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .local v0, "defaultTheme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getFontPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/ThemeConfig;->getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getIconPackPkgName()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getIconPackPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/ThemeConfig;->getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getOverlayForNavBar()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "com.android.systemui.navbar"

    invoke-virtual {p0, v0}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayForStatusBar()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayPkgName()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/ThemeConfig;->getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .local v0, "hash":I
    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->toJson(Landroid/content/res/ThemeConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v1, "themes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->toJson(Landroid/content/res/ThemeConfig;)Ljava/lang/String;

    move-result-object v0

    .local v0, "json":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
