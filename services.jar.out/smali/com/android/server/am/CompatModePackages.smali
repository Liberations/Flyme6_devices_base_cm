.class public final Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .locals 15
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v12, Landroid/util/AtomicFile;

    new-instance v13, Ljava/io/File;

    const-string v14, "packages-compat.xml"

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    new-instance v12, Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, p0, v13}, Lcom/android/server/am/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/am/CompatModePackages;Landroid/os/Looper;)V

    iput-object v12, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/4 v6, 0x0

    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .local v5, "eventType":I
    :goto_0
    const/4 v12, 0x2

    if-eq v5, v12, :cond_0

    const/4 v12, 0x1

    if-eq v5, v12, :cond_0

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v12, 0x1

    if-ne v5, v12, :cond_2

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v4

    .local v4, "e1":Ljava/io/IOException;
    goto :goto_1

    .end local v4    # "e1":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .local v11, "tagName":Ljava/lang/String;
    const-string v12, "compat-packages"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    :cond_3
    const/4 v12, 0x2

    if-ne v5, v12, :cond_5

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    const-string v12, "pkg"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "name"

    const/4 v13, 0x0

    invoke-interface {v9, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "pkg":Ljava/lang/String;
    if-eqz v10, :cond_5

    const-string v12, "mode"

    const/4 v13, 0x0

    invoke-interface {v9, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .local v7, "mode":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "modeInt":I
    if-eqz v7, :cond_4

    :try_start_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    :cond_4
    :goto_2
    :try_start_4
    iget-object v12, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v7    # "mode":Ljava/lang/String;
    .end local v8    # "modeInt":I
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_3

    :cond_6
    if-eqz v6, :cond_7

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .restart local v5    # "eventType":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "mode":Ljava/lang/String;
    .restart local v8    # "modeInt":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "mode":Ljava/lang/String;
    .end local v8    # "modeInt":I
    .end local v10    # "pkg":Ljava/lang/String;
    :catch_2
    move-exception v4

    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_3

    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "eventType":I
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    if-eqz v6, :cond_8

    :try_start_6
    const-string v12, "ActivityManager"

    const-string v13, "Error reading compat-packages"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    if-eqz v6, :cond_7

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    const-string v12, "ActivityManager"

    const-string v13, "Error reading compat-packages"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_7

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    :catch_6
    move-exception v4

    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_3

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-eqz v6, :cond_9

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_9
    :goto_4
    throw v12

    :catch_7
    move-exception v4

    .restart local v4    # "e1":Ljava/io/IOException;
    goto :goto_4
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 16
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    .local v4, "curFlags":I
    packed-switch p2, :pswitch_data_0

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown screen compat mode req #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; ignoring"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const/4 v6, 0x0

    .local v6, "enable":Z
    :goto_0
    move v9, v4

    .local v9, "newFlags":I
    if-eqz v6, :cond_4

    or-int/lit8 v9, v9, 0x2

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .local v3, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring compat mode change of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; compatibility never needed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring compat mode change of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; compatibility always needed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :cond_1
    if-eq v9, v4, :cond_8

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/16 v14, 0x12c

    invoke-virtual {v13, v14}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/16 v14, 0x12c

    invoke-virtual {v13, v14}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v14, 0x2710

    invoke-virtual {v13, v8, v14, v15}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .local v12, "starting":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v7, v13, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_2
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "enable":Z
    .end local v7    # "i":I
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "newFlags":I
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "starting":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    const/4 v6, 0x1

    .restart local v6    # "enable":Z
    goto/16 :goto_0

    .end local v6    # "enable":Z
    :pswitch_2
    and-int/lit8 v13, v4, 0x2

    if-nez v13, :cond_3

    const/4 v6, 0x1

    .restart local v6    # "enable":Z
    goto/16 :goto_0

    .end local v6    # "enable":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "enable":Z
    goto/16 :goto_0

    .restart local v9    # "newFlags":I
    :cond_4
    and-int/lit8 v9, v9, -0x3

    goto/16 :goto_1

    .restart local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "i":I
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_6
    :try_start_0
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v13, :cond_2

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v13, v10, v3}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    goto :goto_4

    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    if-eqz v12, :cond_8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .end local v7    # "i":I
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 5
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v2, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {v0, p1, v2, v3, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    return-object v0
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .locals 5
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .local v0, "enabled":Z
    :goto_0
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v1, p1, v3, v4, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .local v1, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, -0x2

    return v2

    .end local v0    # "enabled":Z
    .end local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .restart local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, -0x1

    return v2

    :cond_2
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    return v1
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    const/4 v2, -0x3

    return v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    return v2

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPackages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    .prologue
    const/16 v8, 0x12c

    const/4 v0, 0x0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, p1, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    .local v3, "mayCompat":Z
    :goto_1
    if-eqz p2, :cond_1

    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v5, v8}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v5, v8}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .end local v3    # "mayCompat":Z
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "mayCompat":Z
    goto :goto_1

    .end local v3    # "mayCompat":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "mayCompat":Z
    goto :goto_1

    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v3    # "mayCompat":Z
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method saveCompatModes()V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v13, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v18

    const/4 v7, 0x0

    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v11, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v17, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v17, "compat-packages"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .local v14, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Landroid/content/res/Configuration;->screenLayout:I

    .local v15, "screenLayout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v16, v0

    .local v16, "smallestScreenWidthDp":I
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "pkg":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .local v10, "mode":I
    if-eqz v10, :cond_0

    const/4 v3, 0x0

    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_2
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v12, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v3, :cond_0

    :try_start_3
    new-instance v8, Landroid/content/res/CompatibilityInfo;

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v3, v15, v0, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .local v8, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "pkg"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v17, "name"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v17, "mode"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v11, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v17, "pkg"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "info":Landroid/content/res/CompatibilityInfo;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v10    # "mode":I
    .end local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    .end local v15    # "screenLayout":I
    .end local v16    # "smallestScreenWidthDp":I
    :catch_0
    move-exception v5

    .local v5, "e1":Ljava/io/IOException;
    const-string v17, "ActivityManager"

    const-string v18, "Error writing compat packages"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .end local v5    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .end local v13    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v10    # "mode":I
    .restart local v11    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "screenLayout":I
    .restart local v16    # "smallestScreenWidthDp":I
    :catch_1
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_1

    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "mode":I
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v17, "compat-packages"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .locals 3
    .param p1, "ask"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    const-string v1, "ActivityManager"

    const-string v2, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .prologue
    const/16 v5, 0x12c

    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .local v0, "curFlags":I
    if-eqz p2, :cond_1

    and-int/lit8 v2, v0, -0x2

    .local v2, "newFlags":I
    :goto_0
    if-eq v0, v2, :cond_0

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .end local v2    # "newFlags":I
    :cond_1
    or-int/lit8 v2, v0, 0x1

    .restart local v2    # "newFlags":I
    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    return-void

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
