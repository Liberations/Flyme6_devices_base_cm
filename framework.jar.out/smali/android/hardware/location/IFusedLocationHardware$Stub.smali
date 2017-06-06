.class public abstract Landroid/hardware/location/IFusedLocationHardware$Stub;
.super Landroid/os/Binder;
.source "IFusedLocationHardware.java"

# interfaces
.implements Landroid/hardware/location/IFusedLocationHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IFusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IFusedLocationHardware"

.field static final TRANSACTION_flushBatchedLocations:I = 0xc

.field static final TRANSACTION_getSupportedBatchSize:I = 0x3

.field static final TRANSACTION_getVersion:I = 0xd

.field static final TRANSACTION_injectDeviceContext:I = 0xb

.field static final TRANSACTION_injectDiagnosticData:I = 0x9

.field static final TRANSACTION_registerSink:I = 0x1

.field static final TRANSACTION_requestBatchOfLocations:I = 0x7

.field static final TRANSACTION_startBatching:I = 0x4

.field static final TRANSACTION_stopBatching:I = 0x5

.field static final TRANSACTION_supportsDeviceContextInjection:I = 0xa

.field static final TRANSACTION_supportsDiagnosticDataInjection:I = 0x8

.field static final TRANSACTION_unregisterSink:I = 0x2

.field static final TRANSACTION_updateBatchingOptions:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.hardware.location.IFusedLocationHardware"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IFusedLocationHardware;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/location/IFusedLocationHardware;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v1

    .local v1, "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-virtual {p0, v1}, Landroid/hardware/location/IFusedLocationHardware$Stub;->registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .end local v1    # "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    :sswitch_2
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v1

    .restart local v1    # "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-virtual {p0, v1}, Landroid/hardware/location/IFusedLocationHardware$Stub;->unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .end local v1    # "_arg0":Landroid/hardware/location/IFusedLocationHardwareSink;
    :sswitch_3
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->getSupportedBatchSize()I

    move-result v4

    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .end local v4    # "_result":I
    :sswitch_4
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/FusedBatchOptions;

    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IFusedLocationHardware$Stub;->startBatching(ILandroid/location/FusedBatchOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Landroid/location/FusedBatchOptions;
    :sswitch_5
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->stopBatching(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/FusedBatchOptions;

    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IFusedLocationHardware$Stub;->updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_1

    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Landroid/location/FusedBatchOptions;
    :sswitch_7
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->requestBatchOfLocations(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v8, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->supportsDiagnosticDataInjection()Z

    move-result v5

    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .end local v5    # "_result":Z
    :sswitch_9
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/hardware/location/IFusedLocationHardware$Stub;->injectDiagnosticData(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v8, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->supportsDeviceContextInjection()Z

    move-result v5

    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .end local v5    # "_result":Z
    :sswitch_b
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->injectDeviceContext(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->flushBatchedLocations()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_d
    const-string v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->getVersion()I

    move-result v4

    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
