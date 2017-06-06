.class Landroid/view/View$DeclaredOnClickListener;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredOnClickListener"
.end annotation


# instance fields
.field private final mHostView:Landroid/view/View;

.field private mMethod:Ljava/lang/reflect/Method;

.field private final mMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    return-void
.end method

.method private resolveMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    :goto_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    :cond_0
    instance-of v3, p1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .end local p1    # "context":Landroid/content/Context;
    :cond_1
    const/4 p1, 0x0

    .local p1, "context":Landroid/content/Context;
    goto :goto_0

    .end local p1    # "context":Landroid/content/Context;
    :cond_2
    iget-object v3, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    .local v1, "id":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    const-string v2, ""

    .local v2, "idText":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(View) in a parent or ancestor Context for android:onClick "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "attribute defined on view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "idText":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " with id \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "idText":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroid/view/View$DeclaredOnClickListener;->resolveMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethod:Ljava/lang/reflect/Method;

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not execute method for android:onClick"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not execute non-public method for android:onClick"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
