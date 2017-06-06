.class Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;
.super Landroid/os/Handler;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserverHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "limit"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "period"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .local v6, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .local v0, "globalObserver":Landroid/database/ContentObserver;
    const-string v1, "sms_short_code_confirmation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1, v7, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "sms_outgoing_check_max_count"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1, v7, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "sms_outgoing_check_interval_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1, v7, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
