.class public final Lcom/android/internal/os/DockBatteryStatsImpl;
.super Lcom/android/internal/os/BatteryStatsImpl;
.source "DockBatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/DockBatteryStatsImpl$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/DockBatteryStatsImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/os/DockBatteryStatsImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/DockBatteryStatsImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/DockBatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V
    .locals 0
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "externalSync"    # Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    return-void
.end method


# virtual methods
.method protected getLogName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "DockBatteryStats"

    return-object v0
.end method

.method protected getStatsName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "dockbatterystats"

    return-object v0
.end method
