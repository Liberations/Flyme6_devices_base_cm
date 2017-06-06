.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;,
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$1;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

.field public static final ACTION_BLE_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

.field public static final ACTION_BLE_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_BLE_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_BLE_SCAN_ALWAYS_AVAILABLE"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static final ACTIVITY_ENERGY_INFO_CACHED:I = 0x0

.field public static final ACTIVITY_ENERGY_INFO_REFRESHED:I = 0x1

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final CONTROLLER_ENERGY_UPDATE_TIMEOUT_MILLIS:I = 0x1e

.field private static final DBG:Z = false

.field public static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final SOCKET_CHANNEL_AUTO_STATIC_NO_SDP:I = -0x2

.field public static final STATE_BLE_ON:I = 0xf

.field public static final STATE_BLE_TURNING_OFF:I = 0x10

.field public static final STATE_BLE_TURNING_ON:I = 0xe

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static final VDBG:Z

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private static sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# instance fields
.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/le/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private final mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/bluetooth/IBluetooth;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic -get4()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object v0
.end method

.method static synthetic -get5()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 3
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bluetooth manager service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    rem-int/lit8 v2, v1, 0x3

    packed-switch v2, :pswitch_data_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_3
    const/16 v2, 0x41

    if-lt v0, v2, :cond_4

    const/16 v2, 0x46

    if-le v0, v2, :cond_2

    :cond_4
    return v3

    :pswitch_1
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    return v3

    .end local v0    # "c":C
    :cond_5
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, p3, p4, v2}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .local v0, "errno":I
    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 5

    .prologue
    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .local v1, "managerService":Landroid/bluetooth/IBluetoothManager;
    new-instance v2, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .end local v1    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_0
    :goto_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_1
    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v4, "Bluetooth binder is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .local v0, "errno":I
    if-gez v0, :cond_0

    :cond_0
    return-object v1
.end method

