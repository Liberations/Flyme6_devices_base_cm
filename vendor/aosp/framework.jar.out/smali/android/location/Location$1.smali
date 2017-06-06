.class final Landroid/location/Location$1;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
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
        "Landroid/location/Location;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "provider":Ljava/lang/String;
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .local v0, "l":Landroid/location/Location;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set13(Landroid/location/Location;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set3(Landroid/location/Location;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set10(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set11(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Landroid/location/Location;->-set6(Landroid/location/Location;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/location/Location;->-set1(Landroid/location/Location;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v0, v2}, Landroid/location/Location;->-set8(Landroid/location/Location;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set12(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v0, v2}, Landroid/location/Location;->-set7(Landroid/location/Location;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set2(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-static {v0, v2}, Landroid/location/Location;->-set5(Landroid/location/Location;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set0(Landroid/location/Location;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/location/Location;->-set4(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    :goto_4
    invoke-static {v0, v3}, Landroid/location/Location;->-set9(Landroid/location/Location;Z)Z

    return-object v0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Location;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/location/Location$1;->newArray(I)[Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
