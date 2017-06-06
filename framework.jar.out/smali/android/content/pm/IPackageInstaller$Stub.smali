.class public abstract Landroid/content/pm/IPackageInstaller$Stub;
.super Landroid/os/Binder;
.source "IPackageInstaller.java"

# interfaces
.implements Landroid/content/pm/IPackageInstaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstaller$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstaller"

.field static final TRANSACTION_abandonSession:I = 0x4

.field static final TRANSACTION_createSession:I = 0x1

.field static final TRANSACTION_getAllSessions:I = 0x7

.field static final TRANSACTION_getMySessions:I = 0x8

.field static final TRANSACTION_getSessionInfo:I = 0x6

.field static final TRANSACTION_openSession:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x9

.field static final TRANSACTION_setPermissionsResult:I = 0xc

.field static final TRANSACTION_uninstall:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0xa

.field static final TRANSACTION_updateSessionAppIcon:I = 0x2

.field static final TRANSACTION_updateSessionAppLabel:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.pm.IPackageInstaller"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstaller$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.content.pm.IPackageInstaller"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageInstaller;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/pm/IPackageInstaller;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageInstaller$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInstaller$SessionParams;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4, v5}, Landroid/content/pm/IPackageInstaller$Stub;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v14

    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v14    # "_result":I
    :cond_0
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/content/pm/PackageInstaller$SessionParams;
    goto :goto_0

    .end local v10    # "_arg0":Landroid/content/pm/PackageInstaller$SessionParams;
    :sswitch_2
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v12, 0x0

    .local v12, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_1

    .end local v8    # "_arg0":I
    .end local v12    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_3
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppLabel(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg0":I
    :sswitch_4
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/pm/IPackageInstaller$Stub;->abandonSession(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v8    # "_arg0":I
    :sswitch_5
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/pm/IPackageInstaller$Stub;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v15

    .local v15, "_result":Landroid/content/pm/IPackageInstallerSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/content/pm/IPackageInstallerSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .end local v8    # "_arg0":I
    .end local v15    # "_result":Landroid/content/pm/IPackageInstallerSession;
    :sswitch_6
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/pm/IPackageInstaller$Stub;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v16

    .local v16, "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v8    # "_arg0":I
    .end local v16    # "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    :sswitch_7
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/pm/IPackageInstaller$Stub;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v17

    .local v17, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v2, 0x1

    return v2

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v8    # "_arg0":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_8
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/content/pm/IPackageInstaller$Stub;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v17

    .restart local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v2, 0x1

    return v2

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v17    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_9
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    move-result-object v9

    .local v9, "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Landroid/content/pm/IPackageInstaller$Stub;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v9    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    .end local v11    # "_arg1":I
    :sswitch_a
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    move-result-object v9

    .restart local v9    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/pm/IPackageInstaller$Stub;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v9    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    :sswitch_b
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/IPackageInstaller$Stub;->uninstall(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v7    # "_arg4":I
    :cond_6
    const/4 v6, 0x0

    .local v6, "_arg3":Landroid/content/IntentSender;
    goto :goto_6

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/content/IntentSender;
    :sswitch_c
    const-string v2, "android.content.pm.IPackageInstaller"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v13, 0x1

    .local v13, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Landroid/content/pm/IPackageInstaller$Stub;->setPermissionsResult(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    .end local v13    # "_arg1":Z
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Z
    goto :goto_7

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
