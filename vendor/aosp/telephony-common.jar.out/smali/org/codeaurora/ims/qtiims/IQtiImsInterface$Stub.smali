.class public abstract Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;
.super Landroid/os/Binder;
.source "IQtiImsInterface.java"

# interfaces
.implements Lorg/codeaurora/ims/qtiims/IQtiImsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/qtiims/IQtiImsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.qtiims.IQtiImsInterface"

.field static final TRANSACTION_getCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_getPacketCount:I = 0x3

.field static final TRANSACTION_getPacketErrorCount:I = 0x4

.field static final TRANSACTION_querySsacStatus:I = 0x9

.field static final TRANSACTION_queryVopsStatus:I = 0x8

.field static final TRANSACTION_registerForViceRefreshInfo:I = 0x6

.field static final TRANSACTION_sendCallDeflectRequest:I = 0x5

.field static final TRANSACTION_sendCallTransferRequest:I = 0x7

.field static final TRANSACTION_setCallForwardUncondTimer:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/codeaurora/ims/qtiims/IQtiImsInterface;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v1

    return v1

    :sswitch_0
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    move-result-object v10

    .local v10, "_arg8":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":Ljava/lang/String;
    .end local v10    # "_arg8":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    :sswitch_2
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    move-result-object v14

    .local v14, "_arg2":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v14}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->getCallForwardUncondTimer(IILorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_arg2":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    :sswitch_3
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    move-result-object v11

    .local v11, "_arg0":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->getPacketCount(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V

    const/4 v1, 0x1

    return v1

    .end local v11    # "_arg0":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    :sswitch_4
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    move-result-object v11

    .restart local v11    # "_arg0":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->getPacketErrorCount(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V

    const/4 v1, 0x1

    return v1

    .end local v11    # "_arg0":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    :sswitch_5
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    move-result-object v14

    .restart local v14    # "_arg2":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v14}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    :sswitch_6
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    move-result-object v11

    .restart local v11    # "_arg0":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->registerForViceRefreshInfo(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V

    const/4 v1, 0x1

    return v1

    .end local v11    # "_arg0":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    :sswitch_7
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    move-result-object v15

    .local v15, "_arg3":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v13, v15}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    :sswitch_8
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    move-result-object v11

    .restart local v11    # "_arg0":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->queryVopsStatus(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V

    const/4 v1, 0x1

    return v1

    .end local v11    # "_arg0":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    :sswitch_9
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    move-result-object v11

    .restart local v11    # "_arg0":Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;->querySsacStatus(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V

    const/4 v1, 0x1

    return v1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
