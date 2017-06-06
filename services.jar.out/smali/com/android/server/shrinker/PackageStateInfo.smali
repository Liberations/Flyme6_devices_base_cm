.class public Lcom/android/server/shrinker/PackageStateInfo;
.super Ljava/lang/Object;
.source "PackageStateInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;,
        Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    }
.end annotation


# static fields
.field public static final BAP_APP_MASK:I = 0x6

.field public static final BLACK_NAME:Ljava/lang/String; = "black"

.field public static final CORE_NAME:Ljava/lang/String; = "core"

.field public static final DEFAULT_HOME:Ljava/lang/String; = "com.meizu.flyme.launcher"

.field public static final DISALLOW_MASK:I = 0xd1c

.field public static final DISALLOW_NAME:Ljava/lang/String; = "disallow"

.field public static final DOWNLOADING:Ljava/lang/String; = "downloading"

.field public static final FAVORITE_APP:I = 0x3

.field public static final FAVORITE_NAME:Ljava/lang/String; = "favorite"

.field public static final FAVORITE_PRIORITY_MASK:I = 0xe0

.field private static final FLAGS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/shrinker/PackageStateInfo$IntElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BLACK:I = 0x2

.field public static final FLAG_DISALLOW:I = 0x4

.field public static final FLAG_IGNORE:I = 0x10

.field public static final FLAG_NOTIFICATION:I = 0x8

.field public static final HOME_NAME:Ljava/lang/String; = "home"

.field public static final IGNORE_NAME:Ljava/lang/String; = "ignore"

.field public static final LOCKED_NAME:Ljava/lang/String; = "locked"

.field public static final MASK_ALL:I = -0x1

.field public static final MOVING:Ljava/lang/String; = "moving"

.field public static final NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final NONE:Ljava/lang/String; = ""

.field public static final NORMAL_NAME:Ljava/lang/String; = "normal"

.field public static final NORMAL_WHITE_APP:I = 0x5

.field private static final NOTIFICATIONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_NAME:Ljava/lang/String; = "notification"

.field public static final PLAYBACKING:Ljava/lang/String; = "playbacking"

.field public static final PRIORITY_CORE:I = 0x8

.field public static final PRIORITY_FAVORITE:I = 0x80

.field public static final PRIORITY_HOME:I = 0x800

.field public static final PRIORITY_LOCKED:I = 0x20

.field private static final PRIORITY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/shrinker/PackageStateInfo$IntElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_NORMAL:I = 0x2

.field public static final PRIORITY_RECENT:I = 0x10

.field public static final PRIORITY_SELECTED:I = 0x40

.field public static final PRIORITY_SUPER:I = 0x200

.field public static final PRIORITY_SYSTEM:I = 0x4

.field public static final PRIORITY_VISIBLE:I = 0x400

.field public static final PRIORITY_WORKING:I = 0x100

.field public static final RECENT_LOCK_APP:I = 0x2

.field public static final RECENT_NAME:Ljava/lang/String; = "recent"

.field public static final RECORDING:Ljava/lang/String; = "recording"

.field public static final SCREEN_RECORD:Ljava/lang/String; = "screen_record"

.field public static final SELECTED_NAME:Ljava/lang/String; = "selected"

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_MOVING:I = 0x10

.field public static final STATE_NAVIGATION:I = 0x4

.field public static final STATE_PLAYBACKING:I = 0x2

.field public static final STATE_RECORDING:I = 0x8

.field public static final STATE_SCREEN_RECORD:I = 0x20

.field public static final SUPER_NAME:Ljava/lang/String; = "super"

.field public static final SUPER_WHITE_APP:I = 0x4

.field public static final SYSTEM_NAME:Ljava/lang/String; = "system"

.field public static final SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "Shrinker"

.field public static final TENCENT_MM:Ljava/lang/String; = "com.tencent.mm"

.field public static final TENCENT_MOBILEQQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final TYPE_FLAGS:I = 0x1

.field public static final TYPE_PRIORITY:I = 0x0

.field public static final USER_WHITE_APP:I = 0x1

.field public static final VISIBLE_NAME:Ljava/lang/String; = "visible"

.field public static final WORKING_NAME:Ljava/lang/String; = "working"

.field private static final WORK_APP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORK_STATE_APP:I

.field private static sLastClearTime:J

.field private static sLastUpdateAlphaMeTime:J

.field private static sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;


