.class Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/AutoScrollHelper;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->-get0(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->-get2(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->-set2(Landroid/support/v4/widget/AutoScrollHelper;Z)Z

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->-get3(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->start()V

    :cond_1
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->-get3(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v2

    .local v2, "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->-wrap0(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->-get1(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->-set1(Landroid/support/v4/widget/AutoScrollHelper;Z)Z

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->-wrap3(Landroid/support/v4/widget/AutoScrollHelper;)V

    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v0

    .local v0, "deltaX":I
    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v1

    .local v1, "deltaY":I
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->scrollTargetBy(II)V

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3}, Landroid/support/v4/widget/AutoScrollHelper;->-get4(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :cond_3
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->-set0(Landroid/support/v4/widget/AutoScrollHelper;Z)Z

    return-void
.end method
