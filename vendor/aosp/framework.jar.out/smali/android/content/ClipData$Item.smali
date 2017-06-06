.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final mHtmlText:Ljava/lang/String;

.field final mIntent:Landroid/content/Intent;

.field final mText:Ljava/lang/CharSequence;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Plain text must be supplied if HTML text is supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styled"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    const-string v21, "text/*"

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .local v18, "types":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "hasHtml":Z
    const/4 v11, 0x0

    .local v11, "hasText":Z
    if-eqz v18, :cond_2

    const/16 v19, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v17, v18, v19

    .local v17, "type":Ljava/lang/String;
    const-string v21, "text/html"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/4 v10, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_1
    const-string v21, "text/"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    .end local v17    # "type":Ljava/lang/String;
    :cond_2
    if-nez v10, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    const/4 v15, 0x0

    .local v15, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-eqz v10, :cond_5

    const-string v19, "text/html"

    :goto_2
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .local v6, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v15

    .local v15, "stream":Ljava/io/FileInputStream;
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-direct {v14, v15, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .local v14, "reader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v19, 0x80

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v5, "builder":Ljava/lang/StringBuilder;
    const/16 v19, 0x2000

    move/from16 v0, v19

    new-array v4, v0, [C

    .local v4, "buffer":[C
    :goto_3
    invoke-virtual {v14, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v12

    .local v12, "len":I
    if-lez v12, :cond_6

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v4, v0, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .end local v4    # "buffer":[C
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "len":I
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/FileNotFoundException;
    if-eqz v15, :cond_4

    :try_start_1
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    if-eqz p2, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    return-object v19

    .local v15, "stream":Ljava/io/FileInputStream;
    :cond_5
    :try_start_2
    const-string v19, "text/plain"

    goto :goto_2

    .restart local v4    # "buffer":[C
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v12    # "len":I
    .restart local v14    # "reader":Ljava/io/InputStreamReader;
    .local v15, "stream":Ljava/io/FileInputStream;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .local v16, "text":Ljava/lang/String;
    if-eqz v10, :cond_c

    if-eqz p2, :cond_a

    :try_start_3
    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .local v13, "newText":Ljava/lang/CharSequence;
    if-eqz v13, :cond_8

    .end local v13    # "newText":Ljava/lang/CharSequence;
    :goto_5
    if-eqz v15, :cond_7

    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    :goto_6
    return-object v13

    .restart local v13    # "newText":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v13, v16

    goto :goto_5

    .end local v13    # "newText":Ljava/lang/CharSequence;
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    goto :goto_6

    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .local v9, "e":Ljava/lang/RuntimeException;
    if-eqz v15, :cond_9

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_7
    return-object v16

    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_7

    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_a
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v19

    if-eqz v15, :cond_b

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_b
    :goto_8
    return-object v19

    :catch_4
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_8

    .end local v8    # "e":Ljava/io/IOException;
    :cond_c
    if-eqz p2, :cond_e

    if-eqz v15, :cond_d

    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_d
    :goto_9
    return-object v16

    :catch_5
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_9

    .end local v8    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_9
    invoke-static/range {v16 .. v16}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v19

    if-eqz v15, :cond_f

    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_f
    :goto_a
    return-object v19

    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_a

    .end local v4    # "buffer":[C
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "len":I
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "text":Ljava/lang/String;
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_b
    const-string v19, "ClippedData"

    const-string v20, "Failure loading text"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v19

    if-eqz v15, :cond_10

    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_10
    :goto_b
    return-object v19

    :catch_8
    move-exception v8

    goto :goto_b

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_4

    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    if-eqz v15, :cond_11

    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_11
    :goto_c
    throw v19

    :catch_a
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_c

    .end local v8    # "e":Ljava/io/IOException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    .end local v10    # "hasHtml":Z
    .end local v11    # "hasText":Z
    .end local v18    # "types":[Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    if-eqz p2, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    return-object v19

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_15
    const-string v19, ""

    return-object v19
.end method

.method private uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/text/Spanned;

    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    .local v1, "htmlText":Ljava/lang/String;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "newText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    return-object v2

    .end local v2    # "newText":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    :cond_1
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method public coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, "text":Ljava/lang/CharSequence;
    if-eqz v9, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_6

    const/4 v8, 0x0

    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "text/*"

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .local v2, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    .local v8, "stream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v7, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .local v7, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v11, 0x2000

    new-array v0, v11, [C

    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .local v6, "len":I
    if-lez v6, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v11, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "len":I
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/FileNotFoundException;
    if-eqz v8, :cond_1

    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v6    # "len":I
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    if-eqz v8, :cond_3

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    return-object v11

    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_2

    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v11, "ClippedData"

    const-string v12, "Failure loading text"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    if-eqz v8, :cond_4

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_3
    return-object v11

    :catch_3
    move-exception v4

    goto :goto_3

    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v8, :cond_5

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_4
    throw v11

    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_7

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    return-object v11

    :cond_7
    const-string v11, ""

    return-object v11
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "H:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v0, "T:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_0

    :cond_3
    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toShortSummaryString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "HTML"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_0

    :cond_3
    const-string v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
