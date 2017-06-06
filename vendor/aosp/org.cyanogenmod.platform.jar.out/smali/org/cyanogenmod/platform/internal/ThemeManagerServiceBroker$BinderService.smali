.class final Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;
.super Lcyanogenmod/themes/IThemeService$Stub;
.source "ThemeManagerServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    .prologue
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-direct {p0}, Lcyanogenmod/themes/IThemeService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;-><init>(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    return-void
.end method


# virtual methods
.method public applyDefaultTheme()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->applyDefaultTheme()V

    return-void
.end method

.method public getLastThemeChangeRequestType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->getLastThemeChangeRequestType()I

    move-result v0

    return v0
.end method

.method public getLastThemeChangeTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->getLastThemeChangeTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->getProgress()I

    move-result v0

    return v0
.end method

.method public isThemeApplying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->isThemeApplying()Z

    move-result v0

    return v0
.end method

.method public isThemeBeingProcessed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->isThemeBeingProcessed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public processThemeResources(Ljava/lang/String;)Z
    .locals 1
    .param p1, "themePkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->processThemeResources(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public rebuildResourceCache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0}, Lcyanogenmod/themes/IThemeService;->rebuildResourceCache()V

    return-void
.end method

.method public registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->registerThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public removeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->removeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V
    .locals 1
    .param p1, "request"    # Lcyanogenmod/themes/ThemeChangeRequest;
    .param p2, "removePerAppThemes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1, p2}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    return-void
.end method

.method public requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->requestThemeChangeUpdates(Lcyanogenmod/themes/IThemeChangeListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-get0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/themes/IThemeProcessingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcyanogenmod/themes/IThemeService;

    invoke-interface {v0, p1}, Lcyanogenmod/themes/IThemeService;->unregisterThemeProcessingListener(Lcyanogenmod/themes/IThemeProcessingListener;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker$BinderService;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;->-get1(Lorg/cyanogenmod/platform/internal/ThemeManagerServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
