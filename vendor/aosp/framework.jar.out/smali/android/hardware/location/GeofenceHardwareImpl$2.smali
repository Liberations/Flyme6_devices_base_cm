.class Landroid/hardware/location/GeofenceHardwareImpl$2;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;

    .prologue
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/location/GeofenceHardwareMonitorEvent;

    .local v5, "event":Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5}, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->getMonitoringType()I

    move-result v8

    aget-object v3, v7, v8

    .local v3, "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v3, :cond_2

    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "GeofenceHardwareImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MonitoringSystemChangeCallback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .local v0, "c":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    :try_start_0
    invoke-interface {v0, v5}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->onMonitoringSystemChange(Landroid/hardware/location/GeofenceHardwareMonitorEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    const-string v7, "GeofenceHardwareImpl"

    const-string v8, "Error reporting onMonitoringSystemChange."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "c":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-wrap0(Landroid/hardware/location/GeofenceHardwareImpl;)V

    goto :goto_0

    .end local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v5    # "event":Landroid/hardware/location/GeofenceHardwareMonitorEvent;
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    .local v6, "monitoringType":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .local v2, "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v7

    aget-object v3, v7, v6

    .restart local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v7

    aput-object v3, v7, v6

    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v6    # "monitoringType":I
    :pswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    .restart local v6    # "monitoringType":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v7

    aget-object v3, v7, v6

    .restart local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    .end local v6    # "monitoringType":I
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .restart local v2    # "callback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    invoke-static {}, Landroid/hardware/location/GeofenceHardwareImpl;->-get0()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "GeofenceHardwareImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Monitor callback reaped:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v7, p0, Landroid/hardware/location/GeofenceHardwareImpl$2;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v7}, Landroid/hardware/location/GeofenceHardwareImpl;->-get1(Landroid/hardware/location/GeofenceHardwareImpl;)[Ljava/util/ArrayList;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    aget-object v3, v7, v8

    .restart local v3    # "callbackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/IGeofenceHardwareMonitorCallback;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
