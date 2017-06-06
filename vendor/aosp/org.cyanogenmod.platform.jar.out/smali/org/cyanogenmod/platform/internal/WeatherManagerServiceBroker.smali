.class public Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;
.super Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;
.source "WeatherManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService",
        "<",
        "Lcyanogenmod/weather/ICMWeatherManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->enforcePermission()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "org.cyanogenmod.weatherservice"

    const-string v2, "org.cyanogenmod.weatherservice.WeatherManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker$1;-><init>(Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->mService:Landroid/os/IBinder;

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.ACCESS_WEATHER_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->getDefaultImplementation()Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultImplementation()Lcyanogenmod/weather/ICMWeatherManager;
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/weather/ICMWeatherManager$NoOp;

    invoke-direct {v0}, Lcyanogenmod/weather/ICMWeatherManager$NoOp;-><init>()V

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "org.cyanogenmod.weather"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/ICMWeatherManager;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    invoke-static {p1}, Lcyanogenmod/weather/ICMWeatherManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/ICMWeatherManager;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    sget-object v0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    const-string v0, "cmweather"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/WeatherManagerServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
