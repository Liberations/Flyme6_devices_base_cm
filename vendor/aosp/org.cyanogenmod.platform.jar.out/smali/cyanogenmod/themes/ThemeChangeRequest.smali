.class public final Lcyanogenmod/themes/ThemeChangeRequest;
.super Ljava/lang/Object;
.source "ThemeChangeRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/themes/ThemeChangeRequest$RequestType;,
        Lcyanogenmod/themes/ThemeChangeRequest$Builder;,
        Lcyanogenmod/themes/ThemeChangeRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/themes/ThemeChangeRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_WALLPAPER_ID:I = -0x1


# instance fields
.field private final mPerAppOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

.field private final mThemeComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$1;

    invoke-direct {v0}, Lcyanogenmod/themes/ThemeChangeRequest$1;-><init>()V

    sput-object v0, Lcyanogenmod/themes/ThemeChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mWallpaperId:J

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v2

    .local v2, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v2}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v3

    .local v3, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "numComponents":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->values()[Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mWallpaperId:J

    invoke-virtual {v2}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/themes/ThemeChangeRequest;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/themes/ThemeChangeRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcyanogenmod/themes/ThemeChangeRequest$RequestType;J)V
    .locals 2
    .param p3, "requestType"    # Lcyanogenmod/themes/ThemeChangeRequest$RequestType;
    .param p4, "wallpaperId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcyanogenmod/themes/ThemeChangeRequest$RequestType;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p1, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "perAppThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mWallpaperId:J

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iput-object p3, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    iput-wide p4, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mWallpaperId:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcyanogenmod/themes/ThemeChangeRequest$RequestType;JLcyanogenmod/themes/ThemeChangeRequest;)V
    .locals 0
    .param p1, "components"    # Ljava/util/Map;
    .param p2, "perAppThemes"    # Ljava/util/Map;
    .param p3, "requestType"    # Lcyanogenmod/themes/ThemeChangeRequest$RequestType;
    .param p4, "wallpaperId"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcyanogenmod/themes/ThemeChangeRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Lcyanogenmod/themes/ThemeChangeRequest$RequestType;J)V

    return-void
.end method

.method private getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_alarms"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBootanimationThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_bootanim"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_fonts"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconsThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_icons"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveLockScreenThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_live_lock_screen"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_lockscreen"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_navigation_bar"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_notifications"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumChangesRequested()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOverlayThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_overlays"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPerAppOverlays()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReqeustType()Lcyanogenmod/themes/ThemeChangeRequest$RequestType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    return-object v0
.end method

.method public getRingtoneThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_ringtones"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_status_bar"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getThemeComponentsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperId()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mWallpaperId:J

    return-wide v0
.end method

.method public getWallpaperThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "mods_homescreen"

    invoke-direct {p0, v0}, Lcyanogenmod/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v4

    .local v4, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v5, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "component":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "component":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appPkgName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "appPkgName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v5, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mRequestType:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    invoke-virtual {v5}, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->ordinal()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v6, p0, Lcyanogenmod/themes/ThemeChangeRequest;->mWallpaperId:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v4}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
