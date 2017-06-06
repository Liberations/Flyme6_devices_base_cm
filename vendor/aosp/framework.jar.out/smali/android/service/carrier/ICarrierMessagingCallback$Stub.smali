.class public abstract Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.super Landroid/os/Binder;
.source "ICarrierMessagingCallback.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.carrier.ICarrierMessagingCallback"

.field static final TRANSACTION_onDownloadMmsComplete:I = 0x5

.field static final TRANSACTION_onFilterComplete:I = 0x1

.field static final TRANSACTION_onSendMmsComplete:I = 0x4

.field static final TRANSACTION_onSendMultipartSmsComplete:I = 0x3

.field static final TRANSACTION_onSendSmsComplete:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.service.carrier.ICarrierMessagingCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/carrier/ICarrierMessagingCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/carrier/ICarrierMessagingCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string v5, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string v5, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onFilterComplete(Z)V

    return v6

    .end local v1    # "_arg0":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .end local v1    # "_arg0":Z
    :sswitch_2
    const-string v5, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendSmsComplete(II)V

    return v6

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string v5, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .local v4, "_arg1":[I
    invoke-virtual {p0, v0, v4}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMultipartSmsComplete(I[I)V

    return v6

    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":[I
    :sswitch_4
    const-string v5, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .local v3, "_arg1":[B
    invoke-virtual {p0, v0, v3}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMmsComplete(I[B)V

    return v6

    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":[B
    :sswitch_5
    const-string v5, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onDownloadMmsComplete(I)V

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
