.class public Landroid/bluetooth/le/BluetoothLeUtils;
.super Ljava/lang/Object;
.source "BluetoothLeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BT Adapter is not turned ON"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Landroid/util/SparseArray",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p1, "otherArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    return v4
.end method

.method static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;",
            "Ljava/util/Map",
            "<TT;[B>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    .local p1, "otherMap":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_0

    return v6

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v5

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v5

    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v5

    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "key":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v5

    .end local v0    # "key":Ljava/lang/Object;, "TT;"
    :cond_6
    return v6
.end method

.method static toString(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    if-nez p0, :cond_0

    const-string v2, "null"

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "{}"

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;[B>;"
    if-nez p0, :cond_0

    const-string v4, "null"

    return-object v4

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "{}"

    return-object v4

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;[B>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;[B>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
