.class public Landroid/graphics/drawable/VectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;,
        Landroid/graphics/drawable/VectorDrawable$VPathRenderer;,
        Landroid/graphics/drawable/VectorDrawable$VGroup;,
        Landroid/graphics/drawable/VectorDrawable$VPath;,
        Landroid/graphics/drawable/VectorDrawable$VClipPath;,
        Landroid/graphics/drawable/VectorDrawable$VFullPath;
    }
.end annotation


# static fields
.field private static final DBG_VECTOR_DRAWABLE:Z = false

.field private static final LINECAP_BUTT:I = 0x0

.field private static final LINECAP_ROUND:I = 0x1

.field private static final LINECAP_SQUARE:I = 0x2

.field private static final LINEJOIN_BEVEL:I = 0x2

.field private static final LINEJOIN_MITER:I = 0x0

.field private static final LINEJOIN_ROUND:I = 0x1

.field private static final LOGTAG:Ljava/lang/String;

.field private static final MAX_CACHED_BITMAP_SIZE:I = 0x800

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final SHAPE_VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private mAllowCaching:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDpiScaleInsets:Landroid/graphics/Insets;

.field private mDpiScaledHeight:I

.field private mDpiScaledWidth:I

.field private mMutated:Z

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpDstBounds:Landroid/graphics/RectF;

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;


# direct methods
.method static synthetic -wrap0(IF)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->applyAlpha(IF)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mAllowCaching:Z

    iput v3, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    iput v3, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaleInsets:Landroid/graphics/Insets;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpDstBounds:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    :goto_0
    invoke-virtual {p0, p2, v3}, Landroid/graphics/drawable/VectorDrawable;->updateDimensionInfo(Landroid/content/res/Resources;Z)V

    return-void

    :cond_0
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static applyAlpha(IF)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .prologue
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .local v0, "alphaBytes":I
    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p0, v1

    return p0
.end method

