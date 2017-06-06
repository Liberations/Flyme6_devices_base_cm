.class public Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "AppSuggestManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/AppSuggestManagerService$1;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "org.cyanogenmod.app.suggest"

.field public static final DEBUG:Z

.field public static final NAME:Ljava/lang/String; = "appsuggest"

.field private static final TAG:Ljava/lang/String; = "AppSgstMgrService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;)Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "AppSgstMgrService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mService:Landroid/os/IBinder;

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "org.cyanogenmod.appsuggest"

    return-object v0
.end method

.method public onStart()V
    .locals 6

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AppSgstMgrService"

    const-string v2, "org.cyanogenmod.app.suggest"

    const/high16 v3, 0x3f050000    # 0.51953125f

    const/high16 v4, 0x3f060000    # 0.5234375f

    const v5, 0x3f040008

    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

    if-nez v0, :cond_0

    const-string v0, "AppSgstMgrService"

    const-string v1, "no app suggest provider found"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "cmappsuggest"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :cond_0
    const-string v0, "AppSgstMgrService"

    const-string v1, "Bound to to suggest provider"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
