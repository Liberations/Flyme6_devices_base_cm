.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final TRANSACTION_abortFullRestore_23:I = 0x18

.field static final TRANSACTION_cancelFullBackup:I = 0x16

.field static final TRANSACTION_checkFullBackupSize:I = 0x14

.field static final TRANSACTION_clearBackupData_9:I = 0xa

.field static final TRANSACTION_configurationIntent_1:I = 0x2

.field static final TRANSACTION_currentDestinationString_2:I = 0x3

.field static final TRANSACTION_dataManagementIntent_3:I = 0x4

.field static final TRANSACTION_dataManagementLabel_4:I = 0x5

.field static final TRANSACTION_finishBackup_10:I = 0xb

.field static final TRANSACTION_finishRestore:I = 0x11

.field static final TRANSACTION_getAvailableRestoreSets:I = 0xc

.field static final TRANSACTION_getCurrentRestoreSet_12:I = 0xd

.field static final TRANSACTION_getNextFullRestoreDataChunk_22:I = 0x17

.field static final TRANSACTION_getRestoreData_15:I = 0x10

.field static final TRANSACTION_initializeDevice_7:I = 0x8

.field static final TRANSACTION_name:I = 0x1

.field static final TRANSACTION_nextRestorePackage_14:I = 0xf

.field static final TRANSACTION_performBackup_8:I = 0x9

.field static final TRANSACTION_performFullBackup:I = 0x13

.field static final TRANSACTION_requestBackupTime_6:I = 0x7

.field static final TRANSACTION_requestFullBackupTime:I = 0x12

.field static final TRANSACTION_sendBackupData:I = 0x15

.field static final TRANSACTION_startRestore_13:I = 0xe

.field static final TRANSACTION_transportDirName_5:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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

    move-result v16

    return v16

    :sswitch_0
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v16, 0x1

    return v16

    :sswitch_1
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->name()Ljava/lang/String;

    move-result-object v14

    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v16, 0x1

    return v16

    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent()Landroid/content/Intent;

    move-result-object v13

    .local v13, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_0

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v16, 0x1

    return v16

    :cond_0
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v13    # "_result":Landroid/content/Intent;
    :sswitch_3
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v16, 0x1

    return v16

    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v13

    .restart local v13    # "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_1

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v16, 0x1

    return v16

    :cond_1
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v13    # "_result":Landroid/content/Intent;
    :sswitch_5
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementLabel()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v16, 0x1

    return v16

    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v16, 0x1

    return v16

    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime()J

    move-result-wide v10

    .local v10, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v16, 0x1

    return v16

    .end local v10    # "_result":J
    :sswitch_8
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice()I

    move-result v9

    .local v9, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v9    # "_result":I
    :sswitch_9
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_2

    sget-object v16, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_3

    sget-object v16, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v9    # "_result":I
    :cond_2
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_2

    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    .end local v7    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_a
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_4

    sget-object v16, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v9    # "_result":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_4

    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :sswitch_b
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup()I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v9    # "_result":I
    :sswitch_c
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v15

    .local v15, "_result":[Landroid/app/backup/RestoreSet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v16, 0x1

    return v16

    .end local v15    # "_result":[Landroid/app/backup/RestoreSet;
    :sswitch_d
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet()J

    move-result-wide v10

    .restart local v10    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v16, 0x1

    return v16

    .end local v10    # "_result":J
    :sswitch_e
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg0":J
    sget-object v16, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/pm/PackageInfo;

    .local v8, "_arg1":[Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v4    # "_arg0":J
    .end local v8    # "_arg1":[Landroid/content/pm/PackageInfo;
    .end local v9    # "_result":I
    :sswitch_f
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v12

    .local v12, "_result":Landroid/app/backup/RestoreDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_5

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/app/backup/RestoreDescription;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/16 v16, 0x1

    return v16

    :cond_5
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v12    # "_result":Landroid/app/backup/RestoreDescription;
    :sswitch_10
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_6

    sget-object v16, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v9    # "_result":I
    :cond_6
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .end local v6    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_11
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_12
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime()J

    move-result-wide v10

    .restart local v10    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v16, 0x1

    return v16

    .end local v10    # "_result":J
    :sswitch_13
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_7

    sget-object v16, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_8

    sget-object v16, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v9    # "_result":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    goto :goto_7

    .end local v3    # "_arg0":Landroid/content/pm/PackageInfo;
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .end local v7    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_14
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .restart local v4    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(J)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v4    # "_arg0":J
    .end local v9    # "_result":I
    :sswitch_15
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(I)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v2    # "_arg0":I
    .end local v9    # "_result":I
    :sswitch_16
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_17
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_9

    sget-object v16, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    .end local v9    # "_result":I
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_9

    .end local v6    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_18
    const-string v16, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore()I

    move-result v9

    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
