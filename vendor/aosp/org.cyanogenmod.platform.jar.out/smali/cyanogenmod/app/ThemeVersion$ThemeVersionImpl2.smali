.class Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;
.super Ljava/lang/Object;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ThemeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeVersionImpl2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;
    }
.end annotation


# static fields
.field private static cVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/app/ThemeVersion$ComponentVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;

    invoke-direct {v0}, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->cVersions:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceComponentVersion(Lcyanogenmod/app/ThemeComponent;)Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    .locals 3
    .param p0, "component"    # Lcyanogenmod/app/ThemeComponent;

    .prologue
    sget-object v2, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->cVersions:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "compVersion$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    .local v0, "compVersion":Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    iget-object v2, v0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->component:Lcyanogenmod/app/ThemeComponent;

    invoke-virtual {v2, p0}, Lcyanogenmod/app/ThemeComponent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    invoke-direct {v2, v0}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(Lcyanogenmod/app/ThemeVersion$ComponentVersion;)V

    return-object v2

    .end local v0    # "compVersion":Lcyanogenmod/app/ThemeVersion$ComponentVersion;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getDeviceComponentVersions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/app/ThemeVersion$ComponentVersion;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/app/ThemeVersion$ComponentVersion;>;"
    sget-object v1, Lcyanogenmod/app/ThemeVersion$ThemeVersionImpl2;->cVersions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
