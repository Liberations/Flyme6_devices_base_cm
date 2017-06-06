.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$VisibilityInfo;,
        Landroid/transition/Visibility$DisappearListener;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mForcedEndVisibility:I

.field private mForcedStartVisibility:I

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:visibility:visibility"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android:visibility:parent"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    iput v1, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    iput v1, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x3

    iput v2, p0, Landroid/transition/Visibility;->mMode:I

    iput v4, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    iput v4, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    sget-object v2, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    :cond_0
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;I)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;
    .param p2, "forcedVisibility"    # I

    .prologue
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    move v1, p2

    .local v1, "visibility":I
    :goto_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v0, v2, [I

    .local v0, "loc":[I
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .end local v0    # "loc":[I
    .end local v1    # "visibility":I
    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .restart local v1    # "visibility":I
    goto :goto_0
.end method

.method private static getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p0, "startValues"    # Landroid/transition/TransitionValues;
    .param p1, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    invoke-direct {v0, v3}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$VisibilityInfo;)V

    .local v0, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    :goto_1
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_0
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v1, v2, :cond_5

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_4

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    :cond_3
    :goto_2
    return-object v0

    :cond_4
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_3

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_5
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_6

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_6
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_7
    if-nez p0, :cond_8

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_8

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_8
    if-nez p1, :cond_3

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_3

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    iget v0, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    invoke-direct {p0, p1, v0}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;I)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    iget v0, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    invoke-direct {p0, p1, v0}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;I)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v1, 0x0

    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v6

    .local v6, "visInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v0, :cond_1

    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_1
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public forceVisibility(IZ)V
    .locals 0
    .param p1, "visibility"    # I
    .param p2, "isStartValue"    # Z

    .prologue
    if-eqz p2, :cond_0

    iput p1, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 6
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .local v0, "changeInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v3, :cond_4

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:visibility"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "visibility":I
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget v5, p0, Landroid/transition/Visibility;->mMode:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    if-nez p4, :cond_1

    :cond_0
    return-object v7

    :cond_1
    if-nez p2, :cond_2

    const/4 v3, 0x0

    .local v3, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "endParent":Landroid/view/View;
    invoke-virtual {p0, v0, v9}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v4

    .local v4, "startParentValues":Landroid/transition/TransitionValues;
    invoke-virtual {p0, v0, v9}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    .local v1, "endParentValues":Landroid/transition/TransitionValues;
    invoke-static {v4, v1}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v3

    .local v3, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    iget-boolean v5, v3, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v5, :cond_2

    return-object v7

    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v3    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v4    # "startParentValues":Landroid/transition/TransitionValues;
    :cond_2
    iget v5, p0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    if-ne v5, v8, :cond_4

    iget v5, p0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    if-eq v5, v8, :cond_5

    const/4 v2, 0x1

    .local v2, "isForcedVisibility":Z
    :goto_0
    if-eqz v2, :cond_3

    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_3
    iget-object v5, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v5, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    return-object v5

    .end local v2    # "isForcedVisibility":Z
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "isForcedVisibility":Z
    goto :goto_0

    .end local v2    # "isForcedVisibility":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isForcedVisibility":Z
    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 27
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mMode:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x2

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    const/16 v25, 0x0

    return-object v25

    :cond_0
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v23, v0

    :goto_0
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :goto_1
    const/16 v16, 0x0

    .local v16, "overlayView":Landroid/view/View;
    const/16 v24, 0x0

    .local v24, "viewToKeep":Landroid/view/View;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_8

    :cond_1
    if-eqz v8, :cond_5

    move-object/from16 v16, v8

    .end local v16    # "overlayView":Landroid/view/View;
    .end local v24    # "viewToKeep":Landroid/view/View;
    :cond_2
    :goto_2
    move/from16 v11, p5

    .local v11, "finalVisibility":I
    move-object/from16 v10, p1

    .local v10, "finalSceneRoot":Landroid/view/ViewGroup;
    if-eqz v16, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v25, v0

    const-string v26, "android:visibility:screenLocation"

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    .local v18, "screenLoc":[I
    const/16 v25, 0x0

    aget v19, v18, v25

    .local v19, "screenX":I
    const/16 v25, 0x1

    aget v20, v18, v25

    .local v20, "screenY":I
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v14, v0, [I

    .local v14, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/16 v25, 0x0

    aget v25, v14, v25

    sub-int v25, v19, v25

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/16 v25, 0x1

    aget v25, v14, v25

    sub-int v25, v20, v25

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .local v5, "animator":Landroid/animation/Animator;
    if-nez v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :goto_3
    return-object v5

    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v11    # "finalVisibility":I
    .end local v14    # "loc":[I
    .end local v18    # "screenLoc":[I
    .end local v19    # "screenX":I
    .end local v20    # "screenY":I
    :cond_3
    const/16 v23, 0x0

    .local v23, "startView":Landroid/view/View;
    goto/16 :goto_0

    .end local v23    # "startView":Landroid/view/View;
    :cond_4
    const/4 v8, 0x0

    .local v8, "endView":Landroid/view/View;
    goto/16 :goto_1

    .end local v8    # "endView":Landroid/view/View;
    .restart local v16    # "overlayView":Landroid/view/View;
    .restart local v24    # "viewToKeep":Landroid/view/View;
    :cond_5
    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_6

    move-object/from16 v16, v23

    .local v16, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    .local v16, "overlayView":Landroid/view/View;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/view/View;

    move/from16 v25, v0

    if-eqz v25, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .local v21, "startParent":Landroid/view/View;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v22

    .local v22, "startParentValues":Landroid/transition/TransitionValues;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v7

    .local v7, "endParentValues":Landroid/transition/TransitionValues;
    move-object/from16 v0, v22

    invoke-static {v0, v7}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v17

    .local v17, "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v16

    .local v16, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    .local v16, "overlayView":Landroid/view/View;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v12

    .local v12, "id":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v16, v23

    .local v16, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    .end local v7    # "endParentValues":Landroid/transition/TransitionValues;
    .end local v12    # "id":I
    .end local v17    # "parentVisibilityInfo":Landroid/transition/Visibility$VisibilityInfo;
    .end local v21    # "startParent":Landroid/view/View;
    .end local v22    # "startParentValues":Landroid/transition/TransitionValues;
    .local v16, "overlayView":Landroid/view/View;
    :cond_8
    const/16 v25, 0x4

    move/from16 v0, p5

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    move-object/from16 v24, v8

    .local v24, "viewToKeep":Landroid/view/View;
    goto/16 :goto_2

    .local v24, "viewToKeep":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v23

    if-ne v0, v8, :cond_a

    move-object/from16 v24, v8

    .local v24, "viewToKeep":Landroid/view/View;
    goto/16 :goto_2

    .local v24, "viewToKeep":Landroid/view/View;
    :cond_a
    move-object/from16 v16, v23

    .local v16, "overlayView":Landroid/view/View;
    goto/16 :goto_2

    .end local v16    # "overlayView":Landroid/view/View;
    .end local v24    # "viewToKeep":Landroid/view/View;
    .restart local v5    # "animator":Landroid/animation/Animator;
    .restart local v10    # "finalSceneRoot":Landroid/view/ViewGroup;
    .restart local v11    # "finalVisibility":I
    .restart local v14    # "loc":[I
    .restart local v18    # "screenLoc":[I
    .restart local v19    # "screenX":I
    .restart local v20    # "screenY":I
    :cond_b
    move-object/from16 v9, v16

    .local v9, "finalOverlayView":Landroid/view/View;
    new-instance v25, Landroid/transition/Visibility$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v9}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/16 :goto_3

    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v9    # "finalOverlayView":Landroid/view/View;
    .end local v14    # "loc":[I
    .end local v18    # "screenLoc":[I
    .end local v19    # "screenX":I
    .end local v20    # "screenY":I
    :cond_c
    if-eqz v24, :cond_12

    const/4 v15, -0x1

    .local v15, "originalVisibility":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mForcedStartVisibility:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mForcedEndVisibility:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    const/4 v13, 0x1

    .local v13, "isForcedVisibility":Z
    :goto_4
    if-nez v13, :cond_d

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    .restart local v5    # "animator":Landroid/animation/Animator;
    if-eqz v5, :cond_11

    new-instance v6, Landroid/transition/Visibility$DisappearListener;

    move-object/from16 v0, v24

    invoke-direct {v6, v0, v11, v13}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .local v6, "disappearListener":Landroid/transition/Visibility$DisappearListener;
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .end local v6    # "disappearListener":Landroid/transition/Visibility$DisappearListener;
    :cond_e
    :goto_5
    return-object v5

    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v13    # "isForcedVisibility":Z
    :cond_f
    const/4 v13, 0x1

    .restart local v13    # "isForcedVisibility":Z
    goto :goto_4

    .end local v13    # "isForcedVisibility":Z
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "isForcedVisibility":Z
    goto :goto_4

    .restart local v5    # "animator":Landroid/animation/Animator;
    :cond_11
    if-nez v13, :cond_e

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->setTransitionVisibility(I)V

    goto :goto_5

    .end local v5    # "animator":Landroid/animation/Animator;
    .end local v13    # "isForcedVisibility":Z
    .end local v15    # "originalVisibility":I
    :cond_12
    const/16 v25, 0x0

    return-object v25
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    return-void
.end method
