.class public Landroid/app/SudaModDialog;
.super Landroid/app/Dialog;
.source "SudaModDialog.java"


# instance fields
.field private mColorLayout:Landroid/widget/LinearLayout;

.field private mMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const v0, 0x103006f

    invoke-direct {p0, p1, v0}, Landroid/app/SudaModDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "i"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900e0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, "v":Landroid/view/View;
    const v3, 0x10203d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Landroid/app/SudaModDialog;->mColorLayout:Landroid/widget/LinearLayout;

    const v3, 0x10203d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/SudaModDialog;->mMessage:Landroid/widget/TextView;

    const-string v3, "#1E90FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .local v0, "currHourColor":I
    iget-object v3, p0, Landroid/app/SudaModDialog;->mColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v2}, Landroid/app/SudaModDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Landroid/app/SudaModDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
