.class public abstract Lcom/android/server/location/GpsMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GpsMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsMeasurementsProvider"


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const-string v0, "GpsMeasurementsProvider"

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "listener"    # Landroid/os/IInterface;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<",
            "Landroid/location/IGpsMeasurementsListener;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v1, "GpsMeasurementsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled addListener result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_0
    const/4 v0, 0x1

    .local v0, "status":I
    :goto_0
    new-instance v1, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;-><init>(I)V

    return-object v1

    .end local v0    # "status":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_0

    .end local v0    # "status":I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0    # "status":I
    goto :goto_0

    .end local v0    # "status":I
    :pswitch_3
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 0
    .param p1, "isGpsMeasurementsSupported"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->setSupported(Z)V

    invoke-virtual {p0}, Lcom/android/server/location/GpsMeasurementsProvider;->updateResult()V

    return-void
.end method

.method public onGpsEnabledChanged()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/location/GpsMeasurementsProvider;->tryUpdateRegistrationWithService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/GpsMeasurementsProvider;->updateResult()V

    :cond_0
    return-void
.end method

.method public onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    new-instance v0, Lcom/android/server/location/GpsMeasurementsProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider$1;-><init>(Lcom/android/server/location/GpsMeasurementsProvider;Landroid/location/GpsMeasurementsEvent;)V

    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<Landroid/location/IGpsMeasurementsListener;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method public bridge synthetic removeListener(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IInterface;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    return-void
.end method
