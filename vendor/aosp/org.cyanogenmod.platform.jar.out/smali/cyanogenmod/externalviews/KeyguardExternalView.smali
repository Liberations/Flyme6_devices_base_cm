.class public Lcyanogenmod/externalviews/KeyguardExternalView;
.super Landroid/view/View;
.source "KeyguardExternalView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;,
        Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;,
        Lcyanogenmod/externalviews/KeyguardExternalView$1;,
        Lcyanogenmod/externalviews/KeyguardExternalView$2;
    }
.end annotation


# static fields
.field public static final CATEGORY_KEYGUARD_GRANT_PERMISSION:Ljava/lang/String; = "org.cyanogenmod.intent.category.KEYGUARD_GRANT_PERMISSION"

.field public static final EXTRA_PERMISSION_LIST:Ljava/lang/String; = "permissions_list"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

.field private mContext:Landroid/content/Context;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

.field private volatile mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

.field private mIsInteractive:Z

.field private final mKeyguardExternalViewCallbacks:Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

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

.field private mService:Landroid/os/IBinder;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mWindowAttachmentListener:Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcyanogenmod/externalviews/KeyguardExternalView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mCallback:Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    return-object v0
.end method

.method static synthetic -get2(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    return-object v0
.end method

.method static synthetic -get4(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mKeyguardExternalViewCallbacks:Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    return-object v0
.end method

.method static synthetic -get5(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get6(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get7(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mWindowAttachmentListener:Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    return-object v0
.end method

.method static synthetic -set0(Lcyanogenmod/externalviews/KeyguardExternalView;Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    return-object p1
.end method

.method static synthetic -set1(Lcyanogenmod/externalviews/KeyguardExternalView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mIsInteractive:Z

    return p1
.end method

.method static synthetic -set2(Lcyanogenmod/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcyanogenmod/externalviews/KeyguardExternalView;)V
    .locals 0

    invoke-direct {p0}, Lcyanogenmod/externalviews/KeyguardExternalView;->executeQueue()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/externalviews/KeyguardExternalView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcyanogenmod/externalviews/KeyguardExternalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcyanogenmod/externalviews/KeyguardExternalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iput-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mQueue:Ljava/util/LinkedList;

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalView$1;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalView$1;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V

    iput-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcyanogenmod/externalviews/KeyguardExternalView$2;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/KeyguardExternalView$2;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V

    iput-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mKeyguardExternalViewCallbacks:Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    invoke-virtual {p0}, Lcyanogenmod/externalviews/KeyguardExternalView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    new-instance v1, Lcyanogenmod/externalviews/ExternalViewProperties;

    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcyanogenmod/externalviews/ExternalViewProperties;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mDisplaySize:Landroid/graphics/Point;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private executeQueue()V
    .locals 2

    .prologue
    :goto_0
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mQueue:Ljava/util/LinkedList;

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
.method public binderDied()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mCallback:Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mCallback:Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    invoke-interface {v0}, Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->providerDied()V

    :cond_0
    return-void
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mIsInteractive:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalView$5;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/KeyguardExternalView$5;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalView$8;

    invoke-direct {v0, p0, p1}, Lcyanogenmod/externalviews/KeyguardExternalView$8;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;Z)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalView$4;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/KeyguardExternalView$4;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyguardDismissed()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalView$7;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/KeyguardExternalView$7;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalView$6;

    invoke-direct {v0, p0, p1}, Lcyanogenmod/externalviews/KeyguardExternalView$6;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;Z)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLockscreenSlideOffsetChanged(F)V
    .locals 1
    .param p1, "swipeProgress"    # F

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalView$11;

    invoke-direct {v0, p0, p1}, Lcyanogenmod/externalviews/KeyguardExternalView$11;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;F)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->hasChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return v8

    :cond_0
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->getX()I

    move-result v2

    .local v2, "x":I
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->getY()I

    move-result v3

    .local v3, "y":I
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v4, v0, v2

    .local v4, "width":I
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v5, v0, v3

    .local v5, "height":I
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProperties:Lcyanogenmod/externalviews/ExternalViewProperties;

    invoke-virtual {v0}, Lcyanogenmod/externalviews/ExternalViewProperties;->isVisible()Z

    move-result v6

    .local v6, "visible":Z
    new-instance v7, Landroid/graphics/Rect;

    add-int v0, v4, v2

    add-int v1, v5, v3

    invoke-direct {v7, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v7, "clipRect":Landroid/graphics/Rect;
    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalView$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcyanogenmod/externalviews/KeyguardExternalView$3;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;IIIIZLandroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    return v8
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalView$10;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/KeyguardExternalView$10;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/externalviews/KeyguardExternalView$9;

    invoke-direct {v0, p0}, Lcyanogenmod/externalviews/KeyguardExternalView$9;-><init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V

    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->performAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected performAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerKeyguardExternalViewCallback(Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;)V
    .locals 0
    .param p1, "callback"    # Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    .prologue
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mCallback:Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    return-void
.end method

.method public registerOnWindowAttachmentChangedListener(Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    .prologue
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mWindowAttachmentListener:Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    return-void
.end method

.method public setProviderComponent(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    return-void
.end method

.method public unregisterKeyguardExternalViewCallback(Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;)V
    .locals 2
    .param p1, "callback"    # Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    .prologue
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mCallback:Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mCallback:Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    return-void
.end method

.method public unregisterOnWindowAttachmentChangedListener(Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    .prologue
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mWindowAttachmentListener:Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView;->mWindowAttachmentListener:Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    return-void
.end method
