.class public abstract Lcom/android/ims/internal/IImsUt$Stub;
.super Landroid/os/Binder;
.source "IImsUt.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUt"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_queryCFForServiceClass:I = 0x12

.field static final TRANSACTION_queryCLIP:I = 0x6

.field static final TRANSACTION_queryCLIR:I = 0x5

.field static final TRANSACTION_queryCOLP:I = 0x8

.field static final TRANSACTION_queryCOLR:I = 0x7

.field static final TRANSACTION_queryCallBarring:I = 0x2

.field static final TRANSACTION_queryCallForward:I = 0x3

.field static final TRANSACTION_queryCallWaiting:I = 0x4

.field static final TRANSACTION_setListener:I = 0x11

.field static final TRANSACTION_transact:I = 0x9

.field static final TRANSACTION_updateCLIP:I = 0xe

.field static final TRANSACTION_updateCLIR:I = 0xd

.field static final TRANSACTION_updateCOLP:I = 0x10

.field static final TRANSACTION_updateCOLR:I = 0xf

.field static final TRANSACTION_updateCallBarring:I = 0xa

.field static final TRANSACTION_updateCallForward:I = 0xb

.field static final TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.ims.internal.IImsUt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsUt;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/ims/internal/IImsUt;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsUt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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

    move-result v1

    return v1

    :sswitch_0
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    :sswitch_2
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarring(I)I

    move-result v13

    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_3
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v10}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallForward(ILjava/lang/String;)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_4
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallWaiting()I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v13    # "_result":I
    :sswitch_5
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIR()I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v13    # "_result":I
    :sswitch_6
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIP()I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v13    # "_result":I
    :sswitch_7
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLR()I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v13    # "_result":I
    :sswitch_8
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLP()I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v13    # "_result":I
    :sswitch_9
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/ims/internal/IImsUt$Stub;->transact(Landroid/os/Bundle;)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v13    # "_result":I
    :cond_0
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .end local v7    # "_arg0":Landroid/os/Bundle;
    :sswitch_a
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v12}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v12    # "_arg2":[Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_b
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallForward(IILjava/lang/String;II)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v13    # "_result":I
    :sswitch_c
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    .local v9, "_arg0":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v9, v3}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallWaiting(ZI)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v3    # "_arg1":I
    .end local v9    # "_arg0":Z
    .end local v13    # "_result":I
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Z
    goto :goto_1

    .end local v9    # "_arg0":Z
    :sswitch_d
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIR(I)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_e
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x1

    .restart local v9    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v9}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIP(Z)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v9    # "_arg0":Z
    .end local v13    # "_result":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Z
    goto :goto_2

    .end local v9    # "_arg0":Z
    :sswitch_f
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLR(I)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_10
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v9, 0x1

    .restart local v9    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLP(Z)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    .end local v9    # "_arg0":Z
    .end local v13    # "_result":I
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Z
    goto :goto_3

    .end local v9    # "_arg0":Z
    :sswitch_11
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v8

    .local v8, "_arg0":Lcom/android/ims/internal/IImsUtListener;
    invoke-virtual {p0, v8}, Lcom/android/ims/internal/IImsUt$Stub;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    .end local v8    # "_arg0":Lcom/android/ims/internal/IImsUtListener;
    :sswitch_12
    const-string v1, "com.android.ims.internal.IImsUt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg2":I
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/ims/internal/IImsUt$Stub;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v13

    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
