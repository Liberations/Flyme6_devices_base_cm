.class public abstract Landroid/service/carrier/ICarrierMessagingService$Stub;
.super Landroid/os/Binder;
.source "ICarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.carrier.ICarrierMessagingService"

.field static final TRANSACTION_downloadMms:I = 0x6

.field static final TRANSACTION_filterSms:I = 0x1

.field static final TRANSACTION_sendDataSms:I = 0x3

.field static final TRANSACTION_sendMms:I = 0x5

.field static final TRANSACTION_sendMultipartTextSms:I = 0x4

.field static final TRANSACTION_sendTextSms:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.carrier.ICarrierMessagingService"

    invoke-virtual {p0, p0, v0}, Landroid/service/carrier/ICarrierMessagingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.service.carrier.ICarrierMessagingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/carrier/ICarrierMessagingService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/carrier/ICarrierMessagingService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/carrier/ICarrierMessagingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
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
    const-string v4, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string v4, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/service/carrier/MessagePdu;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/carrier/MessagePdu;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v9

    .local v9, "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/service/carrier/ICarrierMessagingService$Stub;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/service/carrier/MessagePdu;
    goto :goto_0

    .end local v5    # "_arg0":Landroid/service/carrier/MessagePdu;
    :sswitch_2
    const-string v4, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v9

    .restart local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v10, p0

    move v14, v8

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v4, 0x1

    return v4

    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    :sswitch_3
    const-string v4, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .local v15, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v20

    .local v20, "_arg5":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v14, p0

    move/from16 v16, v12

    move-object/from16 v17, v13

    move/from16 v18, v8

    invoke-virtual/range {v14 .. v20}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v4, 0x1

    return v4

    .end local v8    # "_arg3":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg0":[B
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Landroid/service/carrier/ICarrierMessagingCallback;
    :sswitch_4
    const-string v4, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .local v22, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v9

    .restart local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v21, p0

    move/from16 v23, v12

    move-object/from16 v24, v13

    move/from16 v25, v8

    move-object/from16 v26, v9

    invoke-virtual/range {v21 .. v26}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v4, 0x1

    return v4

    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/service/carrier/ICarrierMessagingCallback;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v22    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v4, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/Uri;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v29

    .local v29, "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/service/carrier/ICarrierMessagingService$Stub;->sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":I
    .end local v29    # "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    :cond_1
    const/16 v27, 0x0

    .local v27, "_arg0":Landroid/net/Uri;
    goto :goto_1

    .end local v27    # "_arg0":Landroid/net/Uri;
    .restart local v12    # "_arg1":I
    :cond_2
    const/16 v28, 0x0

    .local v28, "_arg2":Landroid/net/Uri;
    goto :goto_2

    .end local v12    # "_arg1":I
    .end local v28    # "_arg2":Landroid/net/Uri;
    :sswitch_6
    const-string v4, "android.service.carrier.ICarrierMessagingService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/Uri;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;

    move-result-object v29

    .restart local v29    # "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/service/carrier/ICarrierMessagingService$Stub;->downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V

    const/4 v4, 0x1

    return v4

    .end local v12    # "_arg1":I
    .end local v29    # "_arg3":Landroid/service/carrier/ICarrierMessagingCallback;
    :cond_3
    const/16 v27, 0x0

    .restart local v27    # "_arg0":Landroid/net/Uri;
    goto :goto_3

    .end local v27    # "_arg0":Landroid/net/Uri;
    .restart local v12    # "_arg1":I
    :cond_4
    const/16 v28, 0x0

    .restart local v28    # "_arg2":Landroid/net/Uri;
    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
