.class public final Lcyanogenmod/weatherservice/ServiceRequestResult;
.super Ljava/lang/Object;
.source "ServiceRequestResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;,
        Lcyanogenmod/weatherservice/ServiceRequestResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weatherservice/ServiceRequestResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKey:Ljava/lang/String;

.field private mLocationLookupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;


# direct methods
.method static synthetic -set0(Lcyanogenmod/weatherservice/ServiceRequestResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcyanogenmod/weatherservice/ServiceRequestResult;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set2(Lcyanogenmod/weatherservice/ServiceRequestResult;Lcyanogenmod/weather/WeatherInfo;)Lcyanogenmod/weather/WeatherInfo;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/weatherservice/ServiceRequestResult$1;

    invoke-direct {v0}, Lcyanogenmod/weatherservice/ServiceRequestResult$1;-><init>()V

    sput-object v0, Lcyanogenmod/weatherservice/ServiceRequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v3

    .local v3, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v3}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v4

    .local v4, "parcelableVersion":I
    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "hasWeatherInfo":I
    if-ne v1, v6, :cond_0

    sget-object v5, Lcyanogenmod/weather/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/weather/WeatherInfo;

    iput-object v5, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "hasLocationLookupList":I
    if-ne v0, v6, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "listSize":I
    :goto_0
    if-lez v2, :cond_1

    iget-object v6, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    sget-object v5, Lcyanogenmod/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/weather/WeatherLocation;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0    # "hasLocationLookupList":I
    .end local v1    # "hasWeatherInfo":I
    .end local v2    # "listSize":I
    :cond_1
    invoke-virtual {v3}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weatherservice/ServiceRequestResult;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weatherservice/ServiceRequestResult;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/weatherservice/ServiceRequestResult;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcyanogenmod/weatherservice/ServiceRequestResult;

    .local v0, "request":Lcyanogenmod/weatherservice/ServiceRequestResult;
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .end local v0    # "request":Lcyanogenmod/weatherservice/ServiceRequestResult;
    :cond_1
    return v3
.end method

.method public getLocationLookupList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWeatherInfo()Lcyanogenmod/weather/WeatherInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v0, 0x1f

    .local v0, "prime":I
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .local v1, "result":I
    return v1

    .end local v1    # "result":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v2

    .local v2, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    invoke-virtual {v3, p1, v4}, Lcyanogenmod/weather/WeatherInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "lookup$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/WeatherLocation;

    .local v0, "lookup":Lcyanogenmod/weather/WeatherLocation;
    invoke-virtual {v0, p1, v4}, Lcyanogenmod/weather/WeatherLocation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .end local v0    # "lookup":Lcyanogenmod/weather/WeatherLocation;
    .end local v1    # "lookup$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    invoke-virtual {v2}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
