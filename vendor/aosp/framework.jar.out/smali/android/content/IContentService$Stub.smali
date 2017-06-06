.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0xf

.field static final TRANSACTION_addStatusChangeListener:I = 0x22

.field static final TRANSACTION_cancelRequest:I = 0x9

.field static final TRANSACTION_cancelSync:I = 0x7

.field static final TRANSACTION_cancelSyncAsUser:I = 0x8

.field static final TRANSACTION_getCurrentSyncs:I = 0x18

.field static final TRANSACTION_getCurrentSyncsAsUser:I = 0x19

.field static final TRANSACTION_getIsSyncable:I = 0x11

.field static final TRANSACTION_getIsSyncableAsUser:I = 0x12

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0x16

.field static final TRANSACTION_getMasterSyncAutomaticallyAsUser:I = 0x17

.field static final TRANSACTION_getPeriodicSyncs:I = 0xe

.field static final TRANSACTION_getSyncAdapterPackagesForAuthorityAsUser:I = 0x1c

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x1a

.field static final TRANSACTION_getSyncAdapterTypesAsUser:I = 0x1b

.field static final TRANSACTION_getSyncAutomatically:I = 0xa

.field static final TRANSACTION_getSyncAutomaticallyAsUser:I = 0xb

.field static final TRANSACTION_getSyncStatus:I = 0x1e

.field static final TRANSACTION_getSyncStatusAsUser:I = 0x1f

.field static final TRANSACTION_isSyncActive:I = 0x1d

.field static final TRANSACTION_isSyncPending:I = 0x20

.field static final TRANSACTION_isSyncPendingAsUser:I = 0x21

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_registerContentObserver:I = 0x2

.field static final TRANSACTION_removePeriodicSync:I = 0x10

.field static final TRANSACTION_removeStatusChangeListener:I = 0x23

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_setIsSyncable:I = 0x13

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0x14

.field static final TRANSACTION_setMasterSyncAutomaticallyAsUser:I = 0x15

.field static final TRANSACTION_setSyncAutomatically:I = 0xc

.field static final TRANSACTION_setSyncAutomaticallyAsUser:I = 0xd

.field static final TRANSACTION_sync:I = 0x5

.field static final TRANSACTION_syncAsUser:I = 0x6

