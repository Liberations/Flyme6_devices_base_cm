.class public abstract Landroid/accounts/IAccountManager$Stub;
.super Landroid/os/Binder;
.source "IAccountManager.java"

# interfaces
.implements Landroid/accounts/IAccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountManager"

.field static final TRANSACTION_accountAuthenticated:I = 0x1c

.field static final TRANSACTION_addAccount:I = 0x17

.field static final TRANSACTION_addAccountAsUser:I = 0x18

.field static final TRANSACTION_addAccountExplicitly:I = 0xa

.field static final TRANSACTION_addSharedAccountAsUser:I = 0x1e

.field static final TRANSACTION_clearPassword:I = 0x13

.field static final TRANSACTION_confirmCredentialsAsUser:I = 0x1b

.field static final TRANSACTION_copyAccountToUser:I = 0xe

.field static final TRANSACTION_editProperties:I = 0x1a

.field static final TRANSACTION_getAccounts:I = 0x4

.field static final TRANSACTION_getAccountsAsUser:I = 0x7

.field static final TRANSACTION_getAccountsByFeatures:I = 0x9

.field static final TRANSACTION_getAccountsByTypeForPackage:I = 0x6

.field static final TRANSACTION_getAccountsForPackage:I = 0x5

.field static final TRANSACTION_getAuthToken:I = 0x16

.field static final TRANSACTION_getAuthTokenLabel:I = 0x1d

.field static final TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final TRANSACTION_getPassword:I = 0x1

.field static final TRANSACTION_getPreviousName:I = 0x22

.field static final TRANSACTION_getSharedAccountsAsUser:I = 0x1f

.field static final TRANSACTION_getUserData:I = 0x2

.field static final TRANSACTION_hasFeatures:I = 0x8

.field static final TRANSACTION_invalidateAuthToken:I = 0xf

.field static final TRANSACTION_peekAuthToken:I = 0x10

.field static final TRANSACTION_removeAccount:I = 0xb

.field static final TRANSACTION_removeAccountAsUser:I = 0xc

.field static final TRANSACTION_removeAccountExplicitly:I = 0xd

.field static final TRANSACTION_removeSharedAccountAsUser:I = 0x20

.field static final TRANSACTION_renameAccount:I = 0x21

.field static final TRANSACTION_renameSharedAccountAsUser:I = 0x23

.field static final TRANSACTION_setAuthToken:I = 0x11

.field static final TRANSACTION_setPassword:I = 0x12

.field static final TRANSACTION_setUserData:I = 0x14

.field static final TRANSACTION_updateAppPermission:I = 0x15

