.class public Lcyanogenmod/weather/CMWeatherManager;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/CMWeatherManager$RequestStatus;,
        Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;,
        Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;,
        Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;,
        Lcyanogenmod/weather/CMWeatherManager$1;,
        Lcyanogenmod/weather/CMWeatherManager$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcyanogenmod/weather/CMWeatherManager;

.field private static sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLookupNameRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            "Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

.field private mProviderChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

.field private mWeatherUpdateRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            "Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcyanogenmod/weather/CMWeatherManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get3(Lcyanogenmod/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcyanogenmod/weather/CMWeatherManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/weather/CMWeatherManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    new-instance v1, Lcyanogenmod/weather/CMWeatherManager$1;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/CMWeatherManager$1;-><init>(Lcyanogenmod/weather/CMWeatherManager;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    new-instance v1, Lcyanogenmod/weather/CMWeatherManager$2;

    invoke-direct {v1, p0}, Lcyanogenmod/weather/CMWeatherManager$2;-><init>(Lcyanogenmod/weather/CMWeatherManager;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcyanogenmod/weather/CMWeatherManager;->getService()Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "org.cyanogenmod.weather"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to bind the CMWeatherManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    return-void

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/weather/CMWeatherManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    if-nez v0, :cond_0

    new-instance v0, Lcyanogenmod/weather/CMWeatherManager;

    invoke-direct {v0, p0}, Lcyanogenmod/weather/CMWeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    :cond_0
    sget-object v0, Lcyanogenmod/weather/CMWeatherManager;->sInstance:Lcyanogenmod/weather/CMWeatherManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/weather/ICMWeatherManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    return-object v1

    :cond_0
    const-string v1, "cmweather"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    return-object v1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public cancelRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v1, p1}, Lcyanogenmod/weather/ICMWeatherManager;->cancelRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v1}, Lcyanogenmod/weather/ICMWeatherManager;->getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public lookupCity(Ljava/lang/String;Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;)I
    .locals 5
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$LookupCityRequestListener;

    .prologue
    const/4 v4, -0x1

    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v2, :cond_0

    return v4

    :cond_0
    :try_start_0
    new-instance v2, Lcyanogenmod/weather/RequestInfo$Builder;

    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-direct {v2, v3}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v2, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setCityName(Ljava/lang/String;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v2, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v2, v1}, Lcyanogenmod/weather/ICMWeatherManager;->lookupCity(Lcyanogenmod/weather/RequestInfo;)V

    invoke-virtual {v1}, Lcyanogenmod/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :try_start_2
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    invoke-interface {v1, v3}, Lcyanogenmod/weather/ICMWeatherManager;->registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestWeatherUpdate(Landroid/location/Location;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;)I
    .locals 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    const/4 v6, -0x1

    sget-object v3, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v3, :cond_0

    return v6

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "weather_temperature_unit"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, "tempUnit":I
    new-instance v3, Lcyanogenmod/weather/RequestInfo$Builder;

    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-direct {v3, v4}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v3, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setLocation(Landroid/location/Location;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcyanogenmod/weather/RequestInfo$Builder;->setTemperatureUnit(I)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v3, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v3, v1}, Lcyanogenmod/weather/ICMWeatherManager;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V

    invoke-virtual {v1}, Lcyanogenmod/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    .end local v2    # "tempUnit":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    return v6
.end method

.method public requestWeatherUpdate(Lcyanogenmod/weather/WeatherLocation;Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;)I
    .locals 7
    .param p1, "weatherLocation"    # Lcyanogenmod/weather/WeatherLocation;
    .param p2, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    const/4 v6, -0x1

    sget-object v3, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v3, :cond_0

    return v6

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "weather_temperature_unit"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, "tempUnit":I
    new-instance v3, Lcyanogenmod/weather/RequestInfo$Builder;

    iget-object v4, p0, Lcyanogenmod/weather/CMWeatherManager;->mRequestInfoListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-direct {v3, v4}, Lcyanogenmod/weather/RequestInfo$Builder;-><init>(Lcyanogenmod/weather/IRequestInfoListener;)V

    invoke-virtual {v3, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->setWeatherLocation(Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcyanogenmod/weather/RequestInfo$Builder;->setTemperatureUnit(I)Lcyanogenmod/weather/RequestInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcyanogenmod/weather/RequestInfo$Builder;->build()Lcyanogenmod/weather/RequestInfo;

    move-result-object v1

    .local v1, "info":Lcyanogenmod/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v3, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    invoke-interface {v3, v1}, Lcyanogenmod/weather/ICMWeatherManager;->updateWeather(Lcyanogenmod/weather/RequestInfo;)V

    invoke-virtual {v1}, Lcyanogenmod/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .end local v1    # "info":Lcyanogenmod/weather/RequestInfo;
    .end local v2    # "tempUnit":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    return v6
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcyanogenmod/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Listener was never registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :try_start_2
    sget-object v1, Lcyanogenmod/weather/CMWeatherManager;->sWeatherManagerService:Lcyanogenmod/weather/ICMWeatherManager;

    iget-object v3, p0, Lcyanogenmod/weather/CMWeatherManager;->mProviderChangeListener:Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    invoke-interface {v1, v3}, Lcyanogenmod/weather/ICMWeatherManager;->unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