# direct methods
.method static synthetic -wrap0(Ljava/util/List;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;

    .prologue
    invoke-static {p0}, Lcom/android/server/shrinker/PackageStateInfo;->setFavoriteList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Ljava/util/List;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;

    .prologue
    invoke-static {p0}, Lcom/android/server/shrinker/PackageStateInfo;->setLockedList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/util/List;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;

    .prologue
    invoke-static {p0}, Lcom/android/server/shrinker/PackageStateInfo;->setWorkingList(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v5, 0x80

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->WORK_APP_LIST:Ljava/util/ArrayList;

    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0x20

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, "coreAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "systemAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "superAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "blackAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "android"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.systemui"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.alphame"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.phone"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.experiencedatasync"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.amap.android.location"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.providers.media"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.providers.downloads"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.providers.contacts"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.flyme.providers.forcetouch"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.flyme.service.find"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.cloud"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.mzsyncservice"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.battery"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.safe"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.privacy"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.flyme.netadmin"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.providers.applications"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.providers.calendar"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.defcontainer"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.packageinstaller"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.flyme.telecom"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.flymecommunication"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.share"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/shrinker/Utils;->isSamSung()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.aricent.ims.service"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.sec.jniril"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.smspush"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.nxp.nfceeapi.service"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/server/shrinker/Utils;->isMTK()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.mediatek.atci.service"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "com.meizu.mstore"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.mms"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.dialer"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.account"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.alarmclock"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.flyme.update"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.meizu.net.pedometer"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.tencent.mm"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.tencent.mobileqq"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.iflytek.speechsuite"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.browser"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.UCMobile"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x200

    invoke-static {v7, v2, v4, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    const/4 v4, 0x4

    invoke-static {v7, v3, v4, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    const/16 v4, 0x8

    invoke-static {v7, v1, v4, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    const/4 v4, 0x1

    invoke-static {v4, v0, v8, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(I)V
    .locals 6
    .param p0, "type"    # I

    .prologue
    if-nez p0, :cond_1

    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    iget v5, v5, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    if-nez v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_1
    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    monitor-exit v3

    return-void
.end method

.method public static description(II)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez p0, :cond_c

    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_1

    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_2

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_3

    const-string v1, "super"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_4

    const-string v1, "working"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_5

    const-string v1, "selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_6

    const-string v1, "locked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7

    const-string v1, "favorite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_8

    const-string v1, "recent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_9

    const-string v1, "core"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_a

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_b

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_c
    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_d

    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_e

    const-string v1, "disallow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_f

    const-string v1, "ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_b

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static dump()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v6}, Lcom/android/server/shrinker/PackageStateInfo;->clear(I)V

    invoke-static {v5}, Lcom/android/server/shrinker/PackageStateInfo;->clear(I)V

    sget-object v5, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "Priority :\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    iget v4, v4, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    const/4 v6, 0x0

    invoke-static {v6, v4}, Lcom/android/server/shrinker/PackageStateInfo;->description(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v5

    sget-object v5, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_1
    sget-object v4, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "Flags :\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    iget v4, v4, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    const/4 v6, 0x1

    invoke-static {v6, v4}, Lcom/android/server/shrinker/PackageStateInfo;->description(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .end local v1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static get(ILjava/lang/String;)I
    .locals 3
    .param p0, "type"    # I
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_0

    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    if-nez v0, :cond_1

    monitor-exit v1

    return v2

    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_0
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    .restart local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :cond_1
    :try_start_1
    iget v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v2

    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static initializeIfNeeded()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    sget-wide v2, Lcom/android/server/shrinker/PackageStateInfo;->sLastClearTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v7}, Lcom/android/server/shrinker/PackageStateInfo;->clear(I)V

    invoke-static {v6}, Lcom/android/server/shrinker/PackageStateInfo;->clear(I)V

    sput-wide v0, Lcom/android/server/shrinker/PackageStateInfo;->sLastClearTime:J

    :cond_0
    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    invoke-direct {v2, v8}, Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;-><init>(Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;)V

    sput-object v2, Lcom/android/server/shrinker/PackageStateInfo;->sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    invoke-virtual {v2, v3}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string v3, "getAppListByType"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->setFavoriteList(Ljava/util/List;)V

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string v3, "getAppListByType"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->setLockedList(Ljava/util/List;)V

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string v3, "getAppListByType"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->setWorkingList(Ljava/util/List;)V

    const-string v2, "Shrinker"

    const-string v3, "PackageStateInfo inited"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-wide v2, Lcom/android/server/shrinker/PackageStateInfo;->sLastUpdateAlphaMeTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string v3, "getAppListByType"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->setNormalList(Ljava/util/List;)V

    sput-wide v0, Lcom/android/server/shrinker/PackageStateInfo;->sLastUpdateAlphaMeTime:J

    :cond_2
    return-void
.end method

.method public static isBadApp(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x6

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBadApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/shrinker/PackageStateInfo;->isBadApp(I)Z

    move-result v0

    return v0
.end method

.method public static isBlack(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCore(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDisallow(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFavorite(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFavorite(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/shrinker/PackageStateInfo;->isFavorite(I)Z

    move-result v0

    return v0
.end method

.method public static isHome(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isIgnore(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNormal(I)Z
    .locals 1
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotification(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRecent(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSuper(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isVisible(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isWorking(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static notifyPosted(Ljava/lang/String;I)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-static {v1, p0, v3, v4}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/lang/String;II)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static notifyRemoved(Ljava/lang/String;I)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v4, -0x9

    invoke-static {v1, p0, v3, v4}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static reset(II)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "mask"    # I

    .prologue
    if-nez p0, :cond_0

    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    .local v0, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    iget v3, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    and-int/2addr v3, p1

    iput v3, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .end local v1    # "element$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_0
    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    .restart local v1    # "element$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v2

    return-void
.end method

.method public static set(ILjava/lang/String;II)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "mask"    # I

    .prologue
    if-nez p0, :cond_1

    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    .local v0, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    invoke-direct {v0}, Lcom/android/server/shrinker/PackageStateInfo$IntElement;-><init>()V

    .restart local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    or-int/2addr v2, p2

    iput v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    iget v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    and-int/2addr v2, p3

    iput v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/shrinker/Shrinker;->statusChanded()V

    return-void

    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_1
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static set(ILjava/util/List;II)V
    .locals 7
    .param p0, "type"    # I
    .param p2, "val"    # I
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p0, :cond_4

    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v3

    const/4 v1, 0x0

    .local v1, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .local v5, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "pkg":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    move-object v1, v0

    .local v1, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    if-nez v1, :cond_3

    new-instance v2, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    invoke-direct {v2}, Lcom/android/server/shrinker/PackageStateInfo$IntElement;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .local v2, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :try_start_1
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .restart local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :cond_3
    :try_start_2
    iget v6, v1, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    or-int/2addr v6, p2

    iput v6, v1, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    iget v6, v1, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    and-int/2addr v6, p3

    iput v6, v1, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v3

    throw v6

    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_4
    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    .restart local v5    # "pkg$iterator":Ljava/util/Iterator;
    :cond_5
    monitor-exit v3

    return-void

    .restart local v2    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .restart local v4    # "pkg":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .restart local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    goto :goto_2
.end method

.method private static setDisallowList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v0, -0x5

    invoke-static {v2, v0}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    return-void
.end method

.method private static setFavoriteList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/16 v3, -0x81

    invoke-static {v5, v3}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    const/16 v3, 0x80

    const/4 v4, -0x1

    invoke-static {v5, p0, v3, v4}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "preload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x6

    if-nez v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/android/server/am/Ams_Interface;->loadFavoriteApps(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static setIgnoreList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x10

    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    const/4 v0, -0x1

    invoke-static {v1, p0, v2, v0}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    return-void
.end method

.method public static setIntercept(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "disallowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {v4}, Lcom/android/server/shrinker/PackageStateInfo;->setSelectedList(Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/server/shrinker/PackageStateInfo;->setDisallowList(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static setLockedList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/am/Ams_Utils;->hasAppCloneFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .local v0, "index":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "str$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "str":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    move-object p0, v1

    .end local v0    # "index":I
    .end local v1    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "str$iterator":Ljava/util/Iterator;
    :cond_2
    const/16 v4, -0x21

    invoke-static {v5, v4}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    const/16 v4, 0x20

    invoke-static {v5, p0, v4, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    return-void
.end method

.method private static setNormalList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v0, -0x3

    invoke-static {v2, v0}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    return-void
.end method

.method private static setSelectedList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v0, -0x41

    invoke-static {v2, v0}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    const/16 v0, 0x40

    const/4 v1, -0x1

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    return-void
.end method

.method private static setWorkingList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/shrinker/PackageStateInfo;->WORK_APP_LIST:Ljava/util/ArrayList;

    const/16 v1, -0x101

    invoke-static {v2, v0, v2, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    const/16 v0, 0x100

    const/4 v1, -0x1

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    sget-object v0, Lcom/android/server/shrinker/PackageStateInfo;->WORK_APP_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/shrinker/PackageStateInfo;->WORK_APP_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static workingState(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    const-string v1, "downloading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_2

    const-string v1, "moving"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    const-string v1, "playbacking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_5

    const-string v1, "recording"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    const-string v1, "screen_record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
