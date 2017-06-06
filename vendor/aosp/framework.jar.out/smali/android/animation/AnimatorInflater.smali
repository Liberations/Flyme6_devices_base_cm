.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 24
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .param p6, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .local v14, "anim":Landroid/animation/Animator;
    const/16 v16, 0x0

    .local v16, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .end local v14    # "anim":Landroid/animation/Animator;
    .end local v16    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v17, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, "type":I
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_9

    :cond_1
    const/4 v4, 0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_9

    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .local v21, "name":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "gotValues":Z
    const-string v4, "objectAnimator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    :goto_1
    if-eqz p4, :cond_0

    if-nez v18, :cond_0

    if-nez v16, :cond_2

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v4, "animator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v4, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v14

    .local v14, "anim":Landroid/animation/Animator;
    goto :goto_1

    .end local v14    # "anim":Landroid/animation/Animator;
    :cond_4
    const-string v4, "set"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .restart local v14    # "anim":Landroid/animation/Animator;
    if-eqz p1, :cond_5

    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .local v12, "a":Landroid/content/res/TypedArray;
    :goto_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {v14, v4}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .local v9, "ordering":I
    move-object v8, v14

    check-cast v8, Landroid/animation/AnimatorSet;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .end local v9    # "ordering":I
    .end local v12    # "a":Landroid/content/res/TypedArray;
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .restart local v12    # "a":Landroid/content/res/TypedArray;
    goto :goto_2

    .end local v12    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "anim":Landroid/animation/Animator;
    :cond_6
    const-string v4, "propertyValuesHolder"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v4}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v23

    .local v23, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v23, :cond_7

    if-eqz v14, :cond_7

    instance-of v4, v14, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_7

    move-object v4, v14

    check-cast v4, Landroid/animation/ValueAnimator;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_7
    const/16 v18, 0x1

    goto/16 :goto_1

    .end local v23    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v18    # "gotValues":Z
    .end local v21    # "name":Ljava/lang/String;
    :cond_9
    if-eqz p4, :cond_b

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v15, v4, [Landroid/animation/Animator;

    .local v15, "animsArray":[Landroid/animation/Animator;
    const/16 v19, 0x0

    .local v19, "index":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "a$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .local v11, "a":Landroid/animation/Animator;
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "index":I
    .local v20, "index":I
    aput-object v11, v15, v19

    move/from16 v19, v20

    .end local v20    # "index":I
    .restart local v19    # "index":I
    goto :goto_3

    .end local v11    # "a":Landroid/animation/Animator;
    :cond_a
    if-nez p5, :cond_c

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .end local v13    # "a$iterator":Ljava/util/Iterator;
    .end local v15    # "animsArray":[Landroid/animation/Animator;
    .end local v19    # "index":I
    :cond_b
    :goto_4
    return-object v14

    .restart local v13    # "a$iterator":Ljava/util/Iterator;
    .restart local v15    # "animsArray":[Landroid/animation/Animator;
    .restart local v19    # "index":I
    :cond_c
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_4
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .prologue
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    new-instance v7, Landroid/animation/StateListAnimator;

    invoke-direct {v7}, Landroid/animation/StateListAnimator;-><init>()V

    .local v7, "stateListAnimator":Landroid/animation/StateListAnimator;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object v7

    :pswitch_1
    const/4 v1, 0x0

    .local v1, "animator":Landroid/animation/Animator;
    const-string v10, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .local v3, "attributeCount":I
    new-array v8, v3, [I

    .local v8, "states":[I
    const/4 v5, 0x0

    .local v5, "stateIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v5    # "stateIndex":I
    .local v6, "stateIndex":I
    :goto_1
    if-ge v4, v3, :cond_3

    invoke-interface {p2, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .local v2, "attrName":I
    const v10, 0x10101cd

    if-ne v2, v10, :cond_1

    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    .local v0, "animId":I
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .local v1, "animator":Landroid/animation/Animator;
    move v5, v6

    .end local v0    # "animId":I
    .end local v1    # "animator":Landroid/animation/Animator;
    .end local v2    # "attrName":I
    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    goto :goto_1

    .restart local v2    # "attrName":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "stateIndex":I
    .restart local v5    # "stateIndex":I
    const/4 v10, 0x0

    invoke-interface {p2, v4, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    if-eqz v10, :cond_2

    .end local v2    # "attrName":I
    :goto_3
    aput v2, v8, v6

    goto :goto_2

    .restart local v2    # "attrName":I
    :cond_2
    neg-int v2, v2

    goto :goto_3

    .end local v2    # "attrName":I
    .end local v5    # "stateIndex":I
    .restart local v6    # "stateIndex":I
    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, p1, v12}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    const-string v11, "animation state item must have a valid animation"

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    invoke-static {v8, v6}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v10

    invoke-virtual {v7, v10, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    sub-int v3, p3, p2

    add-int/lit8 v0, v3, 0x2

    .local v0, "count":I
    int-to-float v3, v0

    div-float v2, p1, v3

    .local v2, "increment":F
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    aget-object v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v3, "AnimatorInflater"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    .local v2, "keyframe":Landroid/animation/Keyframe;
    const-string v4, "AnimatorInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": fraction "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    const-string v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", value : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "null"

    goto :goto_2

    .end local v2    # "keyframe":Landroid/animation/Keyframe;
    :cond_4
    return-void
.end method

.method private static getChangingConfigs(Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 23
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_4

    const/4 v7, 0x1

    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_5

    iget v5, v14, Landroid/util/TypedValue;->type:I

    .local v5, "fromType":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    const/4 v8, 0x1

    .local v8, "hasTo":Z
    :goto_2
    if-eqz v8, :cond_7

    iget v13, v15, Landroid/util/TypedValue;->type:I

    .local v13, "toType":I
    :goto_3
    const/16 v20, 0x4

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    if-eqz v7, :cond_0

    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    if-eqz v8, :cond_8

    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_8

    :cond_1
    const/16 p1, 0x3

    :cond_2
    :goto_4
    if-nez p1, :cond_9

    const/4 v6, 0x1

    .local v6, "getFloats":Z
    :goto_5
    const/4 v11, 0x0

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "fromString":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "toString":Ljava/lang/String;
    invoke-static {v4}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v9

    .local v9, "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    invoke-static {v12}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v10

    .local v10, "nodesTo":[Landroid/util/PathParser$PathDataNode;
    if-nez v9, :cond_3

    if-eqz v10, :cond_b

    :cond_3
    if-eqz v9, :cond_d

    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-static {v9}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v10, :cond_c

    invoke-static {v9, v10}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    move-result v20

    if-nez v20, :cond_a

    new-instance v20, Landroid/view/InflateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " Can\'t morph from "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v20

    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v5    # "fromType":I
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "hasTo":Z
    .end local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    .end local v13    # "toType":I
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "hasFrom":Z
    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "fromType":I
    goto/16 :goto_1

    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "hasTo":Z
    goto/16 :goto_2

    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "toType":I
    goto/16 :goto_3

    :cond_8
    const/16 p1, 0x0

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "getFloats":Z
    goto :goto_5

    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_a
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    aput-object v10, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_b
    :goto_6
    return-object v11

    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_c
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_6

    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_d
    if-eqz v10, :cond_b

    new-instance v3, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-static {v10}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_6

    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/util/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_e
    const/4 v3, 0x0

    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v20, 0x3

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v3

    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_f
    if-eqz v6, :cond_16

    if-eqz v7, :cond_14

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v5, v0, :cond_11

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .local v16, "valueFrom":F
    :goto_7
    if-eqz v8, :cond_13

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_12

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .local v18, "valueTo":F
    :goto_8
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v16, v20, v21

    const/16 v21, 0x1

    aput v18, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "valueFrom":F
    .end local v18    # "valueTo":F
    :cond_10
    :goto_9
    if-eqz v11, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_6

    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_11
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .restart local v16    # "valueFrom":F
    goto :goto_7

    :cond_12
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .restart local v18    # "valueTo":F
    goto :goto_8

    .end local v18    # "valueTo":F
    :cond_13
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v16, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_9

    .end local v16    # "valueFrom":F
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_14
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_15

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .restart local v18    # "valueTo":F
    :goto_a
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v18, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_9

    .end local v18    # "valueTo":F
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_15
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .restart local v18    # "valueTo":F
    goto :goto_a

    .end local v18    # "valueTo":F
    :cond_16
    if-eqz v7, :cond_1c

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v5, v0, :cond_17

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .local v17, "valueFrom":I
    :goto_b
    if-eqz v8, :cond_1b

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .local v19, "valueTo":I
    :goto_c
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v17, v20, v21

    const/16 v21, 0x1

    aput v19, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_9

    .end local v17    # "valueFrom":I
    .end local v19    # "valueTo":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_17
    invoke-static {v5}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_18

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueFrom":I
    goto :goto_b

    .end local v17    # "valueFrom":I
    :cond_18
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueFrom":I
    goto :goto_b

    :cond_19
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_c

    .end local v19    # "valueTo":I
    :cond_1a
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_c

    .end local v19    # "valueTo":I
    :cond_1b
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v17, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_9

    .end local v17    # "valueFrom":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1c
    if-eqz v8, :cond_10

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v13, v0, :cond_1d

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .restart local v19    # "valueTo":I
    :goto_d
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v19, v20, v21

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto/16 :goto_9

    .end local v19    # "valueTo":I
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1d
    invoke-static {v13}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v20

    if-eqz v20, :cond_1e

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_d

    .end local v19    # "valueTo":I
    :cond_1e
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_d
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .local v1, "hasFrom":Z
    :goto_0
    if-eqz v1, :cond_3

    iget v0, v4, Landroid/util/TypedValue;->type:I

    .local v0, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .local v2, "hasTo":Z
    :goto_2
    if-eqz v2, :cond_5

    iget v3, v5, Landroid/util/TypedValue;->type:I

    .local v3, "toType":I
    :goto_3
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-eqz v2, :cond_6

    invoke-static {v3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    const/4 v6, 0x3

    .local v6, "valueType":I
    :goto_4
    return v6

    .end local v0    # "fromType":I
    .end local v1    # "hasFrom":Z
    .end local v2    # "hasTo":Z
    .end local v3    # "toType":I
    .end local v5    # "tvTo":Landroid/util/TypedValue;
    .end local v6    # "valueType":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "hasFrom":Z
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "fromType":I
    goto :goto_1

    .restart local v5    # "tvTo":Landroid/util/TypedValue;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "hasTo":Z
    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "toType":I
    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "valueType":I
    goto :goto_4
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .local v1, "hasValue":Z
    :goto_1
    if-eqz v1, :cond_2

    iget v4, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x3

    .local v3, "valueType":I
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v3

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "hasValue":Z
    .end local v2    # "keyframeValue":Landroid/util/TypedValue;
    .end local v3    # "valueType":I
    :cond_0
    sget-object v4, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .restart local v2    # "keyframeValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hasValue":Z
    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "valueType":I
    goto :goto_2
.end method

.method private static isColorType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x1c

    if-lt p0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v3

    .local v3, "animatorCache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/Animator;>;"
    int-to-long v10, p2

    invoke-virtual {v3, v10, v11, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v7, 0x0

    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, p1, v7, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    invoke-virtual {v2}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    .local v4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    if-eqz v4, :cond_1

    int-to-long v10, p2

    invoke-virtual {v3, v10, v11, p1, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    invoke-virtual {v4, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/animation/Animator;

    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/Animator;>;"
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v2

    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .local v8, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "ex":Ljava/io/IOException;
    .end local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v9

    :catch_1
    move-exception v6

    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t load animation resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .restart local v8    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v8, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "anim"    # Landroid/animation/ValueAnimator;
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-eqz p1, :cond_5

    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz p3, :cond_0

    if-eqz p1, :cond_6

    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    .end local v1    # "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Landroid/animation/ValueAnimator;

    .end local p3    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    .restart local p3    # "anim":Landroid/animation/ValueAnimator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .local v3, "resID":I
    if-lez v3, :cond_3

    invoke-static {p0, p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    instance-of v4, v2, Landroid/view/animation/BaseInterpolator;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    :cond_2
    invoke-virtual {p3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return-object p3

    .end local v3    # "resID":I
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    :cond_5
    sget-object v4, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    goto :goto_0

    :cond_6
    sget-object v4, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    goto :goto_1
.end method

.method private static loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    if-eqz p1, :cond_2

    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v9, v11, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v5, 0x0

    .local v5, "keyframe":Landroid/animation/Keyframe;
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x3

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .local v1, "fraction":F
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .local v6, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v6, :cond_3

    const/4 v2, 0x1

    .local v2, "hasValue":Z
    :goto_1
    const/4 v9, 0x4

    if-ne p3, v9, :cond_0

    if-eqz v2, :cond_4

    iget v9, v6, Landroid/util/TypedValue;->type:I

    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 p3, 0x3

    :cond_0
    :goto_2
    if-eqz v2, :cond_5

    packed-switch p3, :pswitch_data_0

    .end local v5    # "keyframe":Landroid/animation/Keyframe;
    :goto_3
    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .local v7, "resID":I
    if-lez v7, :cond_1

    invoke-static {p0, p1, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v5, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "fraction":F
    .end local v2    # "hasValue":Z
    .end local v6    # "keyframeValue":Landroid/util/TypedValue;
    .end local v7    # "resID":I
    :cond_2
    sget-object v9, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .restart local v1    # "fraction":F
    .restart local v5    # "keyframe":Landroid/animation/Keyframe;
    .restart local v6    # "keyframeValue":Landroid/util/TypedValue;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "hasValue":Z
    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    goto :goto_2

    :pswitch_1
    const/4 v9, 0x0

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .local v8, "value":F
    invoke-static {v1, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    .end local v8    # "value":F
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :pswitch_2
    invoke-virtual {v0, v11, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .local v3, "intValue":I
    invoke-static {v1, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v5

    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    .end local v3    # "intValue":I
    .local v5, "keyframe":Landroid/animation/Keyframe;
    :cond_5
    if-nez p3, :cond_6

    invoke-static {v1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v5

    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    .local v5, "keyframe":Landroid/animation/Keyframe;
    :cond_6
    invoke-static {v1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v5

    .local v5, "keyframe":Landroid/animation/Keyframe;
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private static loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 22
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "propertyName"    # Ljava/lang/String;
    .param p4, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v19, 0x0

    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .local v15, "name":Ljava/lang/String;
    const-string v20, "keyframe"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x4

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    move-result p4

    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    move-result-object v11

    .local v11, "keyframe":Landroid/animation/Keyframe;
    if-eqz v11, :cond_3

    if-nez v13, :cond_2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v15    # "name":Ljava/lang/String;
    :cond_4
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "count":I
    if-lez v4, :cond_f

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    .local v7, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/Keyframe;

    .local v14, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v14}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    .local v5, "endFraction":F
    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v20, v5, v20

    if-gez v20, :cond_5

    const/16 v20, 0x0

    cmpg-float v20, v5, v20

    if-gez v20, :cond_8

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    :cond_5
    :goto_1
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v16

    .local v16, "startFraction":F
    const/16 v20, 0x0

    cmpl-float v20, v16, v20

    if-eqz v20, :cond_6

    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gez v20, :cond_9

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    :cond_6
    :goto_2
    new-array v12, v4, [Landroid/animation/Keyframe;

    .local v12, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v4, :cond_e

    aget-object v11, v12, v9

    .restart local v11    # "keyframe":Landroid/animation/Keyframe;
    invoke-virtual {v11}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_7

    if-nez v9, :cond_a

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v9    # "i":I
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v16    # "startFraction":F
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    invoke-static {v14, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .restart local v16    # "startFraction":F
    :cond_9
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v7, v0}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .restart local v9    # "i":I
    .restart local v11    # "keyframe":Landroid/animation/Keyframe;
    .restart local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    :cond_a
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_b

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_4

    :cond_b
    move/from16 v17, v9

    .local v17, "startIndex":I
    move v6, v9

    .local v6, "endIndex":I
    add-int/lit8 v10, v17, 0x1

    .local v10, "j":I
    :goto_5
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_c

    aget-object v20, v12, v10

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_d

    :cond_c
    add-int/lit8 v20, v6, 0x1

    aget-object v20, v12, v20

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    add-int/lit8 v21, v17, -0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Landroid/animation/Keyframe;->getFraction()F

    move-result v21

    sub-float v8, v20, v21

    .local v8, "gap":F
    move/from16 v0, v17

    invoke-static {v12, v8, v0, v6}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_4

    .end local v8    # "gap":F
    :cond_d
    move v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v6    # "endIndex":I
    .end local v10    # "j":I
    .end local v11    # "keyframe":Landroid/animation/Keyframe;
    .end local v17    # "startIndex":I
    :cond_e
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    const/16 v20, 0x3

    move/from16 v0, p4

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .end local v4    # "count":I
    .end local v5    # "endFraction":F
    .end local v7    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v9    # "i":I
    .end local v12    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v14    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v16    # "startFraction":F
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    :cond_f
    return-object v19
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v3

    .local v3, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/animation/StateListAnimator;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .local v10, "theme":Landroid/content/res/Resources$Theme;
    int-to-long v12, p1

    invoke-virtual {v3, v12, v13, v10}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/StateListAnimator;

    .local v2, "animator":Landroid/animation/StateListAnimator;
    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v7, 0x0

    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    invoke-static {p0, v7, v11}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v8, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    invoke-virtual {v2}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    .local v4, "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    if-eqz v4, :cond_1

    int-to-long v12, p1

    invoke-virtual {v3, v12, v13, v10, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    invoke-virtual {v4, v8, v10}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/animation/StateListAnimator;

    move-object v2, v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "constantState":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/animation/StateListAnimator;>;"
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v2

    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .local v9, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "ex":Ljava/io/IOException;
    .end local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v11

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v11

    :catch_1
    move-exception v6

    .local v6, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .restart local v9    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .local v7, "type":I
    const/4 v11, 0x3

    if-eq v7, v11, :cond_6

    const/4 v11, 0x1

    if-eq v7, v11, :cond_6

    const/4 v11, 0x2

    if-eq v7, v11, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "name":Ljava/lang/String;
    const-string v11, "propertyValuesHolder"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz p1, :cond_5

    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v11, v12, v13}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, "a":Landroid/content/res/TypedArray;
    :goto_1
    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "propertyName":Ljava/lang/String;
    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .local v8, "valueType":I
    move-object/from16 v0, p2

    invoke-static {p0, p1, v0, v5, v8}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .local v6, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v6, :cond_1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v1, v8, v11, v12, v5}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_3

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "pvh":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "valueType":I
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_5
    sget-object v11, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .restart local v1    # "a":Landroid/content/res/TypedArray;
    goto :goto_1

    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .local v10, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    new-array v10, v2, [Landroid/animation/PropertyValuesHolder;

    .local v10, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_7

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/PropertyValuesHolder;

    aput-object v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v10    # "valuesArray":[Landroid/animation/PropertyValuesHolder;
    :cond_7
    return-object v10
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .locals 9
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F

    .prologue
    const/4 v6, 0x1

    const/16 v7, 0x12c

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v0, v6

    .local v0, "duration":J
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    int-to-long v4, v6

    .local v4, "startDelay":J
    const/4 v6, 0x7

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .local v3, "valueType":I
    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-static {p1, v6, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v3

    :cond_0
    const-string v6, ""

    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-static {p1, v3, v7, v8, v6}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_1

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_3
    if-eqz p2, :cond_4

    if-nez v3, :cond_5

    const/4 v6, 0x1

    :goto_0
    invoke-static {p0, p2, v6, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V

    :cond_4
    return-void

    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .locals 8
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "fromString":Ljava/lang/String;
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "toString":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v2

    .local v2, "nodesFrom":[Landroid/util/PathParser$PathDataNode;
    invoke-static {v4}, Landroid/util/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v3

    .local v3, "nodesTo":[Landroid/util/PathParser$PathDataNode;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/util/PathParser;->canMorph([Landroid/util/PathParser$PathDataNode;[Landroid/util/PathParser$PathDataNode;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Can\'t morph from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v2}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    :cond_2
    :goto_0
    return-object v0

    .restart local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_3
    if-eqz v3, :cond_2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    new-instance v0, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    .end local v0    # "evaluator":Landroid/animation/TypeEvaluator;
    invoke-static {v3}, Landroid/util/PathParser;->deepCopyNodes([Landroid/util/PathParser$PathDataNode;)[Landroid/util/PathParser$PathDataNode;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>([Landroid/util/PathParser$PathDataNode;)V

    .local v0, "evaluator":Landroid/animation/TypeEvaluator;
    goto :goto_0
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZF)V
    .locals 16
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "pixelSize"    # F

    .prologue
    move-object/from16 v3, p0

    check-cast v3, Landroid/animation/ObjectAnimator;

    .local v3, "oa":Landroid/animation/ObjectAnimator;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "pathData":Ljava/lang/String;
    if-eqz v5, :cond_6

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "propertyXName":Ljava/lang/String;
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "propertyYName":Ljava/lang/String;
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    new-instance v13, Landroid/view/InflateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    invoke-static {v5}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v4

    .local v4, "path":Landroid/graphics/Path;
    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v1, v13, p3

    .local v1, "error":F
    invoke-static {v4, v1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v2

    .local v2, "keyframeSet":Landroid/animation/PathKeyframes;
    if-eqz p2, :cond_3

    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v10

    .local v10, "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    .local v12, "yKeyframes":Landroid/animation/Keyframes;
    :goto_0
    const/4 v9, 0x0

    .local v9, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v11, 0x0

    .local v11, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_1

    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .end local v9    # "x":Landroid/animation/PropertyValuesHolder;
    :cond_1
    if-eqz v8, :cond_2

    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .end local v11    # "y":Landroid/animation/PropertyValuesHolder;
    :cond_2
    if-nez v9, :cond_4

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :goto_1
    return-void

    .restart local v1    # "error":F
    .restart local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .restart local v4    # "path":Landroid/graphics/Path;
    .restart local v7    # "propertyXName":Ljava/lang/String;
    .restart local v8    # "propertyYName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v10

    .restart local v10    # "xKeyframes":Landroid/animation/Keyframes;
    invoke-virtual {v2}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    .restart local v12    # "yKeyframes":Landroid/animation/Keyframes;
    goto :goto_0

    :cond_4
    if-nez v11, :cond_5

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    :cond_5
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_1

    .end local v1    # "error":F
    .end local v2    # "keyframeSet":Landroid/animation/PathKeyframes;
    .end local v4    # "path":Landroid/graphics/Path;
    .end local v7    # "propertyXName":Ljava/lang/String;
    .end local v8    # "propertyYName":Ljava/lang/String;
    .end local v10    # "xKeyframes":Landroid/animation/Keyframes;
    .end local v12    # "yKeyframes":Landroid/animation/Keyframes;
    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "propertyName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .locals 8
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "getFloats"    # Z
    .param p3, "hasFrom"    # Z
    .param p4, "fromType"    # I
    .param p5, "hasTo"    # Z
    .param p6, "toType"    # I

    .prologue
    const/4 v2, 0x5

    .local v2, "valueFromIndex":I
    const/4 v5, 0x6

    .local v5, "valueToIndex":I
    if-eqz p2, :cond_6

    if-eqz p3, :cond_4

    const/4 v6, 0x5

    if-ne p4, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .local v0, "valueFrom":F
    :goto_0
    if-eqz p5, :cond_3

    const/4 v6, 0x5

    if-ne p6, v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .local v3, "valueTo":F
    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v7, 0x1

    aput v3, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .end local v0    # "valueFrom":F
    .end local v3    # "valueTo":F
    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .restart local v0    # "valueFrom":F
    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .restart local v3    # "valueTo":F
    goto :goto_1

    .end local v3    # "valueTo":F
    :cond_3
    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .end local v0    # "valueFrom":F
    :cond_4
    const/4 v6, 0x5

    if-ne p6, v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .restart local v3    # "valueTo":F
    :goto_3
    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_2

    .end local v3    # "valueTo":F
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .restart local v3    # "valueTo":F
    goto :goto_3

    .end local v3    # "valueTo":F
    :cond_6
    if-eqz p3, :cond_c

    const/4 v6, 0x5

    if-ne p4, v6, :cond_7

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v1, v6

    .local v1, "valueFrom":I
    :goto_4
    if-eqz p5, :cond_b

    const/4 v6, 0x5

    if-ne p6, v6, :cond_9

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v4, v6

    .local v4, "valueTo":I
    :goto_5
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_2

    .end local v1    # "valueFrom":I
    .end local v4    # "valueTo":I
    :cond_7
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .restart local v1    # "valueFrom":I
    goto :goto_4

    .end local v1    # "valueFrom":I
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .restart local v1    # "valueFrom":I
    goto :goto_4

    :cond_9
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .restart local v4    # "valueTo":I
    goto :goto_5

    .end local v4    # "valueTo":I
    :cond_a
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .restart local v4    # "valueTo":I
    goto :goto_5

    .end local v4    # "valueTo":I
    :cond_b
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_2

    .end local v1    # "valueFrom":I
    :cond_c
    if-eqz p5, :cond_0

    const/4 v6, 0x5

    if-ne p6, v6, :cond_d

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v4, v6

    .restart local v4    # "valueTo":I
    :goto_6
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_2

    .end local v4    # "valueTo":I
    :cond_d
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .restart local v4    # "valueTo":I
    goto :goto_6

    .end local v4    # "valueTo":I
    :cond_e
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .restart local v4    # "valueTo":I
    goto :goto_6
.end method
