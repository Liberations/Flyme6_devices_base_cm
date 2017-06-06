.class public abstract Landroid/content/pm/ILauncherApps$Stub;
.super Landroid/os/Binder;
.source "ILauncherApps.java"

# interfaces
.implements Landroid/content/pm/ILauncherApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ILauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ILauncherApps$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ILauncherApps"

.field static final TRANSACTION_addOnAppsChangedListener:I = 0x1

.field static final TRANSACTION_getLauncherActivities:I = 0x3

.field static final TRANSACTION_isActivityEnabled:I = 0x8

.field static final TRANSACTION_isPackageEnabled:I = 0x7

.field static final TRANSACTION_removeOnAppsChangedListener:I = 0x2

.field static final TRANSACTION_resolveActivity:I = 0x4

.field static final TRANSACTION_showAppDetailsAsUser:I = 0x6

.field static final TRANSACTION_startActivityAsUser:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.pm.ILauncherApps"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ILauncherApps$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.content.pm.ILauncherApps"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/ILauncherApps;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/pm/ILauncherApps;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/ILauncherApps$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/ILauncherApps$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_0
    const-string v11, "android.content.pm.ILauncherApps"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_1
    const-string v11, "android.content.pm.ILauncherApps"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    move-result-object v2

    .local v2, "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    invoke-virtual {p0, v2}, Landroid/content/pm/ILauncherApps$Stub;->addOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    .end local v2    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    :sswitch_2
    const-string v11, "android.content.pm.ILauncherApps"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    move-result-object v2

    .restart local v2    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    invoke-virtual {p0, v2}, Landroid/content/pm/ILauncherApps$Stub;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    .end local v2    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    :sswitch_3
    const-string v11, "android.content.pm.ILauncherApps"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {p0, v3, v5}, Landroid/content/pm/ILauncherApps$Stub;->getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    return v11

    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/os/UserHandle;
    goto :goto_0

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/UserHandle;
    :sswitch_4
    const-string v11, "android.content.pm.ILauncherApps"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    :goto_2
    invoke-virtual {p0, v1, v5}, Landroid/content/pm/ILauncherApps$Stub;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .local v8, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v8, p3, v11}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v11, 0x1

    return v11

    .end local v8    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_1

    .end local v1    # "_arg0":Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/os/UserHandle;
    goto :goto_2

    .end local v5    # "_arg1":Landroid/os/UserHandle;
    .restart local v8    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v8    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_5
    const-string v11, "android.content.pm.ILauncherApps"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    sget-object v11, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    :goto_7
    invoke-virtual {p0, v0, v4, v6, v7}, Landroid/content/pm/ILauncherApps$Stub;->startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_4
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_5
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/graphics/Rect;
    goto :goto_5

    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :cond_6
    const/4 v6, 0x0

    .local v6, "_arg2":Landroid/os/Bundle;
    goto :goto_6

    .end local v6    # "_arg2":Landroid/os/Bundle;
    :cond_7
    const/4 v7, 0x0

    .local v7, "_arg3":Landroid/os/UserHandle;
    goto :goto_7

    .end local v7    # "_arg3":Landroid/os/UserHandle;
    :sswitch_6
    const-string v11, "android.content.pm.ILauncherApps"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_9

    sget-object v11, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_b

    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    :goto_b
    invoke-virtual {p0, v0, v4, v6, v7}, Landroid/content/pm/ILauncherApps$Stub;->showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/graphics/Rect;
    goto :goto_9

    .end local v4    # "_arg1":Landroid/graphics/Rect;
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/os/Bundle;
    goto :goto_a

    .end local v6    # "_arg2":Landroid/os/Bundle;
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Landroid/os/UserHandle;
    goto :goto_b

    .end local v7    # "_arg3":Landroid/os/UserHandle;
    :sswitch_7
    const-string v11, "android.content.pm.ILauncherApps"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_c

    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    :goto_c
    invoke-virtual {p0, v3, v5}, Landroid/content/pm/ILauncherApps$Stub;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v10

    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_d

    const/4 v11, 0x1

    :goto_d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/os/UserHandle;
    goto :goto_c

    .end local v5    # "_arg1":Landroid/os/UserHandle;
    .restart local v10    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    goto :goto_d

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_8
    const-string v11, "android.content.pm.ILauncherApps"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_e

    sget-object v11, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_f

    sget-object v11, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    :goto_f
    invoke-virtual {p0, v0, v5}, Landroid/content/pm/ILauncherApps$Stub;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v10

    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_10

    const/4 v11, 0x1

    :goto_10
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/os/UserHandle;
    goto :goto_f

    .end local v5    # "_arg1":Landroid/os/UserHandle;
    .restart local v10    # "_result":Z
    :cond_10
    const/4 v11, 0x0

    goto :goto_10

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
