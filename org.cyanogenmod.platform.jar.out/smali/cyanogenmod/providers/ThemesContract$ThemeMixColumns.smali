.class public Lcyanogenmod/providers/ThemesContract$ThemeMixColumns;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/ThemesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeMixColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PREVIEWS_URI:Landroid/net/Uri;

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Lcyanogenmod/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "theme_mixes"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/ThemesContract$ThemeMixColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcyanogenmod/providers/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "theme_mix_previews"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/ThemesContract$ThemeMixColumns;->PREVIEWS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
