.class public abstract Landroid/service/dreams/IDreamManager$Stub;
.super Landroid/os/Binder;
.source "IDreamManager.java"

# interfaces
.implements Landroid/service/dreams/IDreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamManager"

.field static final TRANSACTION_awaken:I = 0x2

.field static final TRANSACTION_dream:I = 0x1

.field static final TRANSACTION_finishSelf:I = 0x9

.field static final TRANSACTION_getDefaultDreamComponent:I = 0x5

.field static final TRANSACTION_getDreamComponents:I = 0x4

.field static final TRANSACTION_getLidState:I = 0xd

.field static final TRANSACTION_isDozing:I = 0x8

.field static final TRANSACTION_isDreaming:I = 0x7

.field static final TRANSACTION_setDreamComponents:I = 0x3

.field static final TRANSACTION_setLidState:I = 0xc

.field static final TRANSACTION_startDozing:I = 0xa

.field static final TRANSACTION_stopDozing:I = 0xb

.field static final TRANSACTION_testDream:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.dreams.IDreamManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.service.dreams.IDreamManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/dreams/IDreamManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/dreams/IDreamManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/dreams/IDreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_1
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->dream()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_2
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->awaken()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_3
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v11, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ComponentName;

    .local v3, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {p0, v3}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponents([Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    .end local v3    # "_arg0":[Landroid/content/ComponentName;
    :sswitch_4
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v10

    .local v10, "_result":[Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_result":[Landroid/content/ComponentName;
    :sswitch_5
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultDreamComponent()Landroid/content/ComponentName;

    move-result-object v8

    .local v8, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_0

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v8, p3, v11}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v11, 0x1

    return v11

    :cond_0
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v8    # "_result":Landroid/content/ComponentName;
    :sswitch_6
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_1
    invoke-virtual {p0, v1}, Landroid/service/dreams/IDreamManager$Stub;->testDream(Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_1
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreaming()Z

    move-result v9

    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .end local v9    # "_result":Z
    :sswitch_8
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDozing()Z

    move-result v9

    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .end local v9    # "_result":Z
    :sswitch_9
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    .local v5, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v2, v5}, Landroid/service/dreams/IDreamManager$Stub;->finishSelf(Landroid/os/IBinder;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    .end local v5    # "_arg1":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Z
    goto :goto_4

    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Z
    :sswitch_a
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    invoke-virtual {p0, v2, v4, v6}, Landroid/service/dreams/IDreamManager$Stub;->startDozing(Landroid/os/IBinder;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_b
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/service/dreams/IDreamManager$Stub;->stopDozing(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_c
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->setLidState(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    :sswitch_d
    const-string v11, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getLidState()I

    move-result v7

    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
