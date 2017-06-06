.class public Lcom/android/internal/app/SMPlatLogoActivity;
.super Landroid/app/Activity;
.source "SMPlatLogoActivity.java"


# static fields
.field static final FLAVORS:[I


# instance fields
.field mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsSM:Z

.field mKeyCount:I

.field mLayout:Landroid/widget/FrameLayout;

.field mTapCount:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/SMPlatLogoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/SMPlatLogoActivity;->mIsSM:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/SMPlatLogoActivity;->FLAVORS:[I

    return-void

    :array_0
    .array-data 4
        -0x63d850
        -0x459738
        -0x6800
        -0x48b3
        -0xf9d6e
        -0x74430
        -0x504bd5
        -0x3223c7
        -0x14c5
        -0xe8a
        -0x86aab8
        -0x5e7781
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/app/SMPlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static newColorIndex()I
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget-object v2, Lcom/android/internal/app/SMPlatLogoActivity;->FLAVORS:[I

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method makeRipple()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    invoke-static {}, Lcom/android/internal/app/SMPlatLogoActivity;->newColorIndex()I

    move-result v0

    .local v0, "idx":I
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .local v1, "popbg":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    sget-object v4, Lcom/android/internal/app/SMPlatLogoActivity;->FLAVORS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    sget-object v3, Lcom/android/internal/app/SMPlatLogoActivity;->FLAVORS:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    return-object v2
.end method

.method public onAttachedToWindow()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const v11, 0x3f19999a    # 0.6f

    const v10, 0x3e99999a    # 0.3f

    const v9, 0x3e19999a    # 0.15f

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/SMPlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .local v1, "dp":F
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x44160000    # 600.0f

    mul-float/2addr v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .local v5, "size":I
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v3, "im":Landroid/widget/ImageView;
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTranslationZ(F)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-boolean v6, p0, Lcom/android/internal/app/SMPlatLogoActivity;->mIsSM:Z

    if-eqz v6, :cond_0

    const v6, 0x1080609

    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/internal/app/SMPlatLogoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "platlogo":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/app/SMPlatLogoActivity;->makeRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .local v2, "highlight":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    const v7, 0x10ffffff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v5

    mul-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v7, v5

    mul-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v8, v5

    mul-float/2addr v8, v11

    float-to-int v8, v8

    int-to-float v9, v5

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/android/internal/app/SMPlatLogoActivity$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/internal/app/SMPlatLogoActivity$1;-><init>(Lcom/android/internal/app/SMPlatLogoActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    new-instance v6, Lcom/android/internal/app/SMPlatLogoActivity$2;

    invoke-direct {v6, p0, v3}, Lcom/android/internal/app/SMPlatLogoActivity$2;-><init>(Lcom/android/internal/app/SMPlatLogoActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v6, p0, Lcom/android/internal/app/SMPlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x11

    invoke-direct {v7, v5, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/SMPlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x320

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .end local v2    # "highlight":Landroid/graphics/drawable/ShapeDrawable;
    .end local v4    # "platlogo":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v6, 0x1080546

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/SMPlatLogoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_sm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/SMPlatLogoActivity;->mIsSM:Z

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/SMPlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/app/SMPlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SMPlatLogoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
