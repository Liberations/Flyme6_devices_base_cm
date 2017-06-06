.class public abstract Lcom/android/internal/app/IProcessStats$Stub;
.super Landroid/os/Binder;
.source "IProcessStats.java"

# interfaces
.implements Lcom/android/internal/app/IProcessStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IProcessStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IProcessStats"

.field static final TRANSACTION_getCurrentMemoryState:I = 0x3

.field static final TRANSACTION_getCurrentStats:I = 0x1

.field static final TRANSACTION_getStatsOverTime:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.app.IProcessStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IProcessStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.app.IProcessStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IProcessStats;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/app/IProcessStats;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IProcessStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IProcessStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string v6, "com.android.internal.app.IProcessStats"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string v6, "com.android.internal.app.IProcessStats"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IProcessStats$Stub;->getCurrentStats(Ljava/util/List;)[B

    move-result-object v5

    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v7

    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v5    # "_result":[B
    :sswitch_2
    const-string v6, "com.android.internal.app.IProcessStats"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IProcessStats$Stub;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return v7

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":J
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string v6, "com.android.internal.app.IProcessStats"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/app/IProcessStats$Stub;->getCurrentMemoryState()I

    move-result v3

    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
