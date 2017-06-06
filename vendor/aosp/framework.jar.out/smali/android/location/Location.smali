.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mDistance:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mHasAccuracy:Z

.field private mHasAltitude:Z

.field private mHasBearing:Z

.field private mHasSpeed:Z

.field private mInitialBearing:F

.field private mIsFromMockProvider:Z

.field private mLat1:D

.field private mLat2:D

.field private mLatitude:D

.field private mLon1:D

.field private mLon2:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private final mResults:[F

.field private mSpeed:F

.field private mTime:J


# direct methods
.method static synthetic -set0(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    return p1
.end method

.method static synthetic -set1(Landroid/location/Location;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic -set10(Landroid/location/Location;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic -set11(Landroid/location/Location;D)D
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic -set12(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic -set13(Landroid/location/Location;J)J
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method static synthetic -set3(Landroid/location/Location;J)J
    .locals 1

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set5(Landroid/location/Location;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/location/Location;->mHasAccuracy:Z

    return p1
.end method

.method static synthetic -set6(Landroid/location/Location;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/location/Location;->mHasAltitude:Z

    return p1
.end method

.method static synthetic -set7(Landroid/location/Location;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/location/Location;->mHasBearing:Z

    return p1
.end method

.method static synthetic -set8(Landroid/location/Location;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/location/Location;->mHasSpeed:Z

    return p1
.end method

.method static synthetic -set9(Landroid/location/Location;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 8
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iput-boolean v4, p0, Landroid/location/Location;->mHasAltitude:Z

    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    iput-boolean v4, p0, Landroid/location/Location;->mHasSpeed:Z

    iput v1, p0, Landroid/location/Location;->mSpeed:F

    iput-boolean v4, p0, Landroid/location/Location;->mHasBearing:Z

    iput v1, p0, Landroid/location/Location;->mBearing:F

    iput-boolean v4, p0, Landroid/location/Location;->mHasAccuracy:Z

    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iput-boolean v4, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    iput v1, p0, Landroid/location/Location;->mDistance:F

    iput v1, p0, Landroid/location/Location;->mInitialBearing:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iput-boolean v4, p0, Landroid/location/Location;->mHasAltitude:Z

    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    iput-boolean v4, p0, Landroid/location/Location;->mHasSpeed:Z

    iput v1, p0, Landroid/location/Location;->mSpeed:F

    iput-boolean v4, p0, Landroid/location/Location;->mHasBearing:Z

    iput v1, p0, Landroid/location/Location;->mBearing:F

    iput-boolean v4, p0, Landroid/location/Location;->mHasAccuracy:Z

    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iput-boolean v4, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    iput v1, p0, Landroid/location/Location;->mDistance:F

    iput v1, p0, Landroid/location/Location;->mInitialBearing:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method private static computeDistanceAndBearing(DDDD[F)V
    .locals 82
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "results"    # [F

    .prologue
    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v70

    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p4, p4, v70

    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p2, p2, v70

    const-wide v70, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p6, p6, v70

    const-wide v70, 0x40d4e22be425af00L    # 21384.685800000094

    const-wide v72, 0x415854a640000000L    # 6378137.0

    div-double v40, v70, v72

    .local v40, "f":D
    const-wide v70, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    const-wide v72, 0x42c260252eea6b87L    # 4.0408299984087055E13

    sub-double v70, v70, v72

    const-wide v72, 0x42c260252eea6b87L    # 4.0408299984087055E13

    div-double v16, v70, v72

    .local v16, "aSqMinusBSqOverBSq":D
    sub-double v10, p6, p2

    .local v10, "L":D
    const-wide/16 v4, 0x0

    .local v4, "A":D
    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    sub-double v70, v70, v40

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v72

    mul-double v70, v70, v72

    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    .local v12, "U1":D
    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    sub-double v70, v70, v40

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v72

    mul-double v70, v70, v72

    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    .local v14, "U2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .local v28, "cosU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    .local v32, "cosU2":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v58

    .local v58, "sinU1":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v62

    .local v62, "sinU2":D
    mul-double v30, v28, v32

    .local v30, "cosU1cosU2":D
    mul-double v60, v58, v62

    .local v60, "sinU1sinU2":D
    const-wide/16 v48, 0x0

    .local v48, "sigma":D
    const-wide/16 v36, 0x0

    .local v36, "deltaSigma":D
    const-wide/16 v26, 0x0

    .local v26, "cosSqAlpha":D
    const-wide/16 v18, 0x0

    .local v18, "cos2SM":D
    const-wide/16 v24, 0x0

    .local v24, "cosSigma":D
    const-wide/16 v54, 0x0

    .local v54, "sinSigma":D
    const-wide/16 v22, 0x0

    .local v22, "cosLambda":D
    const-wide/16 v52, 0x0

    .local v52, "sinLambda":D
    move-wide/from16 v44, v10

    .local v44, "lambda":D
    const/16 v43, 0x0

    .local v43, "iter":I
    :goto_0
    const/16 v70, 0x14

    move/from16 v0, v43

    move/from16 v1, v70

    if-ge v0, v1, :cond_0

    move-wide/from16 v46, v44

    .local v46, "lambdaOrig":D
    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sin(D)D

    move-result-wide v52

    mul-double v64, v32, v52

    .local v64, "t1":D
    mul-double v70, v28, v62

    mul-double v72, v58, v32

    mul-double v72, v72, v22

    sub-double v66, v70, v72

    .local v66, "t2":D
    mul-double v70, v64, v64

    mul-double v72, v66, v66

    add-double v56, v70, v72

    .local v56, "sinSqSigma":D
    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v54

    mul-double v70, v30, v22

    add-double v24, v60, v70

    move-wide/from16 v0, v54

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v48

    const-wide/16 v70, 0x0

    cmpl-double v70, v54, v70

    if-nez v70, :cond_2

    const-wide/16 v50, 0x0

    .local v50, "sinAlpha":D
    :goto_1
    mul-double v70, v50, v50

    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    sub-double v26, v72, v70

    const-wide/16 v70, 0x0

    cmpl-double v70, v26, v70

    if-nez v70, :cond_3

    const-wide/16 v18, 0x0

    :goto_2
    mul-double v68, v26, v16

    .local v68, "uSquared":D
    const-wide/high16 v70, 0x40d0000000000000L    # 16384.0

    div-double v70, v68, v70

    const-wide v72, 0x4065e00000000000L    # 175.0

    mul-double v72, v72, v68

    const-wide/high16 v74, 0x4074000000000000L    # 320.0

    sub-double v72, v74, v72

    mul-double v72, v72, v68

    const-wide/high16 v74, -0x3f78000000000000L    # -768.0

    add-double v72, v72, v74

    mul-double v72, v72, v68

    const-wide/high16 v74, 0x40b0000000000000L    # 4096.0

    add-double v72, v72, v74

    mul-double v70, v70, v72

    const-wide/high16 v72, 0x3ff0000000000000L    # 1.0

    add-double v4, v72, v70

    const-wide/high16 v70, 0x4090000000000000L    # 1024.0

    div-double v70, v68, v70

    const-wide v72, 0x4047800000000000L    # 47.0

    mul-double v72, v72, v68

    const-wide v74, 0x4052800000000000L    # 74.0

    sub-double v72, v74, v72

    mul-double v72, v72, v68

    const-wide/high16 v74, -0x3fa0000000000000L    # -128.0

    add-double v72, v72, v74

    mul-double v72, v72, v68

    const-wide/high16 v74, 0x4070000000000000L    # 256.0

    add-double v72, v72, v74

    mul-double v6, v70, v72

    .local v6, "B":D
    const-wide/high16 v70, 0x4030000000000000L    # 16.0

    div-double v70, v40, v70

    mul-double v70, v70, v26

    const-wide/high16 v72, 0x4008000000000000L    # 3.0

    mul-double v72, v72, v26

    const-wide/high16 v74, 0x4010000000000000L    # 4.0

    sub-double v72, v74, v72

    mul-double v72, v72, v40

    const-wide/high16 v74, 0x4010000000000000L    # 4.0

    add-double v72, v72, v74

    mul-double v8, v70, v72

    .local v8, "C":D
    mul-double v20, v18, v18

    .local v20, "cos2SMSq":D
    mul-double v70, v6, v54

    const-wide/high16 v72, 0x4010000000000000L    # 4.0

    div-double v72, v6, v72

    const-wide/high16 v74, 0x4000000000000000L    # 2.0

    mul-double v74, v74, v20

    const-wide/high16 v76, -0x4010000000000000L    # -1.0

    add-double v74, v74, v76

    mul-double v74, v74, v24

    const-wide/high16 v76, 0x4018000000000000L    # 6.0

    div-double v76, v6, v76

    mul-double v76, v76, v18

    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    mul-double v78, v78, v54

    mul-double v78, v78, v54

    const-wide/high16 v80, -0x3ff8000000000000L    # -3.0

    add-double v78, v78, v80

    mul-double v76, v76, v78

    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    mul-double v78, v78, v20

    const-wide/high16 v80, -0x3ff8000000000000L    # -3.0

    add-double v78, v78, v80

    mul-double v76, v76, v78

    sub-double v74, v74, v76

    mul-double v72, v72, v74

    add-double v72, v72, v18

    mul-double v36, v70, v72

    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    sub-double v70, v70, v8

    mul-double v70, v70, v40

    mul-double v70, v70, v50

    mul-double v72, v8, v54

    mul-double v74, v8, v24

    const-wide/high16 v76, 0x4000000000000000L    # 2.0

    mul-double v76, v76, v18

    mul-double v76, v76, v18

    const-wide/high16 v78, -0x4010000000000000L    # -1.0

    add-double v76, v76, v78

    mul-double v74, v74, v76

    add-double v74, v74, v18

    mul-double v72, v72, v74

    add-double v72, v72, v48

    mul-double v70, v70, v72

    add-double v44, v10, v70

    sub-double v70, v44, v46

    div-double v34, v70, v44

    .local v34, "delta":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v70

    const-wide v72, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v70, v70, v72

    if-gez v70, :cond_4

    .end local v6    # "B":D
    .end local v8    # "C":D
    .end local v20    # "cos2SMSq":D
    .end local v34    # "delta":D
    .end local v46    # "lambdaOrig":D
    .end local v50    # "sinAlpha":D
    .end local v56    # "sinSqSigma":D
    .end local v64    # "t1":D
    .end local v66    # "t2":D
    .end local v68    # "uSquared":D
    :cond_0
    const-wide v70, 0x41583fc4141bda51L    # 6356752.3142

    mul-double v70, v70, v4

    sub-double v72, v48, v36

    mul-double v70, v70, v72

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v38, v0

    .local v38, "distance":F
    const/16 v70, 0x0

    aput v38, p8, v70

    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v70

    move/from16 v1, v71

    if-le v0, v1, :cond_1

    mul-double v70, v32, v52

    mul-double v72, v28, v62

    mul-double v74, v58, v32

    mul-double v74, v74, v22

    sub-double v72, v72, v74

    invoke-static/range {v70 .. v73}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v70

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v42, v0

    .local v42, "initialBearing":F
    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v70, v0

    const-wide v72, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v70, v70, v72

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v42, v0

    const/16 v70, 0x1

    aput v42, p8, v70

    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v70, v0

    const/16 v71, 0x2

    move/from16 v0, v70

    move/from16 v1, v71

    if-le v0, v1, :cond_1

    mul-double v70, v28, v52

    move-wide/from16 v0, v58

    neg-double v0, v0

    move-wide/from16 v72, v0

    mul-double v72, v72, v32

    mul-double v74, v28, v62

    mul-double v74, v74, v22

    add-double v72, v72, v74

    invoke-static/range {v70 .. v73}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v70

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v39, v0

    .local v39, "finalBearing":F
    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v70, v0

    const-wide v72, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v70, v70, v72

    move-wide/from16 v0, v70

    double-to-float v0, v0

    move/from16 v39, v0

    const/16 v70, 0x2

    aput v39, p8, v70

    .end local v39    # "finalBearing":F
    .end local v42    # "initialBearing":F
    :cond_1
    return-void

    .end local v38    # "distance":F
    .restart local v46    # "lambdaOrig":D
    .restart local v56    # "sinSqSigma":D
    .restart local v64    # "t1":D
    .restart local v66    # "t2":D
    :cond_2
    mul-double v70, v30, v52

    div-double v50, v70, v54

    .restart local v50    # "sinAlpha":D
    goto/16 :goto_1

    :cond_3
    const-wide/high16 v70, 0x4000000000000000L    # 2.0

    mul-double v70, v70, v60

    div-double v70, v70, v26

    sub-double v18, v24, v70

    goto/16 :goto_2

    .restart local v6    # "B":D
    .restart local v8    # "C":D
    .restart local v20    # "cos2SMSq":D
    .restart local v34    # "delta":D
    .restart local v68    # "uSquared":D
    :cond_4
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_0
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 22
    .param p0, "coordinate"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    new-instance v15, Ljava/lang/NullPointerException;

    const-string v18, "coordinate"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    const/4 v8, 0x0

    .local v8, "negative":Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v8, 0x1

    :cond_1
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v15, ":"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v13, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v14

    .local v14, "tokens":I
    const/4 v15, 0x1

    if-ge v14, v15, :cond_2

    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_2
    :try_start_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .local v3, "degrees":Ljava/lang/String;
    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .local v16, "val":D
    if-eqz v8, :cond_3

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .end local v16    # "val":D
    :cond_3
    return-wide v16

    :cond_4
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .local v5, "minutes":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "deg":I
    const-wide/16 v10, 0x0

    .local v10, "sec":D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-double v6, v15

    .local v6, "min":D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .local v12, "seconds":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .end local v12    # "seconds":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_9

    const/16 v15, 0xb4

    if-ne v2, v15, :cond_9

    const-wide/16 v18, 0x0

    cmpl-double v15, v6, v18

    if-nez v15, :cond_9

    const-wide/16 v18, 0x0

    cmpl-double v15, v10, v18

    if-nez v15, :cond_8

    const/4 v4, 0x1

    .local v4, "isNegative180":Z
    :goto_1
    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpg-double v15, v18, v20

    if-ltz v15, :cond_a

    const/16 v15, 0xb3

    if-le v2, v15, :cond_5

    if-eqz v4, :cond_a

    :cond_5
    const-wide/16 v18, 0x0

    cmpg-double v15, v6, v18

    if-ltz v15, :cond_6

    const-wide v18, 0x404d800000000000L    # 59.0

    cmpl-double v15, v6, v18

    if-lez v15, :cond_b

    :cond_6
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "deg":I
    .end local v3    # "degrees":Ljava/lang/String;
    .end local v4    # "isNegative180":Z
    .end local v5    # "minutes":Ljava/lang/String;
    .end local v6    # "min":D
    .end local v10    # "sec":D
    :catch_0
    move-exception v9

    .local v9, "nfe":Ljava/lang/NumberFormatException;
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "deg":I
    .restart local v3    # "degrees":Ljava/lang/String;
    .restart local v5    # "minutes":Ljava/lang/String;
    .restart local v10    # "sec":D
    :cond_7
    :try_start_1
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .restart local v6    # "min":D
    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "isNegative180":Z
    goto :goto_1

    .end local v4    # "isNegative180":Z
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "isNegative180":Z
    goto :goto_1

    :cond_a
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_b
    const-wide/16 v18, 0x0

    cmpg-double v15, v10, v18

    if-ltz v15, :cond_c

    const-wide v18, 0x404d800000000000L    # 59.0

    cmpl-double v15, v10, v18

    if-lez v15, :cond_d

    :cond_c
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v20, v20, v6

    add-double v18, v18, v20

    add-double v16, v18, v10

    .restart local v16    # "val":D
    const-wide v18, 0x40ac200000000000L    # 3600.0

    div-double v16, v16, v18

    if-eqz v8, :cond_e

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .end local v16    # "val":D
    :cond_e
    return-wide v16
.end method

.method public static convert(DI)Ljava/lang/String;
    .locals 12
    .param p0, "coordinate"    # D
    .param p2, "outputType"    # I

    .prologue
    const/16 v10, 0x3a

    const/4 v7, 0x1

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    const/4 v6, 0x2

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, p0, v4

    if-lez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_2

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-double p0, p0

    :cond_3
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v1, "df":Ljava/text/DecimalFormat;
    if-eq p2, v7, :cond_4

    if-ne p2, v6, :cond_5

    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .local v0, "degrees":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v4, v0

    sub-double/2addr p0, v4

    mul-double/2addr p0, v8

    if-ne p2, v6, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .local v2, "minutes":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v4, v2

    sub-double/2addr p0, v4

    mul-double/2addr p0, v8

    .end local v0    # "degrees":I
    .end local v2    # "minutes":I
    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 2
    .param p0, "startLatitude"    # D
    .param p2, "startLongitude"    # D
    .param p4, "endLatitude"    # D
    .param p6, "endLongitude"    # D
    .param p8, "results"    # [F

    .prologue
    if-eqz p8, :cond_0

    array-length v0, p8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "results is null or has length < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p0 .. p8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 10
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    :cond_1
    iget v0, p0, Landroid/location/Location;->mInitialBearing:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return v0

    :cond_2
    :try_start_1
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 10
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    :cond_1
    iget v0, p0, Landroid/location/Location;->mDistance:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return v0

    :cond_2
    :try_start_1
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .local v0, "value":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/location/Location;

    .end local v0    # "value":Landroid/os/Parcelable;
    return-object v0

    :cond_0
    return-object v2
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return v0
.end method

.method public isComplete()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isFromMockProvider()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    return v0
.end method

.method public makeComplete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "?"

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return-void
.end method

.method public removeAltitude()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return-void
.end method

.method public removeBearing()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return-void
.end method

.method public removeSpeed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-object v4, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    iput v1, p0, Landroid/location/Location;->mSpeed:F

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    iput v1, p0, Landroid/location/Location;->mBearing:F

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    iput-object v4, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iput-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 4
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-wide v2, p1, Landroid/location/Location;->mTime:J

    iput-wide v2, p0, Landroid/location/Location;->mTime:J

    iget-wide v2, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iget-wide v2, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-boolean v1, p1, Landroid/location/Location;->mHasAltitude:Z

    iput-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    iget-wide v2, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    iget-boolean v1, p1, Landroid/location/Location;->mHasSpeed:Z

    iput-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    iget v1, p1, Landroid/location/Location;->mSpeed:F

    iput v1, p0, Landroid/location/Location;->mSpeed:F

    iget-boolean v1, p1, Landroid/location/Location;->mHasBearing:Z

    iput-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    iget v1, p1, Landroid/location/Location;->mBearing:F

    iput v1, p0, Landroid/location/Location;->mBearing:F

    iget-boolean v1, p1, Landroid/location/Location;->mHasAccuracy:Z

    iput-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    iget v1, p1, Landroid/location/Location;->mAccuracy:F

    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iget-boolean v0, p1, Landroid/location/Location;->mIsFromMockProvider:Z

    iput-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAccuracy(F)V
    .locals 1
    .param p1, "accuracy"    # F

    .prologue
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .param p1, "bearing"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    sub-float/2addr p1, v1

    goto :goto_1

    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setIsFromMockProvider(Z)V
    .locals 0
    .param p1, "isFromMockProvider"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " %.6f,%.6f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v1, :cond_6

    const-string v1, " acc=%.0f"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mAccuracy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    const-string v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_7

    const-string v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v1, :cond_1

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v1, :cond_2

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v1, :cond_3

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    if-eqz v1, :cond_4

    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6
    const-string v1, " acc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method
