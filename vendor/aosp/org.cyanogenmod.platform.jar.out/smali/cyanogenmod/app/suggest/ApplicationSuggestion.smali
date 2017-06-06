.class public Lcyanogenmod/app/suggest/ApplicationSuggestion;
.super Ljava/lang/Object;
.source "ApplicationSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/suggest/ApplicationSuggestion$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/suggest/ApplicationSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDownloadUri:Landroid/net/Uri;

.field private mName:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;

.field private mThumbnailUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/app/suggest/ApplicationSuggestion$1;

    invoke-direct {v0}, Lcyanogenmod/app/suggest/ApplicationSuggestion$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .local v1, "parcelableVersion":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mPackage:Ljava/lang/String;

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mDownloadUri:Landroid/net/Uri;

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mThumbnailUri:Landroid/net/Uri;

    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/suggest/ApplicationSuggestion;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/suggest/ApplicationSuggestion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "downloadUri"    # Landroid/net/Uri;
    .param p4, "thumbnailUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mPackage:Ljava/lang/String;

    iput-object p3, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mDownloadUri:Landroid/net/Uri;

    iput-object p4, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mThumbnailUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mDownloadUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcyanogenmod/app/suggest/ApplicationSuggestion;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
