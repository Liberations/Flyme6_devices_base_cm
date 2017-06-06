.class public Lcyanogenmod/weather/WeatherLocation$Builder;
.super Ljava/lang/Object;
.source "WeatherLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weather/WeatherLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCity:Ljava/lang/String;

.field mCityId:Ljava/lang/String;

.field mCountry:Ljava/lang/String;

.field mCountryId:Ljava/lang/String;

.field mPostal:Ljava/lang/String;

.field mState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mState:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "City name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cityId"    # Ljava/lang/String;
    .param p2, "cityName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mState:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal to set city id AND city to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    iput-object p2, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/weather/WeatherLocation;
    .locals 2

    .prologue
    new-instance v0, Lcyanogenmod/weather/WeatherLocation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcyanogenmod/weather/WeatherLocation;-><init>(Lcyanogenmod/weather/WeatherLocation;)V

    .local v0, "weatherLocation":Lcyanogenmod/weather/WeatherLocation;
    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCityId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set1(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set0(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mState:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set6(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set5(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set3(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set2(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/weather/WeatherLocation;->-set4(Lcyanogenmod/weather/WeatherLocation;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)Lcyanogenmod/weather/WeatherLocation$Builder;
    .locals 2
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Country can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountry:Ljava/lang/String;

    return-object p0
.end method

.method public setCountryId(Ljava/lang/String;)Lcyanogenmod/weather/WeatherLocation$Builder;
    .locals 2
    .param p1, "countryId"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Country ID can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mCountryId:Ljava/lang/String;

    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcyanogenmod/weather/WeatherLocation$Builder;
    .locals 2
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Postal code/ZIP can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mPostal:Ljava/lang/String;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcyanogenmod/weather/WeatherLocation$Builder;
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "State can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcyanogenmod/weather/WeatherLocation$Builder;->mState:Ljava/lang/String;

    return-object p0
.end method
