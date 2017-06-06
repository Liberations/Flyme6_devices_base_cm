.class Lcyanogenmod/weather/RequestInfo$Builder;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/RequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mIsQueryOnly:Z

.field private mListener:Lcyanogenmod/weather/IRequestInfoListener;

.field private mLocation:Landroid/location/Location;

.field private mRequestType:I

.field private mTempUnit:I

.field private mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;


# direct methods
.method public constructor <init>(Lcyanogenmod/weather/IRequestInfoListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/weather/IRequestInfoListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mTempUnit:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    return-void
.end method

.method private isValidTempUnit(I)Z
    .locals 1
    .param p1, "unit"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcyanogenmod/weather/RequestInfo;
    .locals 2

    .prologue
    new-instance v0, Lcyanogenmod/weather/RequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weather/RequestInfo;-><init>(Lcyanogenmod/weather/RequestInfo;)V

    .local v0, "info":Lcyanogenmod/weather/RequestInfo;
    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set3(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weather/IRequestInfoListener;)Lcyanogenmod/weather/IRequestInfoListener;

    iget v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set5(Lcyanogenmod/weather/RequestInfo;I)I

    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set0(Lcyanogenmod/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set7(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/WeatherLocation;

    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set4(Lcyanogenmod/weather/RequestInfo;Landroid/location/Location;)Landroid/location/Location;

    iget v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mTempUnit:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set6(Lcyanogenmod/weather/RequestInfo;I)I

    iget-boolean v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set1(Lcyanogenmod/weather/RequestInfo;Z)Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/weather/RequestInfo;->-set2(Lcyanogenmod/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public queryOnly()Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    :goto_0
    return-object p0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCityName(Ljava/lang/String;)Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "City name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    iput-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    iput-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Location can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    iput-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    iput-object v1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    const/4 v0, 0x1

    iput v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    return-object p0
.end method

.method public setTemperatureUnit(I)Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "unit"    # I

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weather/RequestInfo$Builder;->isValidTempUnit(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mTempUnit:I

    return-object p0
.end method

.method public setWeatherLocation(Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "weatherLocation"    # Lcyanogenmod/weather/WeatherLocation;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WeatherLocation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    iput-object v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcyanogenmod/weather/RequestInfo$Builder;->mRequestType:I

    return-object p0
.end method
