.class public Lcyanogenmod/providers/ThemesContract$MixnMatchColumns;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/ThemesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixnMatchColumns"
.end annotation


# static fields
.field public static final COL_COMPONENT_ID:Ljava/lang/String; = "component_id"

.field public static final COL_KEY:Ljava/lang/String; = "key"

.field public static final COL_PREV_VALUE:Ljava/lang/String; = "previous_value"

.field public static final COL_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final COL_VALUE:Ljava/lang/String; = "value"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_ALARM:Ljava/lang/String; = "mixnmatch_alarm"

.field public static final KEY_BOOT_ANIM:Ljava/lang/String; = "mixnmatch_boot_anim"

.field public static final KEY_FONT:Ljava/lang/String; = "mixnmatch_font"

.field public static final KEY_HOMESCREEN:Ljava/lang/String; = "mixnmatch_homescreen"

.field public static final KEY_ICONS:Ljava/lang/String; = "mixnmatch_icons"

.field public static final KEY_LIVE_LOCK_SCREEN:Ljava/lang/String; = "mixnmatch_live_lock_screen"

.field public static final KEY_LOCKSCREEN:Ljava/lang/String; = "mixnmatch_lockscreen"

.field public static final KEY_NAVIGATION_BAR:Ljava/lang/String; = "mixnmatch_navigation_bar"

.field public static final KEY_NOTIFICATIONS:Ljava/lang/String; = "mixnmatch_notifications"

.field public static final KEY_OVERLAYS:Ljava/lang/String; = "mixnmatch_overlays"

.field public static final KEY_RINGTONE:Ljava/lang/String; = "mixnmatch_ringtone"

.field public static final KEY_STATUS_BAR:Ljava/lang/String; = "mixnmatch_status_bar"

.field public static final ROWS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    sget-object v0, Lcyanogenmod/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "mixnmatch"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mixnmatch_homescreen"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_lockscreen"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_icons"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_status_bar"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_boot_anim"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_font"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_notifications"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_ringtone"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_alarm"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_overlays"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_navigation_bar"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "mixnmatch_live_lock_screen"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcyanogenmod/providers/ThemesContract$MixnMatchColumns;->ROWS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static componentToImageColName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    const-string v0, "mixnmatch_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "homescreen_uri"

    return-object v0

    :cond_0
    const-string v0, "mixnmatch_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lockscreen_uri"

    return-object v0

    :cond_1
    const-string v0, "mixnmatch_boot_anim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "bootanim_uri"

    return-object v0

    :cond_2
    const-string v0, "mixnmatch_font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "font_uri"

    return-object v0

    :cond_3
    const-string v0, "mixnmatch_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "icon_uri"

    return-object v0

    :cond_4
    const-string v0, "mixnmatch_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "status_uri"

    return-object v0

    :cond_5
    const-string v0, "mixnmatch_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notifications mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "mixnmatch_ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ringtone mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "mixnmatch_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "overlays_uri"

    return-object v0

    :cond_8
    const-string v0, "mixnmatch_alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alarm mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v0, "mixnmatch_navigation_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Navigation bar mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "mixnmatch_live_lock_screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Live lock screen mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    const-string v0, "mods_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mixnmatch_homescreen"

    return-object v0

    :cond_0
    const-string v0, "mods_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mixnmatch_icons"

    return-object v0

    :cond_1
    const-string v0, "mods_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mixnmatch_lockscreen"

    return-object v0

    :cond_2
    const-string v0, "mods_fonts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mixnmatch_font"

    return-object v0

    :cond_3
    const-string v0, "mods_bootanim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "mixnmatch_boot_anim"

    return-object v0

    :cond_4
    const-string v0, "mods_alarms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "mixnmatch_alarm"

    return-object v0

    :cond_5
    const-string v0, "mods_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "mixnmatch_notifications"

    return-object v0

    :cond_6
    const-string v0, "mods_ringtones"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "mixnmatch_ringtone"

    return-object v0

    :cond_7
    const-string v0, "mods_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "mixnmatch_overlays"

    return-object v0

    :cond_8
    const-string v0, "mods_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "mixnmatch_status_bar"

    return-object v0

    :cond_9
    const-string v0, "mods_navigation_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "mixnmatch_navigation_bar"

    return-object v0

    :cond_a
    const-string v0, "mods_live_lock_screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "mixnmatch_live_lock_screen"

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static mixNMatchKeyToComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mixnmatchKey"    # Ljava/lang/String;

    .prologue
    const-string v0, "mixnmatch_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mods_homescreen"

    return-object v0

    :cond_0
    const-string v0, "mixnmatch_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mods_icons"

    return-object v0

    :cond_1
    const-string v0, "mixnmatch_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mods_lockscreen"

    return-object v0

    :cond_2
    const-string v0, "mixnmatch_font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mods_fonts"

    return-object v0

    :cond_3
    const-string v0, "mixnmatch_boot_anim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "mods_bootanim"

    return-object v0

    :cond_4
    const-string v0, "mixnmatch_alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "mods_alarms"

    return-object v0

    :cond_5
    const-string v0, "mixnmatch_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "mods_notifications"

    return-object v0

    :cond_6
    const-string v0, "mixnmatch_ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "mods_ringtones"

    return-object v0

    :cond_7
    const-string v0, "mixnmatch_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "mods_overlays"

    return-object v0

    :cond_8
    const-string v0, "mixnmatch_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "mods_status_bar"

    return-object v0

    :cond_9
    const-string v0, "mixnmatch_navigation_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "mods_navigation_bar"

    return-object v0

    :cond_a
    const-string v0, "mixnmatch_live_lock_screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "mods_live_lock_screen"

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method
