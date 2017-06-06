.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableReprocessFormatsMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerReprocessFormatsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/ReprocessFormatsMap;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/hardware/camera2/params/ReprocessFormatsMap;)I
    .locals 7
    .param p1, "value"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .prologue
    const/4 v2, 0x0

    .local v2, "length":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getInputs()[I

    move-result-object v1

    .local v1, "inputs":[I
    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .local v0, "input":I
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object v3

    .local v3, "outputs":[I
    array-length v6, v3

    add-int/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "input":I
    .end local v3    # "outputs":[I
    :cond_0
    mul-int/lit8 v4, v2, 0x4

    return v4
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->calculateMarshalSize(Landroid/hardware/camera2/params/ReprocessFormatsMap;)I

    move-result v0

    return v0
.end method

.method public getNativeSize()I
    .locals 1

    .prologue
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/ReprocessFormatsMap;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "value"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getInputs()[I

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal([I)[I

    move-result-object v1

    .local v1, "inputs":[I
    array-length v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget v0, v1, v6

    .local v0, "input":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal([I)[I

    move-result-object v3

    .local v3, "outputs":[I
    array-length v4, v3

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v8, v3

    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_0

    aget v2, v3, v4

    .local v2, "output":I
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "output":I
    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .end local v0    # "input":I
    .end local v3    # "outputs":[I
    :cond_1
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    check-cast p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->marshal(Landroid/hardware/camera2/params/ReprocessFormatsMap;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    div-int/lit8 v2, v3, 0x4

    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "ReprocessFormatsMap was not TYPE_INT32"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_0
    new-array v0, v2, [I

    .local v0, "entries":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .local v1, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    new-instance v3, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-direct {v3, v0}, Landroid/hardware/camera2/params/ReprocessFormatsMap;-><init>([I)V

    return-object v3
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ReprocessFormatsMap;

    move-result-object v0

    return-object v0
.end method
