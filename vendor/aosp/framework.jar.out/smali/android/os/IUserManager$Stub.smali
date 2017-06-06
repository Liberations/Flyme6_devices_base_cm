.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final TRANSACTION_canAddMoreManagedProfiles:I = 0xb

.field static final TRANSACTION_createProfileForUser:I = 0x3

.field static final TRANSACTION_createUser:I = 0x2

.field static final TRANSACTION_getApplicationRestrictions:I = 0x18

.field static final TRANSACTION_getApplicationRestrictionsForUser:I = 0x19

.field static final TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final TRANSACTION_getDefaultGuestRestrictions:I = 0x1c

.field static final TRANSACTION_getProfileParent:I = 0xc

.field static final TRANSACTION_getProfiles:I = 0xa

.field static final TRANSACTION_getUserCreationTime:I = 0xe

.field static final TRANSACTION_getUserHandle:I = 0x11

.field static final TRANSACTION_getUserIcon:I = 0x8

.field static final TRANSACTION_getUserInfo:I = 0xd

.field static final TRANSACTION_getUserRestrictions:I = 0x12

.field static final TRANSACTION_getUserSerialNumber:I = 0x10

.field static final TRANSACTION_getUsers:I = 0x9

.field static final TRANSACTION_hasUserRestriction:I = 0x13

.field static final TRANSACTION_isRestricted:I = 0xf

.field static final TRANSACTION_markGuestForDeletion:I = 0x1d

.field static final TRANSACTION_removeRestrictions:I = 0x1a

.field static final TRANSACTION_removeUser:I = 0x5

.field static final TRANSACTION_setApplicationRestrictions:I = 0x17

.field static final TRANSACTION_setDefaultGuestRestrictions:I = 0x1b

.field static final TRANSACTION_setSystemControlledUserRestriction:I = 0x16

.field static final TRANSACTION_setUserEnabled:I = 0x4

.field static final TRANSACTION_setUserIcon:I = 0x7

.field static final TRANSACTION_setUserName:I = 0x6

.field static final TRANSACTION_setUserRestriction:I = 0x15

.field static final TRANSACTION_setUserRestrictions:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IUserManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.os.IUserManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IUserManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/IUserManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IUserManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
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

    move-result v22

    return v22

    :sswitch_0
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_1
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    move-result v14

    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v4    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_2
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Landroid/os/IUserManager$Stub;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v15

    .local v15, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_0

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v22, 0x1

    return v22

    :cond_0
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v15    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_3
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v13}, Landroid/os/IUserManager$Stub;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v15

    .restart local v15    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_1

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v22, 0x1

    return v22

    :cond_1
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v15    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_4
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v4    # "_arg0":I
    :sswitch_5
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    move-result v21

    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_2

    const/16 v22, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_6
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_3

    sget-object v22, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_3
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_3

    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_8
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    .local v19, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v19, :cond_4

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/16 v22, 0x1

    return v22

    :cond_4
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v4    # "_arg0":I
    .end local v19    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_9
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_5

    const/4 v7, 0x1

    .local v7, "_arg0":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/IUserManager$Stub;->getUsers(Z)Ljava/util/List;

    move-result-object v20

    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v22, 0x1

    return v22

    .end local v7    # "_arg0":Z
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_5

    .end local v7    # "_arg0":Z
    :sswitch_a
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_6

    const/4 v12, 0x1

    .local v12, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v20

    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v22, 0x1

    return v22

    .end local v12    # "_arg1":Z
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Z
    goto :goto_6

    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":Z
    :sswitch_b
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->canAddMoreManagedProfiles()Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_7

    const/16 v22, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_7
    const/16 v22, 0x0

    goto :goto_7

    .end local v21    # "_result":Z
    :sswitch_c
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    .restart local v15    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_8

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/16 v22, 0x1

    return v22

    :cond_8
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .end local v4    # "_arg0":I
    .end local v15    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_d
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    .restart local v15    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_9

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/16 v22, 0x1

    return v22

    :cond_9
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v4    # "_arg0":I
    .end local v15    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_e
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    move-result-wide v16

    .local v16, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v22, 0x1

    return v22

    .end local v4    # "_arg0":I
    .end local v16    # "_result":J
    :sswitch_f
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->isRestricted()Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_a

    const/16 v22, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_a
    const/16 v22, 0x0

    goto :goto_a

    .end local v21    # "_result":Z
    :sswitch_10
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    move-result v14

    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v4    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_11
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    move-result v14

    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    .end local v4    # "_arg0":I
    .end local v14    # "_result":I
    :sswitch_12
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v18

    .local v18, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_b

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    const/16 v22, 0x1

    return v22

    :cond_b
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .end local v4    # "_arg0":I
    .end local v18    # "_result":Landroid/os/Bundle;
    :sswitch_13
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_c

    const/16 v22, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_c
    const/16 v22, 0x0

    goto :goto_c

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v21    # "_result":Z
    :sswitch_14
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_d

    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Landroid/os/IUserManager$Stub;->setUserRestrictions(Landroid/os/Bundle;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v8    # "_arg1":I
    :cond_d
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/os/Bundle;
    goto :goto_d

    .end local v5    # "_arg0":Landroid/os/Bundle;
    :sswitch_15
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_e

    const/4 v12, 0x1

    .restart local v12    # "_arg1":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v13}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v12    # "_arg1":Z
    .end local v13    # "_arg2":I
    :cond_e
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Z
    goto :goto_e

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Z
    :sswitch_16
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_f

    const/4 v12, 0x1

    .restart local v12    # "_arg1":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v13}, Landroid/os/IUserManager$Stub;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v12    # "_arg1":Z
    .end local v13    # "_arg2":I
    :cond_f
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Z
    goto :goto_f

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Z
    :sswitch_17
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_10

    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v13}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    .end local v13    # "_arg2":I
    :cond_10
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/os/Bundle;
    goto :goto_10

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/os/Bundle;
    :sswitch_18
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v18

    .restart local v18    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_11

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/16 v22, 0x1

    return v22

    :cond_11
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Landroid/os/Bundle;
    :sswitch_19
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v18

    .restart local v18    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_12

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_12
    const/16 v22, 0x1

    return v22

    :cond_12
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v18    # "_result":Landroid/os/Bundle;
    :sswitch_1a
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->removeRestrictions()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_1b
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_13

    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_13
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/os/Bundle;
    goto :goto_13

    .end local v5    # "_arg0":Landroid/os/Bundle;
    :sswitch_1c
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v18

    .restart local v18    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_14

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_14
    const/16 v22, 0x1

    return v22

    :cond_14
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .end local v18    # "_result":Landroid/os/Bundle;
    :sswitch_1d
    const-string v22, "android.os.IUserManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    move-result v21

    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_15

    const/16 v22, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_15
    const/16 v22, 0x0

    goto :goto_15

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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
