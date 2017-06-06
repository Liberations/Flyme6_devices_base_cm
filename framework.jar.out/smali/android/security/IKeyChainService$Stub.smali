.class public abstract Landroid/security/IKeyChainService$Stub;
.super Landroid/os/Binder;
.source "IKeyChainService.java"

# interfaces
.implements Landroid/security/IKeyChainService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeyChainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeyChainService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeyChainService"

.field static final TRANSACTION_containsCaAlias:I = 0x9

.field static final TRANSACTION_deleteCaCertificate:I = 0x5

.field static final TRANSACTION_getCaCertificateChainAliases:I = 0xb

.field static final TRANSACTION_getCertificate:I = 0x2

.field static final TRANSACTION_getEncodedCaCertificate:I = 0xa

.field static final TRANSACTION_getSystemCaAliases:I = 0x8

.field static final TRANSACTION_getUserCaAliases:I = 0x7

.field static final TRANSACTION_hasGrant:I = 0xd

.field static final TRANSACTION_installCaCertificate:I = 0x3

.field static final TRANSACTION_installKeyPair:I = 0x4

.field static final TRANSACTION_requestPrivateKey:I = 0x1

.field static final TRANSACTION_reset:I = 0x6

.field static final TRANSACTION_setGrant:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.security.IKeyChainService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeyChainService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.security.IKeyChainService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeyChainService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/security/IKeyChainService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/security/IKeyChainService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IKeyChainService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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

    move-result v14

    return v14

    :sswitch_0
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->getCertificate(Ljava/lang/String;)[B

    move-result-object v13

    .local v13, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v14, 0x1

    return v14

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":[B
    :sswitch_3
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .local v3, "_arg0":[B
    invoke-virtual {p0, v3}, Landroid/security/IKeyChainService$Stub;->installCaCertificate([B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    .end local v3    # "_arg0":[B
    :sswitch_4
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .restart local v3    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v6, v7}, Landroid/security/IKeyChainService$Stub;->installKeyPair([B[BLjava/lang/String;)Z

    move-result v12

    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .end local v3    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_5
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v12

    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_1

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_6
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->reset()Z

    move-result v12

    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_2

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .end local v12    # "_result":Z
    :sswitch_7
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v9

    .local v9, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_3

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v14}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v14, 0x1

    return v14

    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v9    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_8
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v9

    .restart local v9    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_4

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v14}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v14, 0x1

    return v14

    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v9    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_9
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->containsCaAlias(Ljava/lang/String;)Z

    move-result v12

    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_5

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_a
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_6

    const/4 v5, 0x1

    .local v5, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v2, v5}, Landroid/security/IKeyChainService$Stub;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v13

    .restart local v13    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v14, 0x1

    return v14

    .end local v5    # "_arg1":Z
    .end local v13    # "_result":[B
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Z
    goto :goto_6

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Z
    :sswitch_b
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_7

    const/4 v5, 0x1

    .restart local v5    # "_arg1":Z
    :goto_7
    invoke-virtual {p0, v2, v5}, Landroid/security/IKeyChainService$Stub;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v11

    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    .end local v5    # "_arg1":Z
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Z
    goto :goto_7

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Z
    :sswitch_c
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8

    const/4 v8, 0x1

    .local v8, "_arg2":Z
    :goto_8
    invoke-virtual {p0, v1, v4, v8}, Landroid/security/IKeyChainService$Stub;->setGrant(ILjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    .end local v8    # "_arg2":Z
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Z
    goto :goto_8

    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Z
    :sswitch_d
    const-string v14, "android.security.IKeyChainService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Landroid/security/IKeyChainService$Stub;->hasGrant(ILjava/lang/String;)Z

    move-result v12

    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_9

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_9
    const/4 v14, 0x0

    goto :goto_9

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
