.class public abstract Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;
.super Landroid/os/Binder;
.source "IQtiImsInterfaceListener.java"

# interfaces
.implements Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

.field static final TRANSACTION_notifyRefreshViceInfo:I = 0x7

.field static final TRANSACTION_notifySsacStatus_9:I = 0xa

.field static final TRANSACTION_notifyVopsStatus_8:I = 0x9

.field static final TRANSACTION_onGetCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_onGetPacketCount_3:I = 0x4

.field static final TRANSACTION_onGetPacketErrorCount_4:I = 0x5

.field static final TRANSACTION_onSetCallForwardUncondTimer_0:I = 0x1

.field static final TRANSACTION_onUTReqFailed:I = 0x3

.field static final TRANSACTION_receiveCallDeflectResponse:I = 0x6

.field static final TRANSACTION_receiveCallTransferResponse:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onSetCallForwardUncondTimer(I)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    :sswitch_2
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg7":I
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onGetCallForwardUncondTimer(IIIIIILjava/lang/String;I)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":I
    :sswitch_3
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onUTReqFailed(ILjava/lang/String;)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .local v14, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v15}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onGetPacketCount(IJ)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":J
    :sswitch_5
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .restart local v14    # "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14, v15}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onGetPacketErrorCount(IJ)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":J
    :sswitch_6
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->receiveCallDeflectResponse(I)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    :sswitch_7
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codeaurora/ims/qtiims/QtiViceInfo;

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->notifyRefreshViceInfo(Lorg/codeaurora/ims/qtiims/QtiViceInfo;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v11, 0x0

    .local v11, "_arg0":Lorg/codeaurora/ims/qtiims/QtiViceInfo;
    goto :goto_0

    .end local v11    # "_arg0":Lorg/codeaurora/ims/qtiims/QtiViceInfo;
    :sswitch_8
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->receiveCallTransferResponse(I)V

    const/4 v2, 0x1

    return v2

    .end local v3    # "_arg0":I
    :sswitch_9
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v12, 0x1

    .local v12, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->notifyVopsStatus(Z)V

    const/4 v2, 0x1

    return v2

    .end local v12    # "_arg0":Z
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Z
    goto :goto_1

    .end local v12    # "_arg0":Z
    :sswitch_a
    const-string v2, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v12, 0x1

    .restart local v12    # "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->notifySsacStatus(Z)V

    const/4 v2, 0x1

    return v2

    .end local v12    # "_arg0":Z
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Z
    goto :goto_2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
