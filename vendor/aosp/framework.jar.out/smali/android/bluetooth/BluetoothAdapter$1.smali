.class Landroid/bluetooth/BluetoothAdapter$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 8

    .prologue
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBluetoothServiceDown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->-get3(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothAdapter;->-set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get4()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get4()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get5()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get5()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V

    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "BluetoothAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBluetoothServiceDown: Sending callbacks to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " clients"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "BluetoothAdapter"

    const-string v6, ""

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_5
    const-string v3, "BluetoothAdapter"

    const-string v6, "onBluetoothServiceDown: cb is null!!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_4
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v4

    const-string v3, "BluetoothAdapter"

    const-string v4, "onBluetoothServiceDown: Finished sending callbacks to registered clients"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 7
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;

    .prologue
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->-set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "BluetoothAdapter"

    const-string v6, ""

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "cb$iterator":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    .restart local v1    # "cb$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_5
    const-string v3, "BluetoothAdapter"

    const-string v6, "onBluetoothServiceUp: cb is null!!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v0    # "cb":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_1
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v4

    return-void
.end method

.method public onBrEdrDown()V
    .locals 0

    .prologue
    return-void
.end method
