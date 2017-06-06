.class public Landroid/media/AudioPatch;
.super Ljava/lang/Object;
.source "AudioPatch.java"


# instance fields
.field private final mHandle:Landroid/media/AudioHandle;

.field private final mSinks:[Landroid/media/AudioPortConfig;

.field private final mSources:[Landroid/media/AudioPortConfig;


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)V
    .locals 0
    .param p1, "patchHandle"    # Landroid/media/AudioHandle;
    .param p2, "sources"    # [Landroid/media/AudioPortConfig;
    .param p3, "sinks"    # [Landroid/media/AudioPortConfig;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioPatch;->mHandle:Landroid/media/AudioHandle;

    iput-object p2, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    iput-object p3, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    return-void
.end method


# virtual methods
.method public sinks()[Landroid/media/AudioPortConfig;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public sources()[Landroid/media/AudioPortConfig;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v4, "mHandle: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/media/AudioPatch;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v4}, Landroid/media/AudioHandle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mSources: {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .local v2, "source":Landroid/media/AudioPortConfig;
    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "source":Landroid/media/AudioPortConfig;
    :cond_0
    const-string v4, "} mSinks: {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .local v1, "sink":Landroid/media/AudioPortConfig;
    invoke-virtual {v1}, Landroid/media/AudioPortConfig;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "sink":Landroid/media/AudioPortConfig;
    :cond_1
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
