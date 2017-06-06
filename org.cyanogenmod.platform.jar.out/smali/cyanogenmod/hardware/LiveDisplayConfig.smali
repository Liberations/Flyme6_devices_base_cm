.class public Lcyanogenmod/hardware/LiveDisplayConfig;
.super Ljava/lang/Object;
.source "LiveDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/LiveDisplayConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/hardware/LiveDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllModes:Ljava/util/BitSet;

.field private final mCapabilities:Ljava/util/BitSet;

.field private final mColorBalanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorTemperatureRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContrastRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultAutoContrast:Z

.field private final mDefaultAutoOutdoorMode:Z

.field private final mDefaultCABC:Z

.field private final mDefaultColorEnhancement:Z

.field private final mDefaultDayTemperature:I

.field private final mDefaultMode:I

.field private final mDefaultNightTemperature:I

.field private final mHueRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntensityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaturationRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaturationThresholdRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/hardware/LiveDisplayConfig$1;

    invoke-direct {v0}, Lcyanogenmod/hardware/LiveDisplayConfig$1;-><init>()V

    sput-object v0, Lcyanogenmod/hardware/LiveDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 21
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v18, Ljava/util/BitSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    invoke-static/range {p1 .. p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v16

    .local v16, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual/range {v16 .. v16}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v17

    .local v17, "parcelableVersion":I
    const-wide/16 v2, 0x0

    .local v2, "capabilities":J
    const/4 v9, 0x0

    .local v9, "defaultMode":I
    const/4 v8, -0x1

    .local v8, "defaultDayTemperature":I
    const/4 v10, -0x1

    .local v10, "defaultNightTemperature":I
    const/4 v4, 0x0

    .local v4, "defaultAutoContrast":Z
    const/4 v5, 0x0

    .local v5, "defaultAutoOutdoorMode":Z
    const/4 v6, 0x0

    .local v6, "defaultCABC":Z
    const/4 v7, 0x0

    .local v7, "defaultColorEnhancement":Z
    const/4 v14, 0x0

    .local v14, "minColorTemperature":I
    const/4 v12, 0x0

    .local v12, "maxColorTemperature":I
    const/4 v13, 0x0

    .local v13, "minColorBalance":I
    const/4 v11, 0x0

    .local v11, "maxColorBalance":I
    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v15, v0, [F

    .local v15, "paRanges":[F
    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->readFloatArray([F)V

    :cond_0
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v2, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/util/BitSet;->set(II)V

    move-object/from16 v0, p0

    iput v9, v0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    move-object/from16 v0, p0

    iput v8, v0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    move-object/from16 v0, p0

    iput v10, v0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    const/16 v18, 0x0

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    const/16 v18, 0x2

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x3

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    const/16 v18, 0x4

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x5

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    const/16 v18, 0x6

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x7

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    const/16 v18, 0x8

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x9

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    invoke-virtual/range {v16 .. v16}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/hardware/LiveDisplayConfig;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/hardware/LiveDisplayConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/BitSet;IIIZZZZLandroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 4
    .param p1, "capabilities"    # Ljava/util/BitSet;
    .param p2, "defaultMode"    # I
    .param p3, "defaultDayTemperature"    # I
    .param p4, "defaultNightTemperature"    # I
    .param p5, "defaultAutoOutdoorMode"    # Z
    .param p6, "defaultAutoContrast"    # Z
    .param p7, "defaultCABC"    # Z
    .param p8, "defaultColorEnhancement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            "IIIZZZZ",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p9, "colorTemperatureRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p10, "colorBalanceRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p11, "hueRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .local p12, "saturationRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .local p13, "intensityRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .local p14, "contrastRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .local p15, "saturationThresholdRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(II)V

    iput p2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    iput p3, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    iput p4, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    iput-boolean p6, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    iput-boolean p5, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    iput-boolean p7, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    iput-boolean p8, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    iput-object p9, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    iput-object p10, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    iput-object p11, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    return-object v0
.end method

.method public getColorTemperatureRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    return-object v0
.end method

.method public getContrastRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    return-object v0
.end method

.method public getDefaultAutoContrast()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    return v0
.end method

.method public getDefaultAutoOutdoorMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    return v0
.end method

.method public getDefaultCABC()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    return v0
.end method

.method public getDefaultColorEnhancement()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    return v0
.end method

.method public getDefaultDayTemperature()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    return v0
.end method

.method public getDefaultMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    return v0
.end method

.method public getDefaultNightTemperature()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    return v0
.end method

.method public getHueRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    return-object v0
.end method

.method public getIntensityRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    return-object v0
.end method

.method public getPictureAdjustmentRanges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/util/Range;

    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSaturationRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSaturationThresholdRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    return-object v0
.end method

.method public hasFeature(I)Z
    .locals 2
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x0

    if-ltz p1, :cond_1

    const/4 v1, 0x4

    if-gt p1, v1, :cond_1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    const/16 v1, 0x11

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public hasModeSupport()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcyanogenmod/hardware/LiveDisplayConfig;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " defaultMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " defaultDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " defaultNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " defaultAutoOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " defaultAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " defaultCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " defaultColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " colorTemperatureRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " colorBalanceRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " hueRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " saturationRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " intensityRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " contrastRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " saturationThresholdRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v1

    .local v1, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v0

    .local v0, "caps":[J
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-wide v2, v0, v5

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0xa

    new-array v3, v2, [F

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v5

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v4

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x2

    aput v2, v3, v4

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x3

    aput v2, v3, v4

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x4

    aput v2, v3, v4

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x5

    aput v2, v3, v4

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x6

    aput v2, v3, v4

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x7

    aput v2, v3, v4

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/16 v4, 0x8

    aput v2, v3, v4

    iget-object v2, p0, Lcyanogenmod/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/16 v4, 0x9

    aput v2, v3, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    invoke-virtual {v1}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    :cond_1
    move v2, v5

    goto/16 :goto_1

    :cond_2
    move v2, v5

    goto/16 :goto_2

    :cond_3
    move v2, v5

    goto/16 :goto_3

    :cond_4
    move v2, v5

    goto/16 :goto_4
.end method