.field static final TRANSACTION_unregisterContentObserver:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.content.IContentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/IContentService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/IContentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 36
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
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v19

    .local v19, "_arg0":Landroid/database/IContentObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v19    # "_arg0":Landroid/database/IContentObserver;
    :sswitch_2
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v24, 0x1

    .local v24, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v27

    .local v27, "_arg2":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v24    # "_arg1":Z
    .end local v27    # "_arg2":Landroid/database/IContentObserver;
    .end local v28    # "_arg3":I
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/Uri;
    goto :goto_0

    .end local v5    # "_arg0":Landroid/net/Uri;
    :cond_1
    const/16 v24, 0x0

    .restart local v24    # "_arg1":Z
    goto :goto_1

    .end local v24    # "_arg1":Z
    :sswitch_3
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v6

    .local v6, "_arg1":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    .local v7, "_arg2":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v8, 0x1

    .local v8, "_arg3":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":Landroid/database/IContentObserver;
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/Uri;
    goto :goto_2

    .end local v5    # "_arg0":Landroid/net/Uri;
    .restart local v6    # "_arg1":Landroid/database/IContentObserver;
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Z
    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_4

    .end local v6    # "_arg1":Landroid/database/IContentObserver;
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Z
    :sswitch_4
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/accounts/Account;
    goto :goto_5

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    .local v13, "_arg2":Landroid/os/Bundle;
    goto :goto_6

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/Bundle;
    :sswitch_5
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/SyncRequest;

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->sync(Landroid/content/SyncRequest;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_7
    const/16 v18, 0x0

    .local v18, "_arg0":Landroid/content/SyncRequest;
    goto :goto_7

    .end local v18    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_6
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/SyncRequest;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->syncAsUser(Landroid/content/SyncRequest;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v22    # "_arg1":I
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_8

    .end local v18    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_7
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_9

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_a
    const/16 v26, 0x0

    .local v26, "_arg2":Landroid/content/ComponentName;
    goto :goto_a

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    :sswitch_8
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/content/IContentService$Stub;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    :cond_b
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_b

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_c
    const/16 v26, 0x0

    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_c

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    :sswitch_9
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/SyncRequest;

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->cancelRequest(Landroid/content/SyncRequest;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_d
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_d

    .end local v18    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_a
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v33

    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :cond_e
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_e

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v33    # "_result":Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_b
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v33

    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg2":I
    .end local v33    # "_result":Z
    :cond_10
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_10

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v25    # "_arg2":I
    .restart local v33    # "_result":Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg2":I
    .end local v33    # "_result":Z
    :sswitch_c
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    const/4 v7, 0x1

    .restart local v7    # "_arg2":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v7}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_12
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_12

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Z
    goto :goto_13

    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/4 v7, 0x1

    .restart local v7    # "_arg2":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v11, v12, v7, v1}, Landroid/content/IContentService$Stub;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    :cond_14
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_14

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_15
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Z
    goto :goto_15

    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v31

    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_16
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_16

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_17
    const/16 v26, 0x0

    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_17

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    :sswitch_f
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .local v14, "_arg3":J
    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":J
    :cond_18
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_18

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_19
    const/4 v13, 0x0

    .restart local v13    # "_arg2":Landroid/os/Bundle;
    goto :goto_19

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/Bundle;
    :sswitch_10
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_1a
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1a

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_1b
    const/4 v13, 0x0

    .restart local v13    # "_arg2":Landroid/os/Bundle;
    goto :goto_1b

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/Bundle;
    :sswitch_11
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v29

    .local v29, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":I
    :cond_1c
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1c

    .end local v11    # "_arg0":Landroid/accounts/Account;
    :sswitch_12
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v29

    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg2":I
    .end local v29    # "_result":I
    :cond_1d
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1d

    .end local v11    # "_arg0":Landroid/accounts/Account;
    :sswitch_13
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg2":I
    :cond_1e
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1e

    .end local v11    # "_arg0":Landroid/accounts/Account;
    :sswitch_14
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v21, 0x1

    .local v21, "_arg0":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v21    # "_arg0":Z
    :cond_1f
    const/16 v21, 0x0

    .restart local v21    # "_arg0":Z
    goto :goto_1f

    .end local v21    # "_arg0":Z
    :sswitch_15
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    const/16 v21, 0x1

    .restart local v21    # "_arg0":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .restart local v22    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->setMasterSyncAutomaticallyAsUser(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v21    # "_arg0":Z
    .end local v22    # "_arg1":I
    :cond_20
    const/16 v21, 0x0

    .restart local v21    # "_arg0":Z
    goto :goto_20

    .end local v21    # "_arg0":Z
    :sswitch_16
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v33

    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_21

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_21
    const/4 v4, 0x0

    goto :goto_21

    .end local v33    # "_result":Z
    :sswitch_17
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v33

    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_22

    const/4 v4, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_22
    const/4 v4, 0x0

    goto :goto_22

    .end local v16    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_18
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    move-result-object v32

    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_19
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v32

    .restart local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":I
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_1a
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v34

    .local v34, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    .end local v34    # "_result":[Landroid/content/SyncAdapterType;
    :sswitch_1b
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v34

    .restart local v34    # "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":I
    .end local v34    # "_result":[Landroid/content/SyncAdapterType;
    :sswitch_1c
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .restart local v22    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v35

    .local v35, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":I
    .end local v35    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v33

    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_25

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :cond_23
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_23

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_24
    const/16 v26, 0x0

    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_24

    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v33    # "_result":Z
    :cond_25
    const/4 v4, 0x0

    goto :goto_25

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_1e
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    move-result-object v30

    .local v30, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_28

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_28
    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_26
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_26

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_27
    const/16 v26, 0x0

    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_27

    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :sswitch_1f
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/content/IContentService$Stub;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v30

    .restart local v30    # "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_2b

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2b
    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_29
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_29

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_2a
    const/16 v26, 0x0

    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_2a

    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v28    # "_arg3":I
    .restart local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :sswitch_20
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    :goto_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v33

    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_2e

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :cond_2c
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_2c

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_2d
    const/16 v26, 0x0

    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_2d

    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v33    # "_result":Z
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2e

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_21
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/accounts/Account;

    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ComponentName;

    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v33

    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_31

    const/4 v4, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    .end local v33    # "_result":Z
    :cond_2f
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_2f

    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_30
    const/16 v26, 0x0

    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_30

    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v28    # "_arg3":I
    .restart local v33    # "_result":Z
    :cond_31
    const/4 v4, 0x0

    goto :goto_31

    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    .end local v33    # "_result":Z
    :sswitch_22
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v23

    .local v23, "_arg1":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":I
    .end local v23    # "_arg1":Landroid/content/ISyncStatusObserver;
    :sswitch_23
    const-string v4, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v17

    .local v17, "_arg0":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

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
