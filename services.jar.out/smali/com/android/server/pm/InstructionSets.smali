.class public Lcom/android/server/pm/InstructionSets;
.super Ljava/lang/Object;
.source "InstructionSets.java"


# static fields
.field private static final PREFERRED_INSTRUCTION_SET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDexCodeInstructionSets()[Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/String;

    .local v2, "supportedInstructionSets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v3, v1

    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "abi":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAllInstructionSets()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .local v1, "allAbis":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "allInstructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "instructionSet":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "abi":Ljava/lang/String;
    .end local v3    # "instructionSet":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getAppDexInstructionSets(Lcom/android/server/pm/PackageSetting;)[Ljava/lang/String;
    .locals 4
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sharedLibraryIsa"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.dalvik.vm.isa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "dexCodeIsa":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p0    # "sharedLibraryIsa":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "sharedLibraryIsa":Ljava/lang/String;
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "instructionSets"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/util/ArraySet;

    array-length v2, p0

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    .local v0, "dexCodeInstructionSets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .local v1, "instructionSet":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "instructionSet":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static getPreferredInstructionSet()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    return-object v0
.end method

.method public static getPrimaryInstructionSet(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
