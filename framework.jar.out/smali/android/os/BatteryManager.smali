.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final ACTION_CHARGING:Ljava/lang/String; = "android.os.action.CHARGING"

.field public static final ACTION_DISCHARGING:Ljava/lang/String; = "android.os.action.DISCHARGING"

.field public static final BATTERY_DOCK_PLUGGED_AC:I = 0x1

.field public static final BATTERY_DOCK_PLUGGED_ANY:I = 0x3

.field public static final BATTERY_DOCK_PLUGGED_USB:I = 0x2

.field public static final BATTERY_HEALTH_COLD:I = 0x7

.field public static final BATTERY_HEALTH_DEAD:I = 0x4

.field public static final BATTERY_HEALTH_GOOD:I = 0x2

.field public static final BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final BATTERY_PLUGGED_AC:I = 0x1

.field public static final BATTERY_PLUGGED_ANY:I = 0x7

.field public static final BATTERY_PLUGGED_USB:I = 0x2

.field public static final BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final BATTERY_STATUS_CHARGING:I = 0x2

.field public static final BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final BATTERY_STATUS_FULL:I = 0x5

.field public static final BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final EXTRA_DOCK_HEALTH:Ljava/lang/String; = "dock_health"

.field public static final EXTRA_DOCK_ICON_SMALL:Ljava/lang/String; = "dock_icon-small"

.field public static final EXTRA_DOCK_LEVEL:Ljava/lang/String; = "dock_level"

.field public static final EXTRA_DOCK_PLUGGED:Ljava/lang/String; = "dock_plugged"

.field public static final EXTRA_DOCK_PRESENT:Ljava/lang/String; = "dock_present"

.field public static final EXTRA_DOCK_SCALE:Ljava/lang/String; = "dock_scale"

.field public static final EXTRA_DOCK_STATUS:Ljava/lang/String; = "dock_status"

.field public static final EXTRA_DOCK_TECHNOLOGY:Ljava/lang/String; = "dock_technology"

.field public static final EXTRA_DOCK_TEMPERATURE:Ljava/lang/String; = "dock_temperature"

.field public static final EXTRA_DOCK_VOLTAGE:Ljava/lang/String; = "dock_voltage"

.field public static final EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_MAX_CHARGING_CURRENT:Ljava/lang/String; = "max_charging_current"

.field public static final EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"


# instance fields
.field private final mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private final mBatteryService:Landroid/app/IBatteryService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v0, "batteryproperties"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryService:Landroid/app/IBatteryService;

    return-void
.end method

.method public constructor <init>(Landroid/app/IBatteryService;)V
    .locals 1
    .param p1, "service"    # Landroid/app/IBatteryService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v0, "batteryproperties"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    iput-object p1, p0, Landroid/os/BatteryManager;->mBatteryService:Landroid/app/IBatteryService;

    return-void
.end method

.method private queryProperty(IZ)J
    .locals 8
    .param p1, "id"    # I
    .param p2, "fromDock"    # Z

    .prologue
    iget-object v3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v3, :cond_0

    const-wide/high16 v6, -0x8000000000000000L

    return-wide v6

    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/BatteryProperty;

    invoke-direct {v2}, Landroid/os/BatteryProperty;-><init>()V

    .local v2, "prop":Landroid/os/BatteryProperty;
    if-nez p2, :cond_1

    iget-object v3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v3, p1, v2}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v0

    .local v0, "callResult":I
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v4

    .end local v0    # "callResult":I
    .end local v2    # "prop":Landroid/os/BatteryProperty;
    .local v4, "ret":J
    :goto_1
    return-wide v4

    .end local v4    # "ret":J
    .restart local v2    # "prop":Landroid/os/BatteryProperty;
    :cond_1
    iget-object v3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v3, p1, v2}, Landroid/os/IBatteryPropertiesRegistrar;->getDockProperty(ILandroid/os/BatteryProperty;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "callResult":I
    goto :goto_0

    :cond_2
    const-wide/high16 v4, -0x8000000000000000L

    .restart local v4    # "ret":J
    goto :goto_1

    .end local v0    # "callResult":I
    .end local v2    # "prop":Landroid/os/BatteryProperty;
    .end local v4    # "ret":J
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-wide/high16 v4, -0x8000000000000000L

    .restart local v4    # "ret":J
    goto :goto_1
.end method


# virtual methods
.method public getIntDockProperty(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    invoke-virtual {p0}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryManager;->queryProperty(IZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getIntProperty(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryManager;->queryProperty(IZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLongDockProperty(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    invoke-virtual {p0}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryManager;->queryProperty(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongProperty(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryManager;->queryProperty(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCharging()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->isCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public isDockBatterySupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/BatteryManager;->mBatteryService:Landroid/app/IBatteryService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/BatteryManager;->mBatteryService:Landroid/app/IBatteryService;

    invoke-interface {v2}, Landroid/app/IBatteryService;->isDockBatterySupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    return v1
.end method
