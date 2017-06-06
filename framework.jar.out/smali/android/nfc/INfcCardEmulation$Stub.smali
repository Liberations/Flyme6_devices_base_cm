.class public abstract Landroid/nfc/INfcCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcCardEmulation"

.field static final TRANSACTION_getAidGroupForService:I = 0x6

.field static final TRANSACTION_getServices:I = 0x8

.field static final TRANSACTION_isDefaultServiceForAid:I = 0x2

.field static final TRANSACTION_isDefaultServiceForCategory:I = 0x1

.field static final TRANSACTION_registerAidGroupForService:I = 0x5

.field static final TRANSACTION_removeAidGroupForService:I = 0x7

.field static final TRANSACTION_setDefaultForNextTap:I = 0x4

.field static final TRANSACTION_setDefaultServiceForCategory:I = 0x3

.field static final TRANSACTION_setPreferredService:I = 0x9

.field static final TRANSACTION_supportsAidPrefixRegistration:I = 0xb

.field static final TRANSACTION_unsetPreferredService:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.nfc.INfcCardEmulation"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcCardEmulation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.nfc.INfcCardEmulation"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcCardEmulation;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/nfc/INfcCardEmulation;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcCardEmulation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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

    move-result v9

    return v9

    :sswitch_0
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_1
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_2
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2

    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_3
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4

    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_4
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_6
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_7

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v8    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_6

    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v8    # "_result":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .end local v0    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_5
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/AidGroup;

    :goto_9
    invoke-virtual {p0, v0, v2, v4}, Landroid/nfc/INfcCardEmulation$Stub;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_a

    const/4 v9, 0x1

    :goto_a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v8    # "_result":Z
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_8

    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :cond_9
    const/4 v4, 0x0

    .local v4, "_arg2":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_9

    .end local v4    # "_arg2":Landroid/nfc/cardemulation/AidGroup;
    .restart local v8    # "_result":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_a

    .end local v0    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_6
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v6

    .local v6, "_result":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_c

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v6, p3, v9}, Landroid/nfc/cardemulation/AidGroup;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    const/4 v9, 0x1

    return v9

    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_b

    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v6    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :cond_c
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :sswitch_7
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v5}, Landroid/nfc/INfcCardEmulation$Stub;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_e

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d

    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_e

    .end local v0    # "_arg0":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_8
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/nfc/INfcCardEmulation$Stub;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :sswitch_9
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_f
    invoke-virtual {p0, v1}, Landroid/nfc/INfcCardEmulation$Stub;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_10

    const/4 v9, 0x1

    :goto_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v8    # "_result":Z
    :cond_f
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_result":Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_10

    .end local v8    # "_result":Z
    :sswitch_a
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->unsetPreferredService()Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_11

    const/4 v9, 0x1

    :goto_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_11
    const/4 v9, 0x0

    goto :goto_11

    .end local v8    # "_result":Z
    :sswitch_b
    const-string v9, "android.nfc.INfcCardEmulation"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->supportsAidPrefixRegistration()Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_12

    const/4 v9, 0x1

    :goto_12
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_12
    const/4 v9, 0x0

    goto :goto_12

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
