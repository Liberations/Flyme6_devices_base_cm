.class public abstract Landroid/printservice/IPrintServiceClient$Stub;
.super Landroid/os/Binder;
.source "IPrintServiceClient.java"

# interfaces
.implements Landroid/printservice/IPrintServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintServiceClient"

.field static final TRANSACTION_getPrintJobInfo:I = 0x2

.field static final TRANSACTION_getPrintJobInfos:I = 0x1

.field static final TRANSACTION_onPrintersAdded:I = 0x6

.field static final TRANSACTION_onPrintersRemoved:I = 0x7

.field static final TRANSACTION_setPrintJobState:I = 0x3

.field static final TRANSACTION_setPrintJobTag:I = 0x4

.field static final TRANSACTION_writePrintJobData:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.printservice.IPrintServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.printservice.IPrintServiceClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/printservice/IPrintServiceClient;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/printservice/IPrintServiceClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/printservice/IPrintServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/printservice/IPrintServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_0
    const-string v10, "android.printservice.IPrintServiceClient"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string v10, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfos()Ljava/util/List;

    move-result-object v8

    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :sswitch_2
    const-string v10, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    :goto_0
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    move-result-object v7

    .local v7, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v10, 0x1

    return v10

    .end local v7    # "_result":Landroid/print/PrintJobInfo;
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/print/PrintJobId;
    goto :goto_0

    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .restart local v7    # "_result":Landroid/print/PrintJobInfo;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v7    # "_result":Landroid/print/PrintJobInfo;
    :sswitch_3
    const-string v10, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v6}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result v9

    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_3

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    .end local v3    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v9    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_2

    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .restart local v3    # "_arg1":I
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v9    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .end local v3    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_4
    const-string v10, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v5}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result v9

    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_5

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_result":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_5
    const-string v10, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobId;

    :goto_7
    invoke-virtual {p0, v1, v4}, Landroid/printservice/IPrintServiceClient$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    const/4 v10, 0x1

    return v10

    :cond_6
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/print/PrintJobId;
    goto :goto_7

    .end local v4    # "_arg1":Landroid/print/PrintJobId;
    :sswitch_6
    const-string v10, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    sget-object v10, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    :goto_8
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_8
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_8

    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_7
    const-string v10, "android.printservice.IPrintServiceClient"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    :goto_9
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
