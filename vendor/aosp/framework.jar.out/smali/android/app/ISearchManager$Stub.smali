.class public abstract Landroid/app/ISearchManager$Stub;
.super Landroid/os/Binder;
.source "ISearchManager.java"

# interfaces
.implements Landroid/app/ISearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ISearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISearchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ISearchManager"

.field static final TRANSACTION_getGlobalSearchActivities:I = 0x3

.field static final TRANSACTION_getGlobalSearchActivity:I = 0x4

.field static final TRANSACTION_getSearchableInfo:I = 0x1

.field static final TRANSACTION_getSearchablesInGlobalSearch:I = 0x2

.field static final TRANSACTION_getWebSearchActivity:I = 0x5

.field static final TRANSACTION_launchAssist:I = 0x6

.field static final TRANSACTION_launchLegacyAssist:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ISearchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.app.ISearchManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ISearchManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/ISearchManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/ISearchManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ISearchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_0
    const-string v10, "android.app.ISearchManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string v10, "android.app.ISearchManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/ISearchManager$Stub;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v5

    .local v5, "_result":Landroid/app/SearchableInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v5, p3, v10}, Landroid/app/SearchableInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v10, 0x1

    return v10

    .end local v5    # "_result":Landroid/app/SearchableInfo;
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .restart local v5    # "_result":Landroid/app/SearchableInfo;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v5    # "_result":Landroid/app/SearchableInfo;
    :sswitch_2
    const-string v10, "android.app.ISearchManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v7

    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    :sswitch_3
    const-string v10, "android.app.ISearchManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivities()Ljava/util/List;

    move-result-object v8

    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :sswitch_4
    const-string v10, "android.app.ISearchManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v6

    .local v6, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, p3, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v10, 0x1

    return v10

    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v6    # "_result":Landroid/content/ComponentName;
    :sswitch_5
    const-string v10, "android.app.ISearchManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v6

    .restart local v6    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_3

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, p3, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v10, 0x1

    return v10

    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v6    # "_result":Landroid/content/ComponentName;
    :sswitch_6
    const-string v10, "android.app.ISearchManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_4
    invoke-virtual {p0, v1}, Landroid/app/ISearchManager$Stub;->launchAssist(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_4
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_7
    const-string v10, "android.app.ISearchManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    :goto_5
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ISearchManager$Stub;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v9

    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_6

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    .end local v9    # "_result":Z
    :cond_5
    const/4 v4, 0x0

    .local v4, "_arg2":Landroid/os/Bundle;
    goto :goto_5

    .end local v4    # "_arg2":Landroid/os/Bundle;
    .restart local v9    # "_result":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
