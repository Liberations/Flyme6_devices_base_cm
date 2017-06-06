.class Lcom/android/server/BasePermissionDialog$1;
.super Landroid/os/Handler;
.source "BasePermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BasePermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BasePermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/BasePermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BasePermissionDialog;

    .prologue
    iput-object p1, p0, Lcom/android/server/BasePermissionDialog$1;->this$0:Lcom/android/server/BasePermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BasePermissionDialog$1;->this$0:Lcom/android/server/BasePermissionDialog;

    invoke-static {v0, v1}, Lcom/android/server/BasePermissionDialog;->-set0(Lcom/android/server/BasePermissionDialog;Z)Z

    iget-object v0, p0, Lcom/android/server/BasePermissionDialog$1;->this$0:Lcom/android/server/BasePermissionDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/BasePermissionDialog;->-wrap0(Lcom/android/server/BasePermissionDialog;Z)V

    :cond_0
    return-void
.end method
