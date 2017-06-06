.class public abstract Lcom/android/internal/app/IAppOpsService$Stub;
.super Landroid/os/Binder;
.source "IAppOpsService.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppOpsService"

.field static final TRANSACTION_checkAudioOperation:I = 0x10

.field static final TRANSACTION_checkOperation:I = 0x1

.field static final TRANSACTION_checkPackage:I = 0xa

.field static final TRANSACTION_finishOperation:I = 0x4

.field static final TRANSACTION_getOpsForPackage:I = 0xc

.field static final TRANSACTION_getPackagesForOps:I = 0xb

.field static final TRANSACTION_getPrivacyGuardSettingForPackage:I = 0x15

.field static final TRANSACTION_getToken:I = 0x7

.field static final TRANSACTION_isControlAllowed:I = 0x14

.field static final TRANSACTION_noteOperation:I = 0x2

.field static final TRANSACTION_noteProxyOperation:I = 0x9

.field static final TRANSACTION_permissionToOpCode:I = 0x8

.field static final TRANSACTION_removeUser:I = 0x13

.field static final TRANSACTION_resetAllModes:I = 0xf

.field static final TRANSACTION_resetCounters:I = 0x17

.field static final TRANSACTION_setAudioRestriction:I = 0x11

.field static final TRANSACTION_setMode:I = 0xe

.field static final TRANSACTION_setPrivacyGuardSettingForPackage:I = 0x16

.field static final TRANSACTION_setUidMode:I = 0xd

.field static final TRANSACTION_setUserRestrictions:I = 0x12

.field static final TRANSACTION_startOperation:I = 0x3

.field static final TRANSACTION_startWatchingMode:I = 0x5

.field static final TRANSACTION_stopWatchingMode:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.app.IAppOpsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppOpsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.app.IAppOpsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/app/IAppOpsService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IAppOpsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v2

    return v2

    :sswitch_0
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lcom/android/internal/app/IAppOpsService$Stub;->checkOperation(IILjava/lang/String;)I

    move-result v19

    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_2
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lcom/android/internal/app/IAppOpsService$Stub;->noteOperation(IILjava/lang/String;)I

    move-result v19

    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_3
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v4, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v19

    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_4
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .restart local v9    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v4, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "_arg3":Ljava/lang/String;
    :sswitch_5
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v14

    .local v14, "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13, v14}, Lcom/android/internal/app/IAppOpsService$Stub;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Lcom/android/internal/app/IAppOpsCallback;
    :sswitch_6
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v10

    .local v10, "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/app/IAppOpsService$Stub;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v10    # "_arg0":Lcom/android/internal/app/IAppOpsCallback;
    :sswitch_7
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .restart local v9    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/app/IAppOpsService$Stub;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v20

    .local v20, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    return v2

    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_result":Landroid/os/IBinder;
    :sswitch_8
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/app/IAppOpsService$Stub;->permissionToOpCode(Ljava/lang/String;)I

    move-result v19

    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_9
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v13, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I

    move-result v19

    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v5    # "_arg2":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_a
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/android/internal/app/IAppOpsService$Stub;->checkPackage(ILjava/lang/String;)I

    move-result v19

    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_b
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v12

    .local v12, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/app/IAppOpsService$Stub;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v21

    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    return v2

    .end local v12    # "_arg0":[I
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :sswitch_c
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .local v17, "_arg2":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v13, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v21

    .restart local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":[I
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :sswitch_d
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService$Stub;->setUidMode(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_e
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15, v6}, Lcom/android/internal/app/IAppOpsService$Stub;->setMode(IILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":I
    .end local v15    # "_arg2":Ljava/lang/String;
    :sswitch_f
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/android/internal/app/IAppOpsService$Stub;->resetAllModes(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v19

    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_11
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":[Ljava/lang/String;
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/IAppOpsService$Stub;->setAudioRestriction(IIII[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":[Ljava/lang/String;
    :sswitch_12
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4}, Lcom/android/internal/app/IAppOpsService$Stub;->setUserRestrictions(Landroid/os/Bundle;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v4    # "_arg1":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .end local v8    # "_arg0":Landroid/os/Bundle;
    :sswitch_13
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/app/IAppOpsService$Stub;->removeUser(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    :sswitch_14
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/android/internal/app/IAppOpsService$Stub;->isControlAllowed(ILjava/lang/String;)Z

    move-result v22

    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v22    # "_result":Z
    :sswitch_15
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lcom/android/internal/app/IAppOpsService$Stub;->getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z

    move-result v22

    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v22    # "_result":Z
    :sswitch_16
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v16, 0x1

    .local v16, "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v13, v1}, Lcom/android/internal/app/IAppOpsService$Stub;->setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v16    # "_arg2":Z
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "_arg2":Z
    goto :goto_3

    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Z
    :sswitch_17
    const-string v2, "com.android.internal.app.IAppOpsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IAppOpsService$Stub;->resetCounters()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
