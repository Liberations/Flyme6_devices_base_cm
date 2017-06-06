.class Lorg/cyanogenmod/platform/internal/CMHardwareService$1;
.super Lcyanogenmod/hardware/ICMHardwareService$Stub;
.source "CMHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMHardwareService;

    .prologue
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-direct {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;-><init>()V

    return-void
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->get(I)Z

    move-result v0

    return v0
.end method

.method public getColorBalance()I
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalance()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMax()I
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalanceMax()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMin()I
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalanceMin()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 6

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayColorCalibration()[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 3
    .param p1, "idx"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayGammaCalibration(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-direct {p0, v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Display modes are not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v4

    invoke-interface {v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v1

    .local v1, "modes":[Lcyanogenmod/hardware/DisplayMode;
    if-nez v1, :cond_1

    return-object v6

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "remapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/hardware/DisplayMode;>;"
    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .local v0, "mode":Lcyanogenmod/hardware/DisplayMode;
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v6, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    .local v2, "r":Lcyanogenmod/hardware/DisplayMode;
    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "mode":Lcyanogenmod/hardware/DisplayMode;
    .end local v2    # "r":Lcyanogenmod/hardware/DisplayMode;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcyanogenmod/hardware/DisplayMode;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcyanogenmod/hardware/DisplayMode;

    return-object v4
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDownloadInterval()J
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getNumGammaControls()I

    move-result v0

    return v0
.end method

.method public getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 6

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getPictureAdjustmentRanges()[F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x20000

    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v0

    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Float;>;>;"
    const/16 v1, 0xa

    new-array v2, v1, [F

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x5

    aput v1, v2, v3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x6

    aput v1, v2, v3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x7

    aput v1, v2, v3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v3, 0x8

    aput v1, v2, v3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v3, 0x9

    aput v1, v2, v3

    return-object v2

    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Float;>;>;"
    :cond_0
    const/16 v1, 0xa

    new-array v1, v1, [F

    return-object v1
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Serial number is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getSupportedFeatures()I

    move-result v0

    return v0
.end method

.method public getThermalState()I
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get3(Lorg/cyanogenmod/platform/internal/CMHardwareService;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unique device ID is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getVibratorIntensity()[I

    move-result-object v0

    return-object v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->isSunlightEnhancementSelfManaged()Z

    move-result v0

    return v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.MANAGE_PERSISTENT_STORAGE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public registerThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcyanogenmod/hardware/IThermalListenerCallback;

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->set(IZ)Z

    move-result v0

    return v0
.end method

.method public setColorBalance(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setColorBalance(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 4
    .param p1, "rgb"    # [I

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid color calibration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayColorCalibration([I)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 3
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayGammaCalibration(I[I)Z

    move-result v0

    return v0
.end method

.method public setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    .locals 3
    .param p1, "mode"    # Lcyanogenmod/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    .locals 3
    .param p1, "hsic"    # Lcyanogenmod/hardware/HSIC;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 3
    .param p1, "intensity"    # I

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setVibratorIntensity(I)Z

    move-result v0

    return v0
.end method

.method public unRegisterThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcyanogenmod/hardware/IThermalListenerCallback;

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cyanogenmod.permission.MANAGE_PERSISTENT_STORAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-gt v1, v2, :cond_0

    if-eqz p2, :cond_4

    array-length v1, p2

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_4

    :cond_2
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
