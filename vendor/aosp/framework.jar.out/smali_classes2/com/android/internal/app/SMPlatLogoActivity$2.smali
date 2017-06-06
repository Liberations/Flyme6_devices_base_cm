.class Lcom/android/internal/app/SMPlatLogoActivity$2;
.super Ljava/lang/Object;
.source "SMPlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/SMPlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/SMPlatLogoActivity;

.field final synthetic val$im:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/SMPlatLogoActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/SMPlatLogoActivity;
    .param p2, "val$im"    # Landroid/widget/ImageView;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/SMPlatLogoActivity$2;->this$0:Lcom/android/internal/app/SMPlatLogoActivity;

    iput-object p2, p0, Lcom/android/internal/app/SMPlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/SMPlatLogoActivity$2;->this$0:Lcom/android/internal/app/SMPlatLogoActivity;

    iget v1, v0, Lcom/android/internal/app/SMPlatLogoActivity;->mKeyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/SMPlatLogoActivity;->mKeyCount:I

    iget-object v0, p0, Lcom/android/internal/app/SMPlatLogoActivity$2;->this$0:Lcom/android/internal/app/SMPlatLogoActivity;

    iget v0, v0, Lcom/android/internal/app/SMPlatLogoActivity;->mKeyCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/SMPlatLogoActivity$2;->this$0:Lcom/android/internal/app/SMPlatLogoActivity;

    iget v0, v0, Lcom/android/internal/app/SMPlatLogoActivity;->mTapCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/SMPlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performLongClick()Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/SMPlatLogoActivity$2;->val$im:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_2
    return v1
.end method
