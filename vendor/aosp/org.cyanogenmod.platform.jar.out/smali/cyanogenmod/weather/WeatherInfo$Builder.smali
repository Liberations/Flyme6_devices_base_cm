.class public Lcyanogenmod/weather/WeatherInfo$Builder;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCity:Ljava/lang/String;

.field private mConditionCode:I

.field private mForecastList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;"
        }
    .end annotation
.end field

.field private mHumidity:D

.field private mTempUnit:I

.field private mTemperature:D

.field private mTimestamp:J

.field private mTodaysHighTemp:D

.field private mTodaysLowTemp:D

.field private mWindDirection:D

.field private mWindSpeed:D

.field private mWindSpeedUnit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DI)V
    .locals 4
    .param p1, "cityName"    # Ljava/lang/String;
    .param p2, "temperature"    # D
    .param p4, "tempUnit"    # I

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc80

    iput v0, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mConditionCode:I

    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysHighTemp:D

    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysLowTemp:D

    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mHumidity:D

    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeed:D

    iput-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindDirection:D

    const/4 v0, 0x2

    iput v0, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "City name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid temperature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p4}, Lcyanogenmod/weather/WeatherInfo$Builder;->isValidTempUnit(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mCity:Ljava/lang/String;

    iput-wide p2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTemperature:D

    iput p4, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTempUnit:I

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

.method private isValidWindSpeedUnit(I)Z
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
.method public build()Lcyanogenmod/weather/WeatherInfo;
    .locals 6

    .prologue
    new-instance v0, Lcyanogenmod/weather/WeatherInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weather/WeatherInfo;-><init>(Lcyanogenmod/weather/WeatherInfo;)V

    .local v0, "info":Lcyanogenmod/weather/WeatherInfo;
    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set0(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mConditionCode:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set1(Lcyanogenmod/weather/WeatherInfo;I)I

    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTemperature:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set6(Lcyanogenmod/weather/WeatherInfo;D)D

    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTempUnit:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set5(Lcyanogenmod/weather/WeatherInfo;I)I

    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mHumidity:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set3(Lcyanogenmod/weather/WeatherInfo;D)D

    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeed:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set11(Lcyanogenmod/weather/WeatherInfo;D)D

    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindDirection:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set10(Lcyanogenmod/weather/WeatherInfo;D)D

    iget v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set12(Lcyanogenmod/weather/WeatherInfo;I)I

    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set7(Lcyanogenmod/weather/WeatherInfo;J)J

    iget-object v1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/List;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set2(Lcyanogenmod/weather/WeatherInfo;Ljava/util/List;)Ljava/util/List;

    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysHighTemp:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set8(Lcyanogenmod/weather/WeatherInfo;D)D

    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysLowTemp:D

    invoke-static {v0, v2, v3}, Lcyanogenmod/weather/WeatherInfo;->-set9(Lcyanogenmod/weather/WeatherInfo;D)D

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherInfo;->-set4(Lcyanogenmod/weather/WeatherInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v0

    :cond_0
    iget-wide v2, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    goto :goto_0
.end method

.method public setForecast(Ljava/util/List;)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherInfo$DayForecast;",
            ">;)",
            "Lcyanogenmod/weather/WeatherInfo$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "forecasts":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/weather/WeatherInfo$DayForecast;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Forecast list can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mForecastList:Ljava/util/List;

    return-object p0
.end method

.method public setHumidity(D)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "humidity"    # D

    .prologue
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid humidity value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mHumidity:D

    return-object p0
.end method

.method public setTimestamp(J)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTimestamp:J

    return-object p0
.end method

.method public setTodaysHigh(D)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "todaysHigh"    # D

    .prologue
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid temperature value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysHighTemp:D

    return-object p0
.end method

.method public setTodaysLow(D)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "todaysLow"    # D

    .prologue
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid temperature value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mTodaysLowTemp:D

    return-object p0
.end method

.method public setWeatherCondition(I)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 2
    .param p1, "conditionCode"    # I

    .prologue
    invoke-static {p1}, Lcyanogenmod/weather/WeatherInfo;->-wrap0(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid weather condition code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mConditionCode:I

    return-object p0
.end method

.method public setWind(DDI)Lcyanogenmod/weather/WeatherInfo$Builder;
    .locals 3
    .param p1, "windSpeed"    # D
    .param p3, "windDirection"    # D
    .param p5, "windSpeedUnit"    # I

    .prologue
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid wind speed value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid wind direction value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p5}, Lcyanogenmod/weather/WeatherInfo$Builder;->isValidWindSpeedUnit(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid speed unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-wide p1, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeed:D

    iput p5, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindSpeedUnit:I

    iput-wide p3, p0, Lcyanogenmod/weather/WeatherInfo$Builder;->mWindDirection:D

    return-object p0
.end method
