.class public Lcom/android/server/wifi/WifiParser;
.super Ljava/lang/Object;
.source "WifiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiParser$IE;
    }
.end annotation


# static fields
.field private static final IEEE_RSN_IE:I = 0x30

.field private static final VENDOR_SPECIFIC_IE:I = 0xdd

.field private static final WPA_IE_VENDOR_TYPE:I = 0x50f201


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse_akm([Lcom/android/server/wifi/WifiParser$IE;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 18
    .param p0, "full_IE"    # [Lcom/android/server/wifi/WifiParser$IE;
    .param p1, "ieee_cap"    # Ljava/util/BitSet;

    .prologue
    const/4 v9, 0x0

    .local v9, "privacy":Z
    const/4 v4, 0x0

    .local v4, "error":Z
    if-nez p1, :cond_0

    const/4 v14, 0x0

    return-object v14

    :cond_0
    if-nez p0, :cond_1

    const/4 v14, 0x0

    return-object v14

    :cond_1
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    .local v9, "privacy":Z
    const-string v3, ""

    .local v3, "capabilities":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "rsne_found":Z
    const/4 v14, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move v15, v14

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v7, p0, v15

    .local v7, "ie":Lcom/android/server/wifi/WifiParser$IE;
    const-string v11, ""

    .local v11, "security":Ljava/lang/String;
    iget v14, v7, Lcom/android/server/wifi/WifiParser$IE;->id:I

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ne v14, v0, :cond_13

    const/4 v10, 0x1

    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "buf":Ljava/nio/ByteBuffer;
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    array-length v12, v14

    .local v12, "total_len":I
    const/4 v8, 0x2

    .local v8, "offset":I
    add-int/lit8 v14, v12, -0x2

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    const-string v11, ""

    const/4 v4, 0x1

    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v7    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .end local v8    # "offset":I
    .end local v11    # "security":Ljava/lang/String;
    .end local v12    # "total_len":I
    :cond_2
    :goto_1
    if-nez v10, :cond_3

    if-eqz v9, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "[WEP]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v4, :cond_22

    const/4 v14, 0x0

    return-object v14

    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v7    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .restart local v8    # "offset":I
    .restart local v11    # "security":Ljava/lang/String;
    .restart local v12    # "total_len":I
    :cond_4
    const/4 v13, 0x0

    .local v13, "val":I
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v14

    const/16 v17, 0x100

    move/from16 v0, v17

    if-eq v0, v14, :cond_5

    const-string v11, ""

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x4

    add-int/lit8 v14, v12, -0x4

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    const-string v11, ""

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x4

    const-string v11, "[WPA2"

    add-int/lit8 v14, v12, -0x8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_7

    const-string v11, ""

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    add-int/lit8 v14, v12, -0x8

    mul-int/lit8 v17, v13, 0x4

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    const-string v11, ""

    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    mul-int/lit8 v14, v13, 0x4

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v8, v14, 0x8

    sub-int v14, v12, v8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_9

    const-string v11, ""

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    sub-int v14, v12, v8

    mul-int/lit8 v17, v13, 0x4

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_a

    const-string v11, ""

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v8, v8, 0x2

    if-nez v13, :cond_b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, "-EAP"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_b
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v13, :cond_12

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .local v1, "akm":I
    const/4 v5, 0x0

    .local v5, "found":Z
    sparse-switch v1, :sswitch_data_0

    :goto_3
    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :sswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_c

    const-string v14, "+"

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    goto :goto_3

    :cond_c
    const-string v14, "-EAP"

    goto :goto_4

    :sswitch_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_d

    const-string v14, "+"

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    const-string v14, "-PSK"

    goto :goto_5

    :sswitch_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_e

    const-string v14, "+"

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    goto :goto_3

    :cond_e
    const-string v14, "-FT/EAP"

    goto :goto_6

    :sswitch_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_f

    const-string v14, "+"

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    goto :goto_3

    :cond_f
    const-string v14, "-FT/PSK"

    goto :goto_7

    :sswitch_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_10

    const-string v14, "+"

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_10
    const-string v14, "-PSK-SHA256"

    goto :goto_8

    :sswitch_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_11

    const-string v14, "+"

    :goto_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_11
    const-string v14, "-EAP-SHA256"

    goto :goto_9

    .end local v1    # "akm":I
    .end local v5    # "found":Z
    :cond_12
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "i":I
    .end local v8    # "offset":I
    .end local v12    # "total_len":I
    .end local v13    # "val":I
    :cond_13
    iget v14, v7, Lcom/android/server/wifi/WifiParser$IE;->id:I

    const/16 v17, 0xdd

    move/from16 v0, v17

    if-ne v14, v0, :cond_15

    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    array-length v12, v14

    .restart local v12    # "total_len":I
    const/4 v8, 0x2

    .restart local v8    # "offset":I
    add-int/lit8 v14, v12, -0x2

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v14, v0, :cond_14

    const-string v11, ""

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_14
    iget-object v14, v7, Lcom/android/server/wifi/WifiParser$IE;->data:[B

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v14

    const v17, 0x1f25000

    move/from16 v0, v17

    if-eq v14, v0, :cond_16

    const-string v11, ""

    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v8    # "offset":I
    .end local v12    # "total_len":I
    :cond_15
    :goto_a
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto/16 :goto_0

    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v8    # "offset":I
    .restart local v12    # "total_len":I
    :cond_16
    const-string v11, "[WPA"

    add-int/lit8 v14, v12, -0x2

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_17

    const-string v11, ""

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_17
    const/4 v13, 0x0

    .restart local v13    # "val":I
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v14

    const/16 v17, 0x100

    move/from16 v0, v17

    if-eq v0, v14, :cond_18

    const-string v11, ""

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_18
    const/4 v8, 0x4

    add-int/lit8 v14, v12, -0x4

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v14, v0, :cond_19

    const-string v11, ""

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_19
    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v14, v12, -0x8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_1a

    const-string v11, ""

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    add-int/lit8 v14, v12, -0x8

    mul-int/lit8 v17, v13, 0x4

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_1b

    const-string v11, ""

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_1b
    mul-int/lit8 v14, v13, 0x4

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v8, v14, 0x8

    sub-int v14, v12, v8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_1c

    const-string v11, ""

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_1c
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v13

    sub-int v14, v12, v8

    mul-int/lit8 v17, v13, 0x4

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-ge v14, v0, :cond_1d

    const-string v11, ""

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_1d
    add-int/lit8 v8, v8, 0x2

    if-nez v13, :cond_1e

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, "-EAP"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1e
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v13, :cond_21

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .restart local v1    # "akm":I
    const/4 v5, 0x0

    .restart local v5    # "found":Z
    sparse-switch v1, :sswitch_data_1

    :goto_c
    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :sswitch_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_1f

    const-string v14, "+"

    :goto_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    goto :goto_c

    :cond_1f
    const-string v14, "-EAP"

    goto :goto_d

    :sswitch_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v5, :cond_20

    const-string v14, "+"

    :goto_e
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    goto :goto_c

    :cond_20
    const-string v14, "-PSK"

    goto :goto_e

    .end local v1    # "akm":I
    .end local v5    # "found":Z
    :cond_21
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_a

    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "i":I
    .end local v7    # "ie":Lcom/android/server/wifi/WifiParser$IE;
    .end local v8    # "offset":I
    .end local v11    # "security":Ljava/lang/String;
    .end local v12    # "total_len":I
    .end local v13    # "val":I
    :cond_22
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1ac0f00 -> :sswitch_0
        0x2ac0f00 -> :sswitch_1
        0x3ac0f00 -> :sswitch_2
        0x4ac0f00 -> :sswitch_3
        0x5ac0f00 -> :sswitch_5
        0x6ac0f00 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1f25000 -> :sswitch_6
        0x2f25000 -> :sswitch_7
    .end sparse-switch
.end method