.field static final TRANSACTION_updateCredentials:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.accounts.IAccountManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accounts/IAccountManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/accounts/IAccountManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accounts/IAccountManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 43
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

    move-result v3

    return v3

    :sswitch_0
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v39

    .local v39, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    .end local v39    # "_result":Ljava/lang/String;
    :cond_0
    const/16 v31, 0x0

    .local v31, "_arg0":Landroid/accounts/Account;
    goto :goto_0

    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_2
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .restart local v39    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":Ljava/lang/String;
    :cond_1
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_1

    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_3
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v42

    .local v42, "_result":[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    .end local v30    # "_arg0":I
    .end local v42    # "_result":[Landroid/accounts/AuthenticatorDescription;
    :sswitch_4
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v41

    .local v41, "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v32    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":[Landroid/accounts/Account;
    :sswitch_5
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .local v33, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/accounts/IAccountManager$Stub;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v41

    .restart local v41    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v32    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":I
    .end local v41    # "_result":[Landroid/accounts/Account;
    :sswitch_6
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v41

    .restart local v41    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v32    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":[Landroid/accounts/Account;
    :sswitch_7
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .restart local v33    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/accounts/IAccountManager$Stub;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v41

    .restart local v41    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v32    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":I
    .end local v41    # "_result":[Landroid/accounts/Account;
    :sswitch_8
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .local v4, "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v36

    .local v36, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .local v38, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v36    # "_arg2":[Ljava/lang/String;
    .end local v38    # "_arg3":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/accounts/Account;
    goto :goto_2

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_9
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v36

    .restart local v36    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .restart local v38    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg2":[Ljava/lang/String;
    .end local v38    # "_arg3":Ljava/lang/String;
    :sswitch_a
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v40

    .local v40, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v40, :cond_5

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_result":Z
    :cond_3
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_3

    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v27, 0x0

    .local v27, "_arg2":Landroid/os/Bundle;
    goto :goto_4

    .end local v27    # "_arg2":Landroid/os/Bundle;
    .restart local v40    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v40    # "_result":Z
    :sswitch_b
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    const/16 v35, 0x1

    .local v35, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v4, v5, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v35    # "_arg2":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_6

    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_7
    const/16 v35, 0x0

    .restart local v35    # "_arg2":Z
    goto :goto_7

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v35    # "_arg2":Z
    :sswitch_c
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/16 v35, 0x1

    .restart local v35    # "_arg2":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .local v37, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v37

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v35    # "_arg2":Z
    .end local v37    # "_arg3":I
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_8

    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_9
    const/16 v35, 0x0

    .restart local v35    # "_arg2":Z
    goto :goto_9

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v35    # "_arg2":Z
    :sswitch_d
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v40

    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v40, :cond_b

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v40    # "_result":Z
    :cond_a
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_a

    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v40    # "_result":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    .end local v40    # "_result":Z
    :sswitch_e
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .local v34, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .restart local v37    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v37

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/accounts/IAccountManager$Stub;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v34    # "_arg2":I
    .end local v37    # "_arg3":I
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_c

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_f
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v32    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .restart local v39    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":Ljava/lang/String;
    :cond_d
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_d

    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_11
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_e
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_e

    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_12
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Landroid/accounts/IAccountManager$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_f
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_f

    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_13
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->clearPassword(Landroid/accounts/Account;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_10
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_10

    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_14
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12, v6}, Landroid/accounts/IAccountManager$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_11
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_11

    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_15
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .restart local v34    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v7, 0x1

    .local v7, "_arg3":Z
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v1, v12, v2, v7}, Landroid/accounts/IAccountManager$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":I
    :cond_12
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_12

    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v34    # "_arg2":I
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Z
    goto :goto_13

    .end local v7    # "_arg3":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":I
    :sswitch_16
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    const/4 v7, 0x1

    .restart local v7    # "_arg3":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    const/4 v8, 0x1

    .local v8, "_arg4":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_17
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/accounts/IAccountManager$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Z
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_14

    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_15
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Z
    goto :goto_15

    :cond_16
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Z
    goto :goto_16

    :cond_17
    const/4 v9, 0x0

    .local v9, "_arg5":Landroid/os/Bundle;
    goto :goto_17

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    :sswitch_17
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .local v14, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    const/4 v8, 0x1

    .restart local v8    # "_arg4":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_19
    move-object/from16 v10, p0

    move-object v11, v4

    move-object v13, v6

    move v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Landroid/accounts/IAccountManager$Stub;->addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v8    # "_arg4":Z
    :cond_18
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Z
    goto :goto_18

    :cond_19
    const/4 v9, 0x0

    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_19

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_18
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v8, 0x1

    .restart local v8    # "_arg4":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg6":I
    move-object/from16 v10, p0

    move-object v11, v4

    move-object v13, v6

    move v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Landroid/accounts/IAccountManager$Stub;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v8    # "_arg4":Z
    .end local v17    # "_arg6":I
    :cond_1a
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Z
    goto :goto_1a

    :cond_1b
    const/4 v9, 0x0

    .restart local v9    # "_arg5":Landroid/os/Bundle;
    goto :goto_1b

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg4":Z
    .end local v9    # "_arg5":Landroid/os/Bundle;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":[Ljava/lang/String;
    :sswitch_19
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v7, 0x1

    .restart local v7    # "_arg3":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    :goto_1e
    move-object/from16 v18, p0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    invoke-virtual/range {v18 .. v23}, Landroid/accounts/IAccountManager$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    :cond_1c
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_1c

    .end local v5    # "_arg1":Landroid/accounts/Account;
    .restart local v6    # "_arg2":Ljava/lang/String;
    :cond_1d
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Z
    goto :goto_1d

    :cond_1e
    const/16 v23, 0x0

    .local v23, "_arg4":Landroid/os/Bundle;
    goto :goto_1e

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Z
    .end local v23    # "_arg4":Landroid/os/Bundle;
    :sswitch_1a
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v35, 0x1

    .restart local v35    # "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v4, v12, v1}, Landroid/accounts/IAccountManager$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v35    # "_arg2":Z
    :cond_1f
    const/16 v35, 0x0

    .restart local v35    # "_arg2":Z
    goto :goto_1f

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v35    # "_arg2":Z
    :sswitch_1b
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    const/4 v7, 0x1

    .restart local v7    # "_arg3":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "_arg4":I
    move-object/from16 v24, p0

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v28, v7

    invoke-virtual/range {v24 .. v29}, Landroid/accounts/IAccountManager$Stub;->confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":Z
    .end local v29    # "_arg4":I
    :cond_20
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_20

    .end local v5    # "_arg1":Landroid/accounts/Account;
    :cond_21
    const/16 v27, 0x0

    .restart local v27    # "_arg2":Landroid/os/Bundle;
    goto :goto_21

    .end local v27    # "_arg2":Landroid/os/Bundle;
    :cond_22
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Z
    goto :goto_22

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v7    # "_arg3":Z
    :sswitch_1c
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->accountAuthenticated(Landroid/accounts/Account;)Z

    move-result v40

    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v40, :cond_24

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v40    # "_result":Z
    :cond_23
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_23

    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v40    # "_result":Z
    :cond_24
    const/4 v3, 0x0

    goto :goto_24

    .end local v40    # "_result":Z
    :sswitch_1d
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v6}, Landroid/accounts/IAccountManager$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .restart local v33    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result v40

    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v40, :cond_26

    const/4 v3, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v33    # "_arg1":I
    .end local v40    # "_result":Z
    :cond_25
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_25

    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v33    # "_arg1":I
    .restart local v40    # "_result":Z
    :cond_26
    const/4 v3, 0x0

    goto :goto_26

    .end local v33    # "_arg1":I
    .end local v40    # "_result":Z
    :sswitch_1f
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .restart local v30    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v41

    .restart local v41    # "_result":[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    .end local v30    # "_arg0":I
    .end local v41    # "_result":[Landroid/accounts/Account;
    :sswitch_20
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .restart local v33    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeSharedAccountAsUser(Landroid/accounts/Account;I)Z

    move-result v40

    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v40, :cond_28

    const/4 v3, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v33    # "_arg1":I
    .end local v40    # "_result":Z
    :cond_27
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_27

    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v33    # "_arg1":I
    .restart local v40    # "_result":Z
    :cond_28
    const/4 v3, 0x0

    goto :goto_28

    .end local v33    # "_arg1":I
    .end local v40    # "_result":Z
    :sswitch_21
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/accounts/IAccountManager$Stub;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":Ljava/lang/String;
    :cond_29
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/accounts/Account;
    goto :goto_29

    .end local v4    # "_arg0":Landroid/accounts/IAccountManagerResponse;
    .end local v5    # "_arg1":Landroid/accounts/Account;
    :sswitch_22
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/accounts/IAccountManager$Stub;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v39

    .restart local v39    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    .end local v39    # "_result":Ljava/lang/String;
    :cond_2a
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_2a

    .end local v31    # "_arg0":Landroid/accounts/Account;
    :sswitch_23
    const-string v3, "android.accounts.IAccountManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/accounts/Account;

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .restart local v34    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v1, v12, v2}, Landroid/accounts/IAccountManager$Stub;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v40

    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v40, :cond_2c

    const/4 v3, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_arg2":I
    .end local v40    # "_result":Z
    :cond_2b
    const/16 v31, 0x0

    .restart local v31    # "_arg0":Landroid/accounts/Account;
    goto :goto_2b

    .end local v31    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v34    # "_arg2":I
    .restart local v40    # "_result":Z
    :cond_2c
    const/4 v3, 0x0

    goto :goto_2c

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
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