.method public static create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "rid"    # I

    .prologue
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v7, :cond_1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    :cond_1
    if-eq v5, v7, :cond_2

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "No start tag found"

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_0
    move-exception v3

    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    const-string v7, "parser error"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_2
    :try_start_1
    new-instance v1, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .local v1, "drawable":Landroid/graphics/drawable/VectorDrawable;
    invoke-virtual {v1, p0, v4, v0}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "drawable":Landroid/graphics/drawable/VectorDrawable;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    const-string v7, "parser error"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 17
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .local v11, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v10, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .local v10, "pathRenderer":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    const/4 v7, 0x1

    .local v7, "noPathTag":Z
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .local v5, "groupStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/drawable/VectorDrawable$VGroup;>;"
    invoke-static {v10}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->-get1(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/drawable/VectorDrawable$VGroup;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .local v4, "eventType":I
    :goto_0
    const/4 v14, 0x1

    if-eq v4, v14, :cond_7

    const/4 v14, 0x2

    if-ne v4, v14, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .local v13, "tagName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .local v3, "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    const-string v14, "path"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>()V

    .local v9, "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v14, v3, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    iget-object v14, v10, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v7, 0x0

    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v15, v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    or-int/2addr v14, v15

    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v9    # "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .restart local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_2
    const-string v14, "clip-path"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v8, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>()V

    .local v8, "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v14, v3, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    iget-object v14, v10, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v15, v8, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    or-int/2addr v14, v15

    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    goto :goto_1

    .end local v8    # "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    :cond_4
    const-string v14, "group"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    .local v6, "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v14, v3, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    iget-object v14, v10, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-static {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get0(Landroid/graphics/drawable/VectorDrawable$VGroup;)I

    move-result v15

    or-int/2addr v14, v15

    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    goto :goto_1

    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v6    # "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x3

    if-ne v4, v14, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "tagName":Ljava/lang/String;
    const-string v14, "group"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .end local v13    # "tagName":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_9

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .local v12, "tag":Ljava/lang/StringBuffer;
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_8

    const-string v14, " or "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const-string v14, "path"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " defined"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v12    # "tag":Ljava/lang/StringBuffer;
    :cond_9
    return-void
.end method

.method private needMirroring()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private printGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;I)V
    .locals 6
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "level"    # I

    .prologue
    const-string v2, ""

    .local v2, "indent":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "current group is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rotation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get2(Landroid/graphics/drawable/VectorDrawable$VGroup;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "matrix is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "child":Ljava/lang/Object;
    instance-of v3, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .end local v0    # "child":Ljava/lang/Object;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Landroid/graphics/drawable/VectorDrawable;->printGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .local v7, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v6, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .local v6, "pathRenderer":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    iget v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v11

    or-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v10

    iput-object v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    const/4 v10, 0x6

    invoke-virtual {p1, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .local v9, "tintMode":I
    if-eq v9, v13, :cond_0

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v9, v10}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v10

    iput-object v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .local v8, "tint":Landroid/content/res/ColorStateList;
    if-eqz v8, :cond_1

    iput-object v8, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    :cond_1
    iget-boolean v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    const/4 v11, 0x5

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    const/4 v11, 0x7

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    const/16 v11, 0x8

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    cmpg-float v10, v10, v12

    if-gtz v10, :cond_2

    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    cmpg-float v10, v10, v12

    if-gtz v10, :cond_3

    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    const/4 v11, 0x3

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    const/4 v11, 0x2

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    cmpg-float v10, v10, v12

    if-gtz v10, :cond_4

    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires width > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    cmpg-float v10, v10, v12

    if-gtz v10, :cond_5

    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires height > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iget v10, v10, Landroid/graphics/Insets;->left:I

    const/16 v11, 0x9

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "insetLeft":I
    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iget v10, v10, Landroid/graphics/Insets;->top:I

    const/16 v11, 0xa

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .local v4, "insetTop":I
    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iget v10, v10, Landroid/graphics/Insets;->right:I

    const/16 v11, 0xb

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .local v3, "insetRight":I
    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iget v10, v10, Landroid/graphics/Insets;->bottom:I

    const/16 v11, 0xc

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .local v1, "insetBottom":I
    invoke-static {v2, v4, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v10

    iput-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getAlpha()F

    move-result v10

    const/4 v11, 0x4

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .local v0, "alphaInFloat":F
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->setAlpha(F)V

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_6

    iput-object v5, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    iget-object v10, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .local v3, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    sget-object v5, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->updateDimensionInfo(Landroid/content/res/Resources;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    :cond_2
    iget-object v2, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    .local v2, "path":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_3
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v6, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v5, v6}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .end local v2    # "path":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/VectorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v5, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_0
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpDstBounds:Landroid/graphics/RectF;

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpDstBounds:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpDstBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v4, v5

    .local v4, "scaledWidth":I
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpDstBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v3, v5

    .local v3, "scaledHeight":I
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v4, :cond_2

    if-gtz v3, :cond_4

    :cond_2
    return-void

    .end local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v3    # "scaledHeight":I
    .end local v4    # "scaledWidth":I
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .restart local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    goto :goto_0

    .restart local v3    # "scaledHeight":I
    .restart local v4    # "scaledWidth":I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .local v2, "saveCount":I
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;->needMirroring()Z

    move-result v1

    .local v1, "needMirroring":Z
    if-eqz v1, :cond_5

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_5
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->createCachedBitmapIfNeeded(II)V

    iget-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable;->mAllowCaching:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCachedBitmap(II)V

    :cond_6
    :goto_1
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1, v0, v6}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_7
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseCache()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v5, v4, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCachedBitmap(II)V

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->updateCacheStates()V

    goto :goto_1
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x3

    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaleInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getPixelSize()F
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    if-nez v6, :cond_1

    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    return v6

    :cond_1
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v1, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    .local v1, "intrinsicWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v0, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    .local v0, "intrinsicHeight":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v5, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    .local v5, "viewportWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v4, v6, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    .local v4, "viewportHeight":F
    div-float v2, v5, v1

    .local v2, "scaleX":F
    div-float v3, v4, v0

    .local v3, "scaleY":F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    return v6
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .local v2, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    new-instance v1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;-><init>()V

    .local v1, "pathRenderer":Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
    iput-object v1, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    sget-object v3, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    invoke-static {p1, p4, p3, v3}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v6, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v5, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    iput-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p1, v6}, Landroid/graphics/drawable/VectorDrawable;->updateDimensionInfo(Landroid/content/res/Resources;Z)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method setAllowCaching(Z)V
    .locals 0
    .param p1, "allowCaching"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/graphics/drawable/VectorDrawable;->mAllowCaching:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->setRootAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput-boolean p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method updateDimensionInfo(Landroid/content/res/Resources;Z)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "updateConstantStateDensity"    # Z

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .local v2, "densityDpi":I
    if-nez v2, :cond_1

    const/16 v5, 0xa0

    .local v5, "targetDensity":I
    :goto_0
    if-eqz p2, :cond_2

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iput v5, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    .end local v2    # "densityDpi":I
    .end local v5    # "targetDensity":I
    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    float-to-int v7, v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaleInsets:Landroid/graphics/Insets;

    return-void

    .restart local v2    # "densityDpi":I
    :cond_1
    move v5, v2

    .restart local v5    # "targetDensity":I
    goto :goto_0

    :cond_2
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v1, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    .local v1, "constantStateDensity":I
    if-eq v5, v1, :cond_0

    if-eqz v1, :cond_0

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    float-to-int v7, v7

    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    float-to-int v7, v7

    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v7

    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->left:I

    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v3

    .local v3, "left":I
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->right:I

    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v4

    .local v4, "right":I
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->top:I

    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v6

    .local v6, "top":I
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVPathRenderer:Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    iget-object v7, v7, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    invoke-static {v7, v1, v5}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    .local v0, "bottom":I
    invoke-static {v3, v6, v4, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    iput-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaleInsets:Landroid/graphics/Insets;

    return-void
.end method
