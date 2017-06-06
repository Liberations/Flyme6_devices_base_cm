.class public abstract Landroid/print/IPrintManager$Stub;
.super Landroid/os/Binder;
.source "IPrintManager.java"

# interfaces
.implements Landroid/print/IPrintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintManager"

.field static final TRANSACTION_addPrintJobStateChangeListener:I = 0x6

.field static final TRANSACTION_cancelPrintJob:I = 0x4

.field static final TRANSACTION_createPrinterDiscoverySession:I = 0xa

.field static final TRANSACTION_destroyPrinterDiscoverySession:I = 0x10

.field static final TRANSACTION_getEnabledPrintServices:I = 0x9

.field static final TRANSACTION_getInstalledPrintServices:I = 0x8

.field static final TRANSACTION_getPrintJobInfo:I = 0x2

.field static final TRANSACTION_getPrintJobInfos:I = 0x1

.field static final TRANSACTION_print:I = 0x3

.field static final TRANSACTION_removePrintJobStateChangeListener:I = 0x7

.field static final TRANSACTION_restartPrintJob:I = 0x5

.field static final TRANSACTION_startPrinterDiscovery:I = 0xb

.field static final TRANSACTION_startPrinterStateTracking:I = 0xe

.field static final TRANSACTION_stopPrinterDiscovery:I = 0xc

.field static final TRANSACTION_stopPrinterStateTracking:I = 0xf

.field static final TRANSACTION_validatePrinters:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.print.IPrintManager"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.print.IPrintManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/print/IPrintManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IPrintManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v3

    return v3

    :sswitch_0
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Landroid/print/IPrintManager$Stub;->getPrintJobInfos(II)Ljava/util/List;

    move-result-object v21

    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    .end local v10    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :sswitch_2
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/print/PrintJobId;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Landroid/print/IPrintManager$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    move-result-object v20

    .local v20, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v3, 0x1

    return v3

    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v20    # "_result":Landroid/print/PrintJobInfo;
    :cond_0
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/print/PrintJobId;
    goto :goto_0

    .end local v13    # "_arg0":Landroid/print/PrintJobId;
    .restart local v16    # "_arg1":I
    .restart local v18    # "_arg2":I
    .restart local v20    # "_result":Landroid/print/PrintJobInfo;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v20    # "_result":Landroid/print/PrintJobInfo;
    :sswitch_3
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrintDocumentAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;

    move-result-object v5

    .local v5, "_arg1":Landroid/print/IPrintDocumentAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrintAttributes;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg5":I
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/print/IPrintManager$Stub;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v19

    .local v19, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v19, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v19    # "_result":Landroid/os/Bundle;
    :cond_2
    const/4 v6, 0x0

    .local v6, "_arg2":Landroid/print/PrintAttributes;
    goto :goto_2

    .end local v6    # "_arg2":Landroid/print/PrintAttributes;
    .restart local v7    # "_arg3":Ljava/lang/String;
    .restart local v8    # "_arg4":I
    .restart local v9    # "_arg5":I
    .restart local v19    # "_result":Landroid/os/Bundle;
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/print/IPrintDocumentAdapter;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v19    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/print/PrintJobId;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Landroid/print/IPrintManager$Stub;->cancelPrintJob(Landroid/print/PrintJobId;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    .end local v13    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_5
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/print/PrintJobId;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Landroid/print/IPrintManager$Stub;->restartPrintJob(Landroid/print/PrintJobId;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_5

    .end local v13    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_6
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    move-result-object v11

    .local v11, "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/print/IPrintManager$Stub;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v11    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v16    # "_arg1":I
    .end local v18    # "_arg2":I
    :sswitch_7
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    move-result-object v11

    .restart local v11    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Landroid/print/IPrintManager$Stub;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v11    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v16    # "_arg1":I
    :sswitch_8
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/print/IPrintManager$Stub;->getInstalledPrintServices(I)Ljava/util/List;

    move-result-object v22

    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    .end local v10    # "_arg0":I
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :sswitch_9
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/print/IPrintManager$Stub;->getEnabledPrintServices(I)Ljava/util/List;

    move-result-object v22

    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    .end local v10    # "_arg0":I
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :sswitch_a
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v12

    .local v12, "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Landroid/print/IPrintManager$Stub;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v16    # "_arg1":I
    :sswitch_b
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .local v17, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Landroid/print/IPrintManager$Stub;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v17    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v18    # "_arg2":I
    :sswitch_c
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Landroid/print/IPrintManager$Stub;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v16    # "_arg1":I
    :sswitch_d
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .local v15, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/print/IPrintManager$Stub;->validatePrinters(Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v15    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v16    # "_arg1":I
    :sswitch_e
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/print/PrinterId;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/print/IPrintManager$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v16    # "_arg1":I
    :cond_6
    const/4 v14, 0x0

    .local v14, "_arg0":Landroid/print/PrinterId;
    goto :goto_6

    .end local v14    # "_arg0":Landroid/print/PrinterId;
    :sswitch_f
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/print/PrinterId;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/print/IPrintManager$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v16    # "_arg1":I
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Landroid/print/PrinterId;
    goto :goto_7

    .end local v14    # "_arg0":Landroid/print/PrinterId;
    :sswitch_10
    const-string v3, "android.print.IPrintManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Landroid/print/IPrintManager$Stub;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
