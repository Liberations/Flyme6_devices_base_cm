.class public abstract Lcom/android/internal/telephony/IMms$Stub;
.super Landroid/os/Binder;
.source "IMms.java"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IMms"

.field static final TRANSACTION_addMultimediaMessageDraft:I = 0xb

.field static final TRANSACTION_addTextMessageDraft:I = 0xa

.field static final TRANSACTION_archiveStoredConversation:I = 0x9

.field static final TRANSACTION_deleteStoredConversation:I = 0x7

.field static final TRANSACTION_deleteStoredMessage:I = 0x6

.field static final TRANSACTION_downloadMessage:I = 0x2

.field static final TRANSACTION_getAutoPersisting_13:I = 0xe

.field static final TRANSACTION_getCarrierConfigValues:I = 0x3

.field static final TRANSACTION_importMultimediaMessage:I = 0x5

.field static final TRANSACTION_importTextMessage:I = 0x4

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendStoredMessage:I = 0xc

.field static final TRANSACTION_setAutoPersisting:I = 0xd

.field static final TRANSACTION_updateStoredMessageStatus:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.IMms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IMms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.telephony.IMms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IMms;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/IMms;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IMms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IMms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 49
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

    move-result v6

    return v6

    :sswitch_0
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_1
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    :goto_2
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/IMms$Stub;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v10    # "_arg3":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/net/Uri;
    goto :goto_0

    .end local v9    # "_arg2":Landroid/net/Uri;
    .restart local v10    # "_arg3":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .local v11, "_arg4":Landroid/os/Bundle;
    goto :goto_1

    .end local v11    # "_arg4":Landroid/os/Bundle;
    :cond_2
    const/4 v12, 0x0

    .local v12, "_arg5":Landroid/app/PendingIntent;
    goto :goto_2

    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_2
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    :goto_5
    move-object/from16 v13, p0

    move v14, v7

    move-object v15, v8

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/IMms$Stub;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_3
    const/16 v17, 0x0

    .local v17, "_arg3":Landroid/net/Uri;
    goto :goto_3

    .end local v17    # "_arg3":Landroid/net/Uri;
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/os/Bundle;
    goto :goto_4

    .end local v11    # "_arg4":Landroid/os/Bundle;
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_5

    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    .end local v16    # "_arg2":Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IMms$Stub;->getCarrierConfigValues(I)Landroid/os/Bundle;

    move-result-object v47

    .local v47, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_6

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v6, 0x1

    return v6

    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v7    # "_arg0":I
    .end local v47    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .local v24, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v26, 0x1

    .local v26, "_arg5":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v27, 0x1

    .local v27, "_arg6":Z
    :goto_8
    move-object/from16 v19, p0

    move-object/from16 v21, v8

    move-object/from16 v23, v10

    invoke-virtual/range {v19 .. v27}, Lcom/android/internal/telephony/IMms$Stub;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v46

    .local v46, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v46, :cond_9

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v6, 0x1

    return v6

    .end local v26    # "_arg5":Z
    .end local v27    # "_arg6":Z
    .end local v46    # "_result":Landroid/net/Uri;
    :cond_7
    const/16 v26, 0x0

    .restart local v26    # "_arg5":Z
    goto :goto_7

    :cond_8
    const/16 v27, 0x0

    .restart local v27    # "_arg6":Z
    goto :goto_8

    .restart local v46    # "_result":Landroid/net/Uri;
    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":I
    .end local v24    # "_arg4":J
    .end local v26    # "_arg5":Z
    .end local v27    # "_arg6":Z
    .end local v46    # "_result":Landroid/net/Uri;
    :sswitch_5
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/Uri;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .local v32, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    const/16 v34, 0x1

    .local v34, "_arg4":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    const/16 v26, 0x1

    .restart local v26    # "_arg5":Z
    :goto_c
    move-object/from16 v28, p0

    move-object/from16 v29, v20

    move-object/from16 v31, v16

    move/from16 v35, v26

    invoke-virtual/range {v28 .. v35}, Lcom/android/internal/telephony/IMms$Stub;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v46

    .restart local v46    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v46, :cond_d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d
    const/4 v6, 0x1

    return v6

    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v26    # "_arg5":Z
    .end local v32    # "_arg3":J
    .end local v34    # "_arg4":Z
    .end local v46    # "_result":Landroid/net/Uri;
    :cond_a
    const/16 v30, 0x0

    .local v30, "_arg1":Landroid/net/Uri;
    goto :goto_a

    .end local v30    # "_arg1":Landroid/net/Uri;
    .restart local v16    # "_arg2":Ljava/lang/String;
    .restart local v32    # "_arg3":J
    :cond_b
    const/16 v34, 0x0

    .restart local v34    # "_arg4":Z
    goto :goto_b

    :cond_c
    const/16 v26, 0x0

    .restart local v26    # "_arg5":Z
    goto :goto_c

    .restart local v46    # "_result":Landroid/net/Uri;
    :cond_d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg5":Z
    .end local v32    # "_arg3":J
    .end local v34    # "_arg4":Z
    .end local v46    # "_result":Landroid/net/Uri;
    :sswitch_6
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/Uri;

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v48

    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v48    # "_result":Z
    :cond_e
    const/16 v30, 0x0

    .restart local v30    # "_arg1":Landroid/net/Uri;
    goto :goto_e

    .end local v30    # "_arg1":Landroid/net/Uri;
    .restart local v48    # "_result":Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_7
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    .local v42, "_arg1":J
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_10

    const/4 v6, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_10
    const/4 v6, 0x0

    goto :goto_10

    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v42    # "_arg1":J
    .end local v48    # "_result":Z
    :sswitch_8
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/Uri;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/ContentValues;

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IMms$Stub;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_13

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v48    # "_result":Z
    :cond_11
    const/16 v30, 0x0

    .restart local v30    # "_arg1":Landroid/net/Uri;
    goto :goto_11

    .end local v30    # "_arg1":Landroid/net/Uri;
    :cond_12
    const/16 v44, 0x0

    .local v44, "_arg2":Landroid/content/ContentValues;
    goto :goto_12

    .end local v44    # "_arg2":Landroid/content/ContentValues;
    .restart local v48    # "_result":Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_13

    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_9
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    .restart local v42    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    const/16 v45, 0x1

    .local v45, "_arg2":Z
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v42

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IMms$Stub;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_15

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v45    # "_arg2":Z
    .end local v48    # "_result":Z
    :cond_14
    const/16 v45, 0x0

    .restart local v45    # "_arg2":Z
    goto :goto_14

    .restart local v48    # "_result":Z
    :cond_15
    const/4 v6, 0x0

    goto :goto_15

    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v42    # "_arg1":J
    .end local v45    # "_arg2":Z
    .end local v48    # "_result":Z
    :sswitch_a
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/internal/telephony/IMms$Stub;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v46

    .restart local v46    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v46, :cond_16

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_16
    const/4 v6, 0x1

    return v6

    :cond_16
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Landroid/net/Uri;
    :sswitch_b
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/Uri;

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v46

    .restart local v46    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v46, :cond_18

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_18
    const/4 v6, 0x1

    return v6

    .end local v46    # "_result":Landroid/net/Uri;
    :cond_17
    const/16 v30, 0x0

    .restart local v30    # "_arg1":Landroid/net/Uri;
    goto :goto_17

    .end local v30    # "_arg1":Landroid/net/Uri;
    .restart local v46    # "_result":Landroid/net/Uri;
    :cond_18
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Landroid/net/Uri;
    :sswitch_c
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Bundle;

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/PendingIntent;

    :goto_1b
    move-object/from16 v35, p0

    move/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-virtual/range {v35 .. v40}, Lcom/android/internal/telephony/IMms$Stub;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_19
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_19

    .end local v9    # "_arg2":Landroid/net/Uri;
    :cond_1a
    const/16 v39, 0x0

    .local v39, "_arg3":Landroid/os/Bundle;
    goto :goto_1a

    .end local v39    # "_arg3":Landroid/os/Bundle;
    :cond_1b
    const/16 v40, 0x0

    .local v40, "_arg4":Landroid/app/PendingIntent;
    goto :goto_1b

    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v40    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_d
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v41, 0x1

    .local v41, "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->setAutoPersisting(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v41    # "_arg1":Z
    :cond_1c
    const/16 v41, 0x0

    .restart local v41    # "_arg1":Z
    goto :goto_1c

    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Z
    :sswitch_e
    const-string v6, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IMms$Stub;->getAutoPersisting()Z

    move-result v48

    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_1d

    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_1d
    const/4 v6, 0x0

    goto :goto_1d

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
