.class final Landroid/net/RouteInfo$1;
.super Ljava/lang/Object;
.source "RouteInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/RouteInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfo;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .local v1, "dest":Landroid/net/IpPrefix;
    const/4 v3, 0x0

    .local v3, "gateway":Ljava/net/InetAddress;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .local v0, "addr":[B
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v3    # "gateway":Ljava/net/InetAddress;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "type":I
    new-instance v6, Landroid/net/RouteInfo;

    invoke-direct {v6, v1, v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object v6

    .end local v4    # "iface":Ljava/lang/String;
    .end local v5    # "type":I
    .restart local v3    # "gateway":Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/RouteInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/RouteInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/RouteInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/RouteInfo$1;->newArray(I)[Landroid/net/RouteInfo;

    move-result-object v0

    return-object v0
.end method