.method private notifyUserAction(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    const-string v1, "BluetoothAdapter"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    .locals 2
    .param p1, "devices"    # [Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    :goto_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .locals 1
    .param p1, "on"    # Z
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .prologue
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    return v0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 14
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    if-nez p2, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v6, p2

    check-cast v6, Landroid/bluetooth/BluetoothHeadset;

    .local v6, "headset":Landroid/bluetooth/BluetoothHeadset;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadset;->close()V

    goto :goto_0

    .end local v6    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :pswitch_2
    move-object/from16 v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    goto :goto_0

    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :pswitch_3
    move-object/from16 v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dpSink;

    .local v1, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    goto :goto_0

    .end local v1    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :pswitch_4
    move-object/from16 v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothAvrcpController;

    .local v2, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    goto :goto_0

    .end local v2    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :pswitch_5
    move-object/from16 v10, p2

    check-cast v10, Landroid/bluetooth/BluetoothInputDevice;

    .local v10, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothInputDevice;->close()V

    goto :goto_0

    .end local v10    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :pswitch_6
    move-object/from16 v12, p2

    check-cast v12, Landroid/bluetooth/BluetoothPan;

    .local v12, "pan":Landroid/bluetooth/BluetoothPan;
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothPan;->close()V

    goto :goto_0

    .end local v12    # "pan":Landroid/bluetooth/BluetoothPan;
    :pswitch_7
    move-object/from16 v3, p2

    check-cast v3, Landroid/bluetooth/BluetoothDun;

    .local v3, "dun":Landroid/bluetooth/BluetoothDun;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDun;->close()V

    goto :goto_0

    .end local v3    # "dun":Landroid/bluetooth/BluetoothDun;
    :pswitch_8
    move-object/from16 v8, p2

    check-cast v8, Landroid/bluetooth/BluetoothHealth;

    .local v8, "health":Landroid/bluetooth/BluetoothHealth;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHealth;->close()V

    goto :goto_0

    .end local v8    # "health":Landroid/bluetooth/BluetoothHealth;
    :pswitch_9
    move-object/from16 v4, p2

    check-cast v4, Landroid/bluetooth/BluetoothGatt;

    .local v4, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .end local v4    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :pswitch_a
    move-object/from16 v5, p2

    check-cast v5, Landroid/bluetooth/BluetoothGattServer;

    .local v5, "gattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattServer;->close()V

    goto :goto_0

    .end local v5    # "gattServer":Landroid/bluetooth/BluetoothGattServer;
    :pswitch_b
    move-object/from16 v11, p2

    check-cast v11, Landroid/bluetooth/BluetoothMap;

    .local v11, "map":Landroid/bluetooth/BluetoothMap;
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothMap;->close()V

    goto :goto_0

    .end local v11    # "map":Landroid/bluetooth/BluetoothMap;
    :pswitch_c
    move-object/from16 v7, p2

    check-cast v7, Landroid/bluetooth/BluetoothHeadsetClient;

    .local v7, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothHeadsetClient;->close()V

    goto :goto_0

    .end local v7    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :pswitch_d
    move-object/from16 v13, p2

    check-cast v13, Landroid/bluetooth/BluetoothSap;

    .local v13, "sap":Landroid/bluetooth/BluetoothSap;
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothSap;->close()V

    goto :goto_0

    .end local v13    # "sap":Landroid/bluetooth/BluetoothSap;
    :pswitch_e
    move-object/from16 v9, p2

    check-cast v9, Landroid/bluetooth/BluetoothHidDevice;

    .local v9, "hidd":Landroid/bluetooth/BluetoothHidDevice;
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothHidDevice;->close()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public configHciSnoopLog(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    :goto_0
    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createMapMnsSdpRecord(Ljava/lang/String;IIII)I
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "rfcommChannel"    # I
    .param p3, "l2capPsm"    # I
    .param p4, "version"    # I
    .param p5, "features"    # I

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->createMapMnsSdpRecord(Ljava/lang/String;IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothAdapter"

    const-string v1, "createMapMnsSdpRecord: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public createPbapPceSdpRecord(Ljava/lang/String;I)I
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetooth;->createPbapPceSdpRecord(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "createPbapPceSdpRecord: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    return v1
.end method

.method public disable()Z
    .locals 3

    .prologue
    const/16 v1, 0x39

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public disable(Z)Z
    .locals 3
    .param p1, "persist"    # Z

    .prologue
    const/16 v1, 0x39

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public disableBLE()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v2

    .local v2, "state":I
    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v7

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    const/4 v0, 0x0

    .local v0, "bleAppCnt":I
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;Z)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    invoke-direct {p0, v6}, Landroid/bluetooth/BluetoothAdapter;->notifyUserAction(Z)V

    :cond_2
    return v7

    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "bleAppCnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    return v6
.end method

.method public enable()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x38

    invoke-static {v2}, Landroid/util/SeempLog;->record(I)I

    const/16 v1, 0xa

    .local v1, "state":I
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_0
    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    const-string v2, "BluetoothAdapter"

    const-string v3, "BT is in BLE_ON State"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Landroid/bluetooth/BluetoothAdapter;->notifyUserAction(Z)V

    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->enable(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public enableBLE()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;Z)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->enable(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    return v1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public enableNoAutoConnect()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public factoryReset()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->factoryReset()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isPeripheralModeSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v0, :cond_2

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object v0

    :cond_3
    const-string v0, "BluetoothAdapter"

    const-string v1, "Bluetooth LE advertising not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_1

    new-instance v0, Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 3
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    const-string v0, "BluetoothAdapter"

    const-string v2, "getBluetoothService() called with no BluetoothManagerCallback"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v1, 0x3d

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    new-array v1, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    :cond_1
    monitor-exit v2

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method public getConnectionState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    :goto_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "getConnectionState:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 7
    .param p1, "updateType"    # I

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    return-object v6

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isActivityAndEnergyReportingSupported()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v6

    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getActivityEnergyInfoFromController()V

    const-wide/16 v4, 0x1e

    invoke-virtual {p0, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->wait(J)V

    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v2

    .local v2, "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    :try_start_2
    monitor-exit p0

    return-object v2

    :cond_3
    monitor-exit p0

    return-object v6

    .end local v2    # "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfoCallback wait interrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-object v6

    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfoCallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    :goto_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getLeAccess()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLeState()I
    .locals 4

    .prologue
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "state":I
    :try_start_2
    monitor-exit v3

    return v1

    .end local v1    # "state":I
    :cond_0
    monitor-exit v3

    :goto_0
    const/16 v2, 0xa

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x40

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    :goto_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "getProfileConnectionState:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v13, 0x0

    return v13

    :cond_1
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_2

    new-instance v5, Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p2

    invoke-direct {v5, p1, v0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v5, "headset":Landroid/bluetooth/BluetoothHeadset;
    const/4 v13, 0x1

    return v13

    .end local v5    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :cond_2
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    new-instance v1, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p2

    invoke-direct {v1, p1, v0}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v1, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    const/4 v13, 0x1

    return v13

    .end local v1    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :cond_3
    const/16 v13, 0xb

    move/from16 v0, p3

    if-ne v0, v13, :cond_4

    new-instance v2, Landroid/bluetooth/BluetoothA2dpSink;

    move-object/from16 v0, p2

    invoke-direct {v2, p1, v0}, Landroid/bluetooth/BluetoothA2dpSink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v2, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    const/4 v13, 0x1

    return v13

    .end local v2    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :cond_4
    const/16 v13, 0xc

    move/from16 v0, p3

    if-ne v0, v13, :cond_5

    new-instance v3, Landroid/bluetooth/BluetoothAvrcpController;

    move-object/from16 v0, p2

    invoke-direct {v3, p1, v0}, Landroid/bluetooth/BluetoothAvrcpController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v3, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    const/4 v13, 0x1

    return v13

    .end local v3    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :cond_5
    const/4 v13, 0x4

    move/from16 v0, p3

    if-ne v0, v13, :cond_6

    new-instance v9, Landroid/bluetooth/BluetoothInputDevice;

    move-object/from16 v0, p2

    invoke-direct {v9, p1, v0}, Landroid/bluetooth/BluetoothInputDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v9, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    const/4 v13, 0x1

    return v13

    .end local v9    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :cond_6
    const/4 v13, 0x5

    move/from16 v0, p3

    if-ne v0, v13, :cond_7

    new-instance v11, Landroid/bluetooth/BluetoothPan;

    move-object/from16 v0, p2

    invoke-direct {v11, p1, v0}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v11, "pan":Landroid/bluetooth/BluetoothPan;
    const/4 v13, 0x1

    return v13

    .end local v11    # "pan":Landroid/bluetooth/BluetoothPan;
    :cond_7
    const/16 v13, 0x15

    move/from16 v0, p3

    if-ne v0, v13, :cond_8

    new-instance v4, Landroid/bluetooth/BluetoothDun;

    move-object/from16 v0, p2

    invoke-direct {v4, p1, v0}, Landroid/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v4, "dun":Landroid/bluetooth/BluetoothDun;
    const/4 v13, 0x1

    return v13

    .end local v4    # "dun":Landroid/bluetooth/BluetoothDun;
    :cond_8
    const/4 v13, 0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_9

    new-instance v7, Landroid/bluetooth/BluetoothHealth;

    move-object/from16 v0, p2

    invoke-direct {v7, p1, v0}, Landroid/bluetooth/BluetoothHealth;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v7, "health":Landroid/bluetooth/BluetoothHealth;
    const/4 v13, 0x1

    return v13

    .end local v7    # "health":Landroid/bluetooth/BluetoothHealth;
    :cond_9
    const/16 v13, 0x9

    move/from16 v0, p3

    if-ne v0, v13, :cond_a

    new-instance v10, Landroid/bluetooth/BluetoothMap;

    move-object/from16 v0, p2

    invoke-direct {v10, p1, v0}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v10, "map":Landroid/bluetooth/BluetoothMap;
    const/4 v13, 0x1

    return v13

    .end local v10    # "map":Landroid/bluetooth/BluetoothMap;
    :cond_a
    const/16 v13, 0x10

    move/from16 v0, p3

    if-ne v0, v13, :cond_b

    new-instance v6, Landroid/bluetooth/BluetoothHeadsetClient;

    move-object/from16 v0, p2

    invoke-direct {v6, p1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v6, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    const/4 v13, 0x1

    return v13

    .end local v6    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :cond_b
    const/16 v13, 0xa

    move/from16 v0, p3

    if-ne v0, v13, :cond_c

    new-instance v12, Landroid/bluetooth/BluetoothSap;

    move-object/from16 v0, p2

    invoke-direct {v12, p1, v0}, Landroid/bluetooth/BluetoothSap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v12, "sap":Landroid/bluetooth/BluetoothSap;
    const/4 v13, 0x1

    return v13

    .end local v12    # "sap":Landroid/bluetooth/BluetoothSap;
    :cond_c
    const/16 v13, 0x11

    move/from16 v0, p3

    if-ne v0, v13, :cond_d

    new-instance v8, Landroid/bluetooth/BluetoothHidDevice;

    move-object/from16 v0, p2

    invoke-direct {v8, p1, v0}, Landroid/bluetooth/BluetoothHidDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .local v8, "hidd":Landroid/bluetooth/BluetoothHidDevice;
    const/4 v13, 0x1

    return v13

    .end local v8    # "hidd":Landroid/bluetooth/BluetoothHidDevice;
    :cond_d
    const/4 v13, 0x0

    return v13
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x3e

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 10
    .param p1, "address"    # [B

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x3e

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth address must have 6 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    aget-byte v4, p1, v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    aget-byte v4, p1, v7

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v7

    aget-byte v4, p1, v8

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v8

    aget-byte v4, p1, v9

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScanMode()I
    .locals 4

    .prologue
    const/16 v3, 0x14

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getScanMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    :goto_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState()I
    .locals 4

    .prologue
    const/16 v2, 0x3f

    invoke-static {v2}, Landroid/util/SeempLog;->record(I)I

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "state":I
    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_0
    const/16 v1, 0xa

    :cond_1
    :try_start_2
    monitor-exit v3

    return v1

    :cond_2
    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    goto :goto_0

    .end local v1    # "state":I
    :cond_3
    monitor-exit v3

    :goto_1
    const/16 v2, 0xa

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    :cond_1
    monitor-exit v2

    :goto_0
    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->isBleScanAlwaysAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "remote expection when calling isBleScanAlwaysAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isDiscovering()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    :goto_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    :goto_0
    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isHardwareTrackingFiltersAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->numHwTrackFiltersAvailable()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isLeEnabled()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return v1
.end method

.method public isMultipleAdvertisementSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isMultiAdvertisementSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get isMultipleAdvertisementSupported, error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public isOffloadedFilteringSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isOffloadedFilteringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get isOffloadedFilteringSupported, error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public isOffloadedScanBatchingSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isOffloadedScanBatchingSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get isOffloadedScanBatchingSupported, error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public isPeripheralModeSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isPeripheralModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get peripheral mode capability: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v1, v3, v2, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .local v0, "errno":I
    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-gez v0, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-object v1
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingInsecureL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x3

    move v3, v2

    move v4, p1

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v7

    .local v7, "errno":I
    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-eqz v7, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .local v0, "errno":I
    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-object v1
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x3b

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    invoke-direct {p0, p1, p2, v1, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .param p1, "port"    # I
    .param p2, "mitm"    # Z
    .param p3, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x3

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v7

    .local v7, "errno":I
    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-eqz v7, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .param p1, "channel"    # I
    .param p2, "mitm"    # Z
    .param p3, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    .local v0, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v7

    .local v7, "errno":I
    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-eqz v7, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    return-object v2
.end method

.method public removeSdpRecord(I)Z
    .locals 3
    .param p1, "recordHandle"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->removeSdpRecord(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "removeSdpRecord: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDiscoverableTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    :goto_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getDiscoverableTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method public setScanMode(II)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    :goto_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x3a

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    :goto_0
    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    return v0
.end method

.method public startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 13
    .param p1, "serviceUuids"    # [Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    if-nez p2, :cond_0

    return v11

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v5

    .local v5, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v5, :cond_1

    return v11

    :cond_1
    iget-object v8, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    monitor-exit v8

    return v11

    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v7}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_3

    monitor-exit v8

    return v11

    :cond_3
    :try_start_2
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$2;

    invoke-direct {v4, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$2;-><init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .local v4, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    new-instance v7, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v7}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v6

    .local v6, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    if-eqz p1, :cond_4

    array-length v7, p1

    if-lez v7, :cond_4

    new-instance v7, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v7}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v9, Landroid/os/ParcelUuid;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-direct {v9, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v7, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    .local v1, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_4
    invoke-virtual {v5, v2, v6, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    iget-object v7, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v7, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    return v12

    .end local v2    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    .end local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "BluetoothAdapter"

    const-string v9, ""

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v8

    return v11

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    .local v1, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    if-nez v0, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    .end local v0    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
