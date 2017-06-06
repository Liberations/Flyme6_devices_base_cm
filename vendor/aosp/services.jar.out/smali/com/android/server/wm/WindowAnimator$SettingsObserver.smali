.class Lcom/android/server/wm/WindowAnimator$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowAnimator;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowAnimator;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$SettingsObserver;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_blur_enabled"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowAnimator$SettingsObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator$SettingsObserver;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator$SettingsObserver;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_blur_enabled"

    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/wm/WindowAnimator;->-set0(Lcom/android/server/wm/WindowAnimator;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unobserve(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
