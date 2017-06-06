.class public abstract Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.super Landroid/os/Binder;
.source "IActivityRecognitionHardware.java"

# interfaces
.implements Landroid/hardware/location/IActivityRecognitionHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IActivityRecognitionHardware"

.field static final TRANSACTION_disableActivityEvent:I = 0x6

.field static final TRANSACTION_enableActivityEvent:I = 0x5

.field static final TRANSACTION_flush:I = 0x7

.field static final TRANSACTION_getSupportedActivities:I = 0x1

.field static final TRANSACTION_isActivitySupported:I = 0x2

.field static final TRANSACTION_registerSink:I = 0x3

.field static final TRANSACTION_unregisterSink:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardware;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.hardware.location.IActivityRecognitionHardware"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IActivityRecognitionHardware;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/hardware/location/IActivityRecognitionHardware;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string v7, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_1
    const-string v7, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->getSupportedActivities()[Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v8

    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_2
    const-string v9, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->isActivitySupported(Ljava/lang/String;)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_3
    const-string v9, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareSink;

    move-result-object v0

    .local v0, "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    invoke-virtual {p0, v0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    .end local v0    # "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v9, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareSink;

    move-result-object v0

    .restart local v0    # "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    invoke-virtual {p0, v0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    .end local v0    # "_arg0":Landroid/hardware/location/IActivityRecognitionHardwareSink;
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v9, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg2":J
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->enableActivityEvent(Ljava/lang/String;IJ)Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    .end local v4    # "_arg2":J
    :sswitch_6
    const-string v9, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->disableActivityEvent(Ljava/lang/String;I)Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v9, "android.hardware.location.IActivityRecognitionHardware"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;->flush()Z

    move-result v3

    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

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
