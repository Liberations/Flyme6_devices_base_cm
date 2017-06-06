.class public Lcyanogenmod/externalviews/ExternalView;
.super Landroid/view/View;
.source "ExternalView.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/ExternalView$1;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

.field protected volatile mExternalViewProvider:Lcyanogenmod/externalviews/IExternalViewProvider;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -wrap0(Lcyanogenmod/externalviews/ExternalView;)V
    .locals 0

    invoke-direct {p0}, Lcyanogenmod/externalviews/ExternalView;->executeQueue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcyanogenmod/externalviews/ExternalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcyanogenmod/externalviews/ExternalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcyanogenmod/externalviews/ExternalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mQueue:Ljava/util/LinkedList;

    new-instance v1, Lcyanogenmod/externalviews/ExternalView$1;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/ExternalView$1;-><init>(Lcyanogenmod/externalviews/ExternalView;)V

    iput-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0}, Lcyanogenmod/externalviews/ExternalView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mContext:Landroid/content/Context;

    new-instance v1, Lcyanogenmod/externalviews/ExternalViewProperties;

    iget-object v2, p0, Lcyanogenmod/externalviews/ExternalView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcyanogenmod/externalviews/ExternalViewProperties;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .local v0, "app":Landroid/app/Application;
    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/ExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void

    .end local v0    # "app":Landroid/app/Application;
    :cond_1
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    .restart local v0    # "app":Landroid/app/Application;
    goto :goto_0
.end method

.method private executeQueue()V
    .locals 2

    .prologue
    :goto_0
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IExternalViewProvider;

    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/ExternalView$5;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/ExternalView$5;-><init>(Lcyanogenmod/externalviews/ExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/ExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/ExternalView$4;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/ExternalView$4;-><init>(Lcyanogenmod/externalviews/ExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/ExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/ExternalView$3;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/ExternalView$3;-><init>(Lcyanogenmod/externalviews/ExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/ExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/ExternalView$6;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/ExternalView$6;-><init>(Lcyanogenmod/externalviews/ExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/ExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/ExternalView$8;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/ExternalView$8;-><init>(Lcyanogenmod/externalviews/ExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/ExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/ExternalView$7;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/ExternalView$7;-><init>(Lcyanogenmod/externalviews/ExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/ExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, "cur":J
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->hasChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return v10

    :cond_0
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->getX()I

    move-result v2

    .local v2, "x":I
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->getY()I

    move-result v3

    .local v3, "y":I
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->getWidth()I

    move-result v4

    .local v4, "width":I
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->getHeight()I

    move-result v5

    .local v5, "height":I
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->isVisible()Z

    move-result v6

    .local v6, "visible":Z
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->getHitRect()Landroid/graphics/Rect;

    move-result-object v7

    .local v7, "clipRect":Landroid/graphics/Rect;
    new-instance v0, Lcyanogenmod/externalviews/ExternalView$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcyanogenmod/externalviews/ExternalView$2;-><init>(Lcyanogenmod/externalviews/ExternalView;IIIIZLandroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/ExternalView;->performAction(Ljava/lang/Runnable;)V

    return v10
.end method

.method protected performAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IExternalViewProvider;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setProviderComponent(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IExternalViewProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcyanogenmod/externalviews/ExternalView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/externalviews/ExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    return-void
.end method
