.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_checkPassword:I = 0xb

.field static final TRANSACTION_checkPattern:I = 0x8

.field static final TRANSACTION_checkVoldPassword:I = 0xe

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getLockPatternSize:I = 0xd

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_havePassword:I = 0x10

.field static final TRANSACTION_havePattern:I = 0xf

.field static final TRANSACTION_registerStrongAuthTracker:I = 0x11

.field static final TRANSACTION_requireStrongAuth:I = 0x13

.field static final TRANSACTION_sanitizePassword:I = 0x14

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setLockPassword:I = 0xa

.field static final TRANSACTION_setLockPattern:I = 0x7

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setString:I = 0x3

.field static final TRANSACTION_unregisterStrongAuthTracker:I = 0x12

.field static final TRANSACTION_verifyPassword:I = 0xc

.field static final TRANSACTION_verifyPattern:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v17

    return v17

    :sswitch_0
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :sswitch_1
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_0

    const/4 v9, 0x1

    .local v9, "_arg1":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v9    # "_arg1":Z
    .end local v10    # "_arg2":I
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_0

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Z
    :sswitch_2
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v10    # "_arg2":I
    :sswitch_3
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    :sswitch_4
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1

    const/4 v9, 0x1

    .restart local v9    # "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v16

    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_2

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    .end local v9    # "_arg1":Z
    .end local v10    # "_arg2":I
    .end local v16    # "_result":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_1

    .restart local v10    # "_arg2":I
    .restart local v16    # "_result":Z
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Z
    .end local v10    # "_arg2":I
    .end local v16    # "_result":Z
    :sswitch_5
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v17, 0x1

    return v17

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v10    # "_arg2":I
    .end local v12    # "_result":J
    :sswitch_6
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    :sswitch_8
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v14

    .local v14, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_3

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/16 v17, 0x1

    return v17

    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v14    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_9
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v14

    .restart local v14    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_4

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/16 v17, 0x1

    return v17

    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v10    # "_arg2":I
    .end local v14    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_a
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    :sswitch_b
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v14

    .restart local v14    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_5

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/16 v17, 0x1

    return v17

    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v14    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_c
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v14

    .restart local v14    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_6

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/16 v17, 0x1

    return v17

    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v10    # "_arg2":I
    .end local v14    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_d
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getLockPatternSize(I)B

    move-result v11

    .local v11, "_result":B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByte(B)V

    const/16 v17, 0x1

    return v17

    .end local v2    # "_arg0":I
    .end local v11    # "_result":B
    :sswitch_e
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkVoldPassword(I)Z

    move-result v16

    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_7

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_7
    const/16 v17, 0x0

    goto :goto_7

    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_f
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->havePattern(I)Z

    move-result v16

    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_8

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_8
    const/16 v17, 0x0

    goto :goto_8

    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_10
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->havePassword(I)Z

    move-result v16

    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_9

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_9
    const/16 v17, 0x0

    goto :goto_9

    .end local v2    # "_arg0":I
    .end local v16    # "_result":Z
    :sswitch_11
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v3

    .local v3, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v3    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_12
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v3

    .restart local v3    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v3    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_13
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_14
    const-string v17, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->sanitizePassword()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
