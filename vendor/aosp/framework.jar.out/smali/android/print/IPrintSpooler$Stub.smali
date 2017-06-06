.class public abstract Landroid/print/IPrintSpooler$Stub;
.super Landroid/os/Binder;
.source "IPrintSpooler.java"

# interfaces
.implements Landroid/print/IPrintSpooler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpooler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpooler"

.field static final TRANSACTION_createPrintJob:I = 0x4

.field static final TRANSACTION_getPrintJobInfo:I = 0x3

.field static final TRANSACTION_getPrintJobInfos:I = 0x2

.field static final TRANSACTION_removeObsoletePrintJobs:I = 0x1

.field static final TRANSACTION_setClient:I = 0x8

.field static final TRANSACTION_setPrintJobCancelling:I = 0x9

.field static final TRANSACTION_setPrintJobState:I = 0x5

.field static final TRANSACTION_setPrintJobTag:I = 0x6

.field static final TRANSACTION_writePrintJobData:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.print.IPrintSpooler"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpooler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.print.IPrintSpooler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintSpooler;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/print/IPrintSpooler;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IPrintSpooler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintSpooler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/print/IPrintSpooler$Stub;->removeObsoletePrintJobs()V

    const/4 v3, 0x1

    return v3

    :sswitch_2
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v4

    .local v4, "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg4":I
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/content/ComponentName;
    goto :goto_0

    .end local v4    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/print/PrintJobId;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v18

    .local v18, "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1, v6, v7}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v18    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    :cond_1
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/print/PrintJobId;
    goto :goto_1

    .end local v10    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_4
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/print/PrintJobInfo;

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->createPrintJob(Landroid/print/PrintJobInfo;)V

    const/4 v3, 0x1

    return v3

    :cond_2
    const/16 v17, 0x0

    .local v17, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_2

    .end local v17    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_5
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/print/PrintJobId;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v13

    .local v13, "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg4":I
    move-object/from16 v9, p0

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Landroid/print/IPrintSpooler$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    const/4 v3, 0x1

    return v3

    .end local v8    # "_arg4":I
    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v13    # "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_3

    .end local v10    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_6
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/print/PrintJobId;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v22

    .local v22, "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2, v7}, Landroid/print/IPrintSpooler$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":I
    .end local v20    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    .end local v10    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_7
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/ParcelFileDescriptor;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/print/PrintJobId;

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/print/IPrintSpooler$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    const/4 v3, 0x1

    return v3

    :cond_5
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    .end local v15    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_6
    const/16 v19, 0x0

    .local v19, "_arg1":Landroid/print/PrintJobId;
    goto :goto_6

    .end local v19    # "_arg1":Landroid/print/PrintJobId;
    :sswitch_8
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/print/IPrintSpoolerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;

    move-result-object v16

    .local v16, "_arg0":Landroid/print/IPrintSpoolerClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/print/IPrintSpooler$Stub;->setClient(Landroid/print/IPrintSpoolerClient;)V

    const/4 v3, 0x1

    return v3

    .end local v16    # "_arg0":Landroid/print/IPrintSpoolerClient;
    :sswitch_9
    const-string v3, "android.print.IPrintSpooler"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/print/PrintJobId;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    const/16 v21, 0x1

    .local v21, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/print/IPrintSpooler$Stub;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    const/4 v3, 0x1

    return v3

    .end local v21    # "_arg1":Z
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_7

    .end local v10    # "_arg0":Landroid/print/PrintJobId;
    :cond_8
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_8

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
