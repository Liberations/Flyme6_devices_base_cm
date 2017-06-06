.class Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;
.super Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
.source "PackageStateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/shrinker/PackageStateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaMeActionReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const-string v0, "APP_LIST_CHANGED"

    invoke-direct {p0, v0}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    move-object v0, p2

    check-cast v0, Lcom/meizu/common/alphame/Args;

    .local v0, "args":Lcom/meizu/common/alphame/Args;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meizu/common/alphame/Args;->getObjects()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "type":I
    invoke-virtual {v0}, Lcom/meizu/common/alphame/Args;->getObjects()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v1, v3, v4

    check-cast v1, Ljava/util/ArrayList;

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch v2, :pswitch_data_0

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "type":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "type":I
    :pswitch_1
    invoke-static {v1}, Lcom/android/server/shrinker/PackageStateInfo;->-wrap2(Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Lcom/android/server/shrinker/PackageStateInfo;->-wrap1(Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v1}, Lcom/android/server/shrinker/PackageStateInfo;->-wrap0(Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
