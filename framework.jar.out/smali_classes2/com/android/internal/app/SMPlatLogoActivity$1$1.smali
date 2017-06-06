.class Lcom/android/internal/app/SMPlatLogoActivity$1$1;
.super Ljava/lang/Object;
.source "SMPlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/SMPlatLogoActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/SMPlatLogoActivity$1;

.field final synthetic val$im:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/SMPlatLogoActivity$1;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/SMPlatLogoActivity$1;
    .param p2, "val$im"    # Landroid/widget/ImageView;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/SMPlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/SMPlatLogoActivity$1;

    iput-object p2, p0, Lcom/android/internal/app/SMPlatLogoActivity$1$1;->val$im:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/app/SMPlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/SMPlatLogoActivity$1;

    iget-object v1, v1, Lcom/android/internal/app/SMPlatLogoActivity$1;->this$0:Lcom/android/internal/app/SMPlatLogoActivity;

    iget v1, v1, Lcom/android/internal/app/SMPlatLogoActivity;->mTapCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/SMPlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/SMPlatLogoActivity$1;

    iget-object v1, v1, Lcom/android/internal/app/SMPlatLogoActivity$1;->this$0:Lcom/android/internal/app/SMPlatLogoActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/SMPlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "egg_mode"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string v1, "egg_mode"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/SMPlatLogoActivity$1$1;->val$im:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/internal/app/SMPlatLogoActivity$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/SMPlatLogoActivity$1$1$1;-><init>(Lcom/android/internal/app/SMPlatLogoActivity$1$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    return v1
.end method
