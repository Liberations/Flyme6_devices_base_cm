.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeystoreService"

.field static final TRANSACTION_abort:I = 0x1f

.field static final TRANSACTION_addAuthToken:I = 0x21

.field static final TRANSACTION_addRngEntropy:I = 0x17

.field static final TRANSACTION_begin:I = 0x1c

.field static final TRANSACTION_clear_uid:I = 0x16

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_duplicate:I = 0x14

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_exportKey:I = 0x1b

.field static final TRANSACTION_finish:I = 0x1e

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_generateKey:I = 0x18

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getKeyCharacteristics:I = 0x19

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x13

.field static final TRANSACTION_grant:I = 0x11

.field static final TRANSACTION_importKey:I = 0x1a

.field static final TRANSACTION_import_key:I = 0xd

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_isEmpty:I = 0xb

.field static final TRANSACTION_isOperationAuthorized:I = 0x20

.field static final TRANSACTION_is_hardware_backed:I = 0x15

.field static final TRANSACTION_list:I = 0x6

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_onUserAdded:I = 0x22

.field static final TRANSACTION_onUserPasswordChanged:I = 0x8

.field static final TRANSACTION_onUserRemoved:I = 0x23

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_ungrant:I = 0x12

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_update:I = 0x1d

.field static final TRANSACTION_verify:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.security.IKeystoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/security/IKeystoreService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/security/IKeystoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 51
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

    move-result v4

    return v4

    :sswitch_0
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .local v33, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->getState(I)I

    move-result v43

    .local v43, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_2
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->get(Ljava/lang/String;)[B

    move-result-object v49

    .local v49, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":[B
    :sswitch_3
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v38

    .local v38, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/security/IKeystoreService$Stub;->insert(Ljava/lang/String;[BII)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_arg1":[B
    .end local v43    # "_result":I
    :sswitch_4
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->del(Ljava/lang/String;I)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_result":I
    :sswitch_5
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->exist(Ljava/lang/String;I)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_result":I
    :sswitch_6
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v50

    .local v50, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v50    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeystoreService$Stub;->reset()I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v43    # "_result":I
    :sswitch_8
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .restart local v33    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .local v28, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_9
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .restart local v33    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->lock(I)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_a
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .restart local v33    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->unlock(ILjava/lang/String;)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_b
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .restart local v33    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->isEmpty(I)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_c
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/security/KeystoreArguments;

    :goto_0
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/security/IKeystoreService$Stub;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v43    # "_result":I
    :cond_0
    const/4 v10, 0x0

    .local v10, "_arg5":Landroid/security/KeystoreArguments;
    goto :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":Landroid/security/KeystoreArguments;
    :sswitch_d
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v38

    .restart local v38    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/security/IKeystoreService$Stub;->import_key(Ljava/lang/String;[BII)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v38    # "_arg1":[B
    .end local v43    # "_result":I
    :sswitch_e
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v38

    .restart local v38    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/security/IKeystoreService$Stub;->sign(Ljava/lang/String;[B)[B

    move-result-object v49

    .restart local v49    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v38    # "_arg1":[B
    .end local v49    # "_result":[B
    :sswitch_f
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v38

    .restart local v38    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .local v14, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1, v14}, Landroid/security/IKeystoreService$Stub;->verify(Ljava/lang/String;[B[B)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg2":[B
    .end local v38    # "_arg1":[B
    .end local v43    # "_result":I
    :sswitch_10
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->get_pubkey(Ljava/lang/String;)[B

    move-result-object v49

    .restart local v49    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":[B
    :sswitch_11
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->grant(Ljava/lang/String;I)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_result":I
    :sswitch_12
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/security/IKeystoreService$Stub;->ungrant(Ljava/lang/String;I)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v43    # "_result":I
    :sswitch_13
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->getmtime(Ljava/lang/String;)J

    move-result-wide v44

    .local v44, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":J
    :sswitch_14
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .local v40, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/security/IKeystoreService$Stub;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v40    # "_arg2":Ljava/lang/String;
    .end local v43    # "_result":I
    :sswitch_15
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/security/IKeystoreService$Stub;->is_hardware_backed(Ljava/lang/String;)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":I
    :sswitch_16
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .local v34, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/security/IKeystoreService$Stub;->clear_uid(J)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v34    # "_arg0":J
    .end local v43    # "_result":I
    :sswitch_17
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v36

    .local v36, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->addRngEntropy([B)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v36    # "_arg0":[B
    .end local v43    # "_result":I
    :sswitch_18
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .restart local v14    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    new-instance v17, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v17 .. v17}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v17, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v11, p0

    move-object v12, v5

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v11 .. v17}, Landroid/security/IKeystoreService$Stub;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v17, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v4, 0x1

    return v4

    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":[B
    .end local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :cond_1
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_1

    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v14    # "_arg2":[B
    .restart local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v43    # "_result":I
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v14    # "_arg2":[B
    .end local v17    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :sswitch_19
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/security/keymaster/KeymasterBlob;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/security/keymaster/KeymasterBlob;

    :goto_4
    new-instance v41, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v41 .. v41}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v41, "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v39

    move-object/from16 v3, v41

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/security/IKeystoreService$Stub;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v41, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v4, 0x1

    return v4

    .end local v41    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :cond_3
    const/16 v37, 0x0

    .local v37, "_arg1":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_3

    .end local v37    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    :cond_4
    const/16 v39, 0x0

    .local v39, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_4

    .end local v39    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .restart local v41    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v43    # "_result":I
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :sswitch_1a
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .local v22, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "_arg5":I
    new-instance v25, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct/range {v25 .. v25}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v25, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move-object/from16 v20, v13

    move/from16 v21, v7

    move/from16 v23, v9

    invoke-virtual/range {v18 .. v25}, Landroid/security/IKeystoreService$Stub;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v25, :cond_7

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/4 v4, 0x1

    return v4

    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v22    # "_arg3":[B
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_6

    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v7    # "_arg2":I
    .restart local v9    # "_arg4":I
    .restart local v22    # "_arg3":[B
    .restart local v24    # "_arg5":I
    .restart local v25    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v43    # "_result":I
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v9    # "_arg4":I
    .end local v22    # "_arg3":[B
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v43    # "_result":I
    :sswitch_1b
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/security/keymaster/KeymasterBlob;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/security/keymaster/KeymasterBlob;

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/security/IKeystoreService$Stub;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v46

    .local v46, "_result":Landroid/security/keymaster/ExportResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v46, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/ExportResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v4, 0x1

    return v4

    .end local v46    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_8
    const/16 v39, 0x0

    .restart local v39    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_8

    .end local v39    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :cond_9
    const/16 v42, 0x0

    .local v42, "_arg3":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_9

    .end local v42    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .restart local v46    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v46    # "_result":Landroid/security/keymaster/ExportResult;
    :sswitch_1c
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    .local v27, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v30, 0x1

    .local v30, "_arg3":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/security/keymaster/KeymasterArguments;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v32

    .local v32, "_arg5":[B
    move-object/from16 v26, p0

    move/from16 v29, v7

    invoke-virtual/range {v26 .. v32}, Landroid/security/IKeystoreService$Stub;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v47

    .local v47, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d
    const/4 v4, 0x1

    return v4

    .end local v30    # "_arg3":Z
    .end local v32    # "_arg5":[B
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_b
    const/16 v30, 0x0

    .restart local v30    # "_arg3":Z
    goto :goto_b

    :cond_c
    const/16 v31, 0x0

    .local v31, "_arg4":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_c

    .end local v31    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .restart local v32    # "_arg5":[B
    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .end local v7    # "_arg2":I
    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v28    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg3":Z
    .end local v32    # "_arg5":[B
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1d
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    .restart local v27    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .restart local v14    # "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13, v14}, Landroid/security/IKeystoreService$Stub;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v47

    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_f

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f
    const/4 v4, 0x1

    return v4

    .end local v14    # "_arg2":[B
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_e
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_e

    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v14    # "_arg2":[B
    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .end local v14    # "_arg2":[B
    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1e
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    .restart local v27    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/keymaster/KeymasterArguments;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .restart local v14    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .restart local v22    # "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/security/IKeystoreService$Stub;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v47

    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_11

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/4 v4, 0x1

    return v4

    .end local v14    # "_arg2":[B
    .end local v22    # "_arg3":[B
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_10

    .end local v13    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .restart local v14    # "_arg2":[B
    .restart local v22    # "_arg3":[B
    .restart local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .end local v14    # "_arg2":[B
    .end local v22    # "_arg3":[B
    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v47    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1f
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    .restart local v27    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->abort(Landroid/os/IBinder;)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v43    # "_result":I
    :sswitch_20
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    .restart local v27    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result v48

    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_12

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    .end local v27    # "_arg0":Landroid/os/IBinder;
    .end local v48    # "_result":Z
    :sswitch_21
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v36

    .restart local v36    # "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->addAuthToken([B)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v36    # "_arg0":[B
    .end local v43    # "_result":I
    :sswitch_22
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .restart local v33    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v6}, Landroid/security/IKeystoreService$Stub;->onUserAdded(II)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":I
    .end local v33    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_23
    const-string v4, "android.security.IKeystoreService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .restart local v33    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/security/IKeystoreService$Stub;->onUserRemoved(I)I

    move-result v43

    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

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
