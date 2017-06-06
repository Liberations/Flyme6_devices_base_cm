.class public abstract Lorg/cyanogenmod/platform/internal/CMSystemService;
.super Lcom/android/server/SystemService;
.source "CMSystemService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract getFeatureDeclaration()Ljava/lang/String;
.end method

.method public isCoreService()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
