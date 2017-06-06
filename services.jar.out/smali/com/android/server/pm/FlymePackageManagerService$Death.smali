.class Lcom/android/server/pm/FlymePackageManagerService$Death;
.super Ljava/lang/Object;
.source "FlymePackageManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FlymePackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Death"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/FlymePackageManagerService;

.field token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/pm/FlymePackageManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/FlymePackageManagerService;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService$Death;->this$0:Lcom/android/server/pm/FlymePackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/FlymePackageManagerService$Death;->token:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService$Death;->this$0:Lcom/android/server/pm/FlymePackageManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService$Death;->this$0:Lcom/android/server/pm/FlymePackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "FlymePackageManager"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
