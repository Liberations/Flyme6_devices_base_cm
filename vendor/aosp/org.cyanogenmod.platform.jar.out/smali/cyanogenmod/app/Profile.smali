.class public final Lcyanogenmod/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/Profile$LockMode;,
        Lcyanogenmod/app/Profile$ExpandedDesktopMode;,
        Lcyanogenmod/app/Profile$DozeMode;,
        Lcyanogenmod/app/Profile$NotificationLightMode;,
        Lcyanogenmod/app/Profile$TriggerType;,
        Lcyanogenmod/app/Profile$TriggerState;,
        Lcyanogenmod/app/Profile$Type;,
        Lcyanogenmod/app/Profile$ProfileTrigger;,
        Lcyanogenmod/app/Profile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Profile"


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

.field private mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

.field private mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

.field private mDirty:Z

.field private mDozeMode:I

.field private mExpandedDesktopMode:I

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mNotificationLightMode:I

.field private mProfileType:I

.field private mRingMode:Lcyanogenmod/profiles/RingModeSettings;

.field private mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

.field private mSecondaryUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarIndicator:Z

.field private mTriggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcyanogenmod/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private mUuid:Ljava/util/UUID;

.field private networkConnectionSubIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcyanogenmod/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcyanogenmod/profiles/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/app/Profile$1;

    invoke-direct {v0}, Lcyanogenmod/app/Profile$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    iput-boolean v1, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    new-instance v0, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    new-instance v0, Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    new-instance v0, Lcyanogenmod/profiles/BrightnessSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/BrightnessSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    new-instance v0, Lcyanogenmod/profiles/LockSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/LockSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    iput v1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    iput v1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    iput v1, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    invoke-virtual {p0, p1}, Lcyanogenmod/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/Profile;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/UUID;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameResId"    # I
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    iput-boolean v1, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    new-instance v0, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/RingModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    new-instance v0, Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    new-instance v0, Lcyanogenmod/profiles/BrightnessSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/BrightnessSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    new-instance v0, Lcyanogenmod/profiles/LockSettings;

    invoke-direct {v0}, Lcyanogenmod/profiles/LockSettings;-><init>()V

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    iput v1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    iput v1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    iput v1, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    iput-object p1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    iput p2, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    iput-object p3, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    iput v1, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    iput-boolean v1, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/Profile;
    .locals 23
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v20, "nameres"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "value":Ljava/lang/String;
    const/4 v15, -0x1

    .local v15, "profileNameResId":I
    const/4 v14, 0x0

    .local v14, "profileName":Ljava/lang/String;
    if-eqz v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const-string v21, "string"

    const-string v22, "cyanogenmod.platform"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .end local v14    # "profileName":Ljava/lang/String;
    :cond_0
    if-nez v14, :cond_1

    const-string v20, "name"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    .local v16, "profileUuid":Ljava/util/UUID;
    :try_start_0
    const-string v20, "uuid"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_0
    new-instance v13, Lcyanogenmod/app/Profile;

    invoke-direct/range {v13 .. v16}, Lcyanogenmod/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .local v13, "profile":Lcyanogenmod/app/Profile;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "event":I
    :goto_1
    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v9, v0, :cond_13

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v9, v0, :cond_12

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .local v11, "name":Ljava/lang/String;
    const-string v20, "uuids"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-static/range {p0 .. p1}, Lcyanogenmod/app/Profile;->readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setSecondaryUuids(Ljava/util/List;)V

    :cond_2
    const-string v20, "statusbar"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    const-string v21, "yes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setStatusBarIndicator(Z)V

    :cond_3
    const-string v20, "profiletype"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    const-string v21, "toggle"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setProfileType(I)V

    :cond_4
    const-string v20, "ringModeDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/RingModeSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v18

    .local v18, "smd":Lcyanogenmod/profiles/RingModeSettings;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setRingMode(Lcyanogenmod/profiles/RingModeSettings;)V

    .end local v18    # "smd":Lcyanogenmod/profiles/RingModeSettings;
    :cond_5
    const-string v20, "airplaneModeDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/AirplaneModeSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/AirplaneModeSettings;

    move-result-object v4

    .local v4, "amd":Lcyanogenmod/profiles/AirplaneModeSettings;
    invoke-virtual {v13, v4}, Lcyanogenmod/app/Profile;->setAirplaneMode(Lcyanogenmod/profiles/AirplaneModeSettings;)V

    .end local v4    # "amd":Lcyanogenmod/profiles/AirplaneModeSettings;
    :cond_6
    const-string v20, "brightnessDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/BrightnessSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/BrightnessSettings;

    move-result-object v5

    .local v5, "bd":Lcyanogenmod/profiles/BrightnessSettings;
    invoke-virtual {v13, v5}, Lcyanogenmod/app/Profile;->setBrightness(Lcyanogenmod/profiles/BrightnessSettings;)V

    .end local v5    # "bd":Lcyanogenmod/profiles/BrightnessSettings;
    :cond_7
    const-string v20, "screen-lock-mode"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    new-instance v10, Lcyanogenmod/profiles/LockSettings;

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v10, v0}, Lcyanogenmod/profiles/LockSettings;-><init>(I)V

    .local v10, "lockMode":Lcyanogenmod/profiles/LockSettings;
    invoke-virtual {v13, v10}, Lcyanogenmod/app/Profile;->setScreenLockMode(Lcyanogenmod/profiles/LockSettings;)V

    .end local v10    # "lockMode":Lcyanogenmod/profiles/LockSettings;
    :cond_8
    const-string v20, "expanded-desktop-mode"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setExpandedDesktopMode(I)V

    :cond_9
    const-string v20, "doze-mode"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setDozeMode(I)V

    :cond_a
    const-string v20, "notification-light-mode"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setNotificationLightMode(I)V

    :cond_b
    const-string v20, "profileGroup"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-static/range {p0 .. p1}, Lcyanogenmod/app/ProfileGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v12

    .local v12, "pg":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v13, v12}, Lcyanogenmod/app/Profile;->addProfileGroup(Lcyanogenmod/app/ProfileGroup;)V

    .end local v12    # "pg":Lcyanogenmod/app/ProfileGroup;
    :cond_c
    const-string v20, "streamDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/StreamSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/StreamSettings;

    move-result-object v17

    .local v17, "sd":Lcyanogenmod/profiles/StreamSettings;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    .end local v17    # "sd":Lcyanogenmod/profiles/StreamSettings;
    :cond_d
    const-string v20, "connectionDescriptor"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-static/range {p0 .. p1}, Lcyanogenmod/profiles/ConnectionSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v6

    .local v6, "cs":Lcyanogenmod/profiles/ConnectionSettings;
    sget v20, Lcyanogenmod/os/Build$CM_VERSION;->SDK_INT:I

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_11

    invoke-virtual {v6}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    iget-object v0, v13, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_e
    :goto_3
    const-string v20, "triggers"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcyanogenmod/app/Profile;->readTriggersFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Lcyanogenmod/app/Profile;)V

    .end local v11    # "name":Ljava/lang/String;
    :cond_f
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto/16 :goto_1

    .end local v9    # "event":I
    .end local v13    # "profile":Lcyanogenmod/app/Profile;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v20, "Profile"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UUID not recognized for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".  New UUID generated: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v20, "Profile"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Null Pointer - UUID not found for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".  New UUID generated: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "event":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v13    # "profile":Lcyanogenmod/app/Profile;
    :cond_10
    const/16 v20, 0x1

    goto/16 :goto_2

    .restart local v6    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_11
    iget-object v0, v13, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .end local v6    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    .end local v11    # "name":Ljava/lang/String;
    :cond_12
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_f

    new-instance v20, Ljava/io/IOException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Premature end of file while parsing profle:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_13
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v13, Lcyanogenmod/app/Profile;->mDirty:Z

    return-object v13
.end method

.method private static readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/UUID;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "event":I
    :goto_0
    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "uuids"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    const-string v5, "uuid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Profile"

    const-string v6, "UUID not recognized"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "Profile"

    const-string v6, "Null Pointer - invalid UUID"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static readTriggersFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Lcyanogenmod/app/Profile;)V
    .locals 4
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcyanogenmod/app/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "event":I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "triggers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-static {p0, p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/Profile$ProfileTrigger;

    move-result-object v1

    .local v1, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    if-eqz v1, :cond_1

    iget-object v2, p2, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-static {v1}, Lcyanogenmod/app/Profile$ProfileTrigger;->-get0(Lcyanogenmod/app/Profile$ProfileTrigger;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Premature end of file while parsing triggers"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addProfileGroup(Lcyanogenmod/app/ProfileGroup;)V
    .locals 2
    .param p1, "profileGroup"    # Lcyanogenmod/app/ProfileGroup;

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    :cond_2
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public addSecondaryUuid(Ljava/util/UUID;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcyanogenmod/app/Profile;

    .local v0, "tmp":Lcyanogenmod/app/Profile;
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public doSelect(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardService"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    const/4 v10, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    iget-object v5, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "sd$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/profiles/StreamSettings;

    .local v3, "sd":Lcyanogenmod/profiles/StreamSettings;
    invoke-virtual {v3}, Lcyanogenmod/profiles/StreamSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcyanogenmod/profiles/StreamSettings;->getStreamId()I

    move-result v5

    invoke-virtual {v3}, Lcyanogenmod/profiles/StreamSettings;->getValue()I

    move-result v8

    invoke-virtual {v0, v5, v8, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .end local v3    # "sd":Lcyanogenmod/profiles/StreamSettings;
    :cond_1
    iget-object v5, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cs$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/profiles/ConnectionSettings;

    .local v1, "cs":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, p1}, Lcyanogenmod/profiles/ConnectionSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_1

    .end local v1    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_3
    iget-object v5, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/profiles/ConnectionSettings;

    .restart local v1    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v1}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, p1}, Lcyanogenmod/profiles/ConnectionSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_2

    .end local v1    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_5
    iget-object v5, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v5, p1}, Lcyanogenmod/profiles/RingModeSettings;->processOverride(Landroid/content/Context;)V

    iget-object v5, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v5, p1}, Lcyanogenmod/profiles/AirplaneModeSettings;->processOverride(Landroid/content/Context;)V

    iget-object v5, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v5, p1}, Lcyanogenmod/profiles/BrightnessSettings;->processOverride(Landroid/content/Context;)V

    if-eqz p2, :cond_8

    iget-object v5, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v5, p1, p2}, Lcyanogenmod/profiles/LockSettings;->processOverride(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    :goto_3
    iget v5, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "doze_enabled"

    iget v5, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    if-ne v5, v6, :cond_9

    move v5, v6

    :goto_4
    invoke-static {v8, v9, v5, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_6
    iget v5, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "notification_light_pulse"

    iget v9, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    if-ne v9, v6, :cond_a

    :goto_5
    invoke-static {v5, v8, v6, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_7
    return-void

    :cond_8
    const-string v5, "Profile"

    const-string v8, "cannot process screen lock override without a keyguard service."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    move v5, v7

    goto :goto_4

    :cond_a
    move v6, v7

    goto :goto_5
.end method

.method public getAirplaneMode()Lcyanogenmod/profiles/AirplaneModeSettings;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    return-object v0
.end method

.method public getBrightness()Lcyanogenmod/profiles/BrightnessSettings;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    return-object v0
.end method

.method public getConnectionSettingWithSubId(I)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    return-object v0
.end method

.method public getConnectionSettings()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcyanogenmod/profiles/ConnectionSettings;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "combinedList":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/profiles/ConnectionSettings;>;"
    iget-object v1, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getDefaultGroup()Lcyanogenmod/app/ProfileGroup;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public getDozeMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    return v0
.end method

.method public getExpandedDesktopMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationLightMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    return v0
.end method

.method public getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileGroups()[Lcyanogenmod/app/ProfileGroup;
    .locals 2

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcyanogenmod/app/ProfileGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileType()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    return v0
.end method

.method public getRingMode()Lcyanogenmod/profiles/RingModeSettings;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    return-object v0
.end method

.method public getScreenLockMode()Lcyanogenmod/profiles/LockSettings;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    return-object v0
.end method

.method public getSecondaryUuids()[Ljava/util/UUID;
    .locals 2

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    iget-object v1, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/UUID;

    return-object v0
.end method

.method public getSettingsForConnection(I)Lcyanogenmod/profiles/ConnectionSettings;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use getConnectionSettingsWithSubId for MSIM devices!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    return-object v0
.end method

.method public getSettingsForStream(I)Lcyanogenmod/profiles/StreamSettings;
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/StreamSettings;

    return-object v0
.end method

.method public getStatusBarIndicator()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    return v0
.end method

.method public getStreamSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcyanogenmod/profiles/StreamSettings;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerState(ILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile$ProfileTrigger;

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcyanogenmod/app/Profile$ProfileTrigger;->-get1(Lcyanogenmod/app/Profile$ProfileTrigger;)I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    goto :goto_0

    .end local v0    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_1
    const/4 v1, 0x2

    return v1
.end method

.method public getTriggersFromType(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcyanogenmod/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profileTrigger$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "profileTrigger":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/Profile$ProfileTrigger;

    .local v3, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    invoke-virtual {v3}, Lcyanogenmod/app/Profile$ProfileTrigger;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "profileTrigger":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcyanogenmod/app/Profile$ProfileTrigger;>;"
    .end local v3    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_1
    return-object v2
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 13
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const-string v10, "<profile "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    if-lez v10, :cond_0

    const-string v10, "nameres=\""

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v10, "\" uuid=\""

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\">\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "<uuids>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "u$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/UUID;

    .local v8, "u":Ljava/util/UUID;
    const-string v10, "<uuid>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "</uuid>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v8    # "u":Ljava/util/UUID;
    .end local v9    # "u$iterator":Ljava/util/Iterator;
    :cond_0
    const-string v10, "name=\""

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local v9    # "u$iterator":Ljava/util/Iterator;
    :cond_1
    const-string v10, "</uuids>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "<profiletype>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getProfileType()I

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "toggle"

    :goto_2
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "</profiletype>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "<statusbar>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcyanogenmod/app/Profile;->getStatusBarIndicator()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "yes"

    :goto_3
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "</statusbar>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    if-eqz v10, :cond_2

    const-string v10, "<screen-lock-mode>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v10, p1, p2}, Lcyanogenmod/profiles/LockSettings;->writeXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    const-string v10, "</screen-lock-mode>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v10, "<expanded-desktop-mode>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "</expanded-desktop-mode>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "<doze-mode>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "</doze-mode>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "<notification-light-mode>"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "</notification-light-mode>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v10, p1, p2}, Lcyanogenmod/profiles/AirplaneModeSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    iget-object v10, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v10, p1, p2}, Lcyanogenmod/profiles/BrightnessSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    iget-object v10, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v10, p1, p2}, Lcyanogenmod/profiles/RingModeSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    iget-object v10, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pGroup$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/ProfileGroup;

    .local v2, "pGroup":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v2, p1, p2}, Lcyanogenmod/app/ProfileGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_4

    .end local v2    # "pGroup":Lcyanogenmod/app/ProfileGroup;
    .end local v3    # "pGroup$iterator":Ljava/util/Iterator;
    :cond_3
    const-string v10, "conditional"

    goto/16 :goto_2

    :cond_4
    const-string v10, "no"

    goto/16 :goto_3

    .restart local v3    # "pGroup$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v10, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "sd$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcyanogenmod/profiles/StreamSettings;

    .local v4, "sd":Lcyanogenmod/profiles/StreamSettings;
    invoke-virtual {v4, p1, p2}, Lcyanogenmod/profiles/StreamSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_5

    .end local v4    # "sd":Lcyanogenmod/profiles/StreamSettings;
    :cond_6
    iget-object v10, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cs$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    .local v0, "cs":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v0, p1, p2}, Lcyanogenmod/profiles/ConnectionSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_6

    .end local v0    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_7
    iget-object v10, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    .restart local v0    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v0, p1, p2}, Lcyanogenmod/profiles/ConnectionSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_7

    .end local v0    # "cs":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_8
    iget-object v10, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "<triggers>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "trigger$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcyanogenmod/app/Profile$ProfileTrigger;

    .local v6, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    invoke-virtual {v6, p1, p2}, Lcyanogenmod/app/Profile$ProfileTrigger;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_8

    .end local v6    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_9
    const-string v10, "</triggers>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v7    # "trigger$iterator":Ljava/util/Iterator;
    :cond_a
    const-string v10, "</profile>\n"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v12, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public isConditionalType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    iget-boolean v6, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    if-eqz v6, :cond_0

    return v7

    :cond_0
    iget-object v6, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "group$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/ProfileGroup;

    .local v2, "group":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v2}, Lcyanogenmod/app/ProfileGroup;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_1

    return v7

    .end local v2    # "group":Lcyanogenmod/app/ProfileGroup;
    :cond_2
    iget-object v6, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "stream$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcyanogenmod/profiles/StreamSettings;

    .local v4, "stream":Lcyanogenmod/profiles/StreamSettings;
    invoke-virtual {v4}, Lcyanogenmod/profiles/StreamSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_3

    return v7

    .end local v4    # "stream":Lcyanogenmod/profiles/StreamSettings;
    :cond_4
    iget-object v6, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conn$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    .local v0, "conn":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v0}, Lcyanogenmod/profiles/ConnectionSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_5

    return v7

    .end local v0    # "conn":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_6
    iget-object v6, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/profiles/ConnectionSettings;

    .restart local v0    # "conn":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v0}, Lcyanogenmod/profiles/ConnectionSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_7

    return v7

    .end local v0    # "conn":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_8
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v6}, Lcyanogenmod/profiles/RingModeSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_9

    return v7

    :cond_9
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v6}, Lcyanogenmod/profiles/AirplaneModeSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_a

    return v7

    :cond_a
    iget-object v6, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v6}, Lcyanogenmod/profiles/BrightnessSettings;->isDirty()Z

    move-result v6

    if-eqz v6, :cond_b

    return v7

    :cond_b
    const/4 v6, 0x0

    return v6
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v3

    .local v3, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v3}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v4

    .local v4, "parcelableVersion":I
    const/4 v8, 0x2

    if-lt v4, v8, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v8

    iput-object v8, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v2, v9, v8

    .local v2, "parcel":Landroid/os/Parcelable;
    move-object v7, v2

    check-cast v7, Landroid/os/ParcelUuid;

    .local v7, "u":Landroid/os/ParcelUuid;
    iget-object v11, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v2    # "parcel":Landroid/os/Parcelable;
    .end local v7    # "u":Landroid/os/ParcelUuid;
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcyanogenmod/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcyanogenmod/app/ProfileGroup;

    const/4 v9, 0x0

    array-length v10, v8

    :goto_3
    if-ge v9, v10, :cond_7

    aget-object v1, v8, v9

    .local v1, "group":Lcyanogenmod/app/ProfileGroup;
    iget-object v11, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v11

    if-eqz v11, :cond_4

    iput-object v1, p0, Lcyanogenmod/app/Profile;->mDefaultGroup:Lcyanogenmod/app/ProfileGroup;

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v1    # "group":Lcyanogenmod/app/ProfileGroup;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcyanogenmod/profiles/StreamSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcyanogenmod/profiles/StreamSettings;

    const/4 v9, 0x0

    array-length v10, v8

    :goto_4
    if-ge v9, v10, :cond_8

    aget-object v5, v8, v9

    .local v5, "stream":Lcyanogenmod/profiles/StreamSettings;
    iget-object v11, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v5}, Lcyanogenmod/profiles/StreamSettings;->getStreamId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v5    # "stream":Lcyanogenmod/profiles/StreamSettings;
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v9, 0x0

    array-length v10, v8

    :goto_5
    if-ge v9, v10, :cond_9

    aget-object v0, v8, v9

    .local v0, "connection":Lcyanogenmod/profiles/ConnectionSettings;
    iget-object v11, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v0}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .end local v0    # "connection":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lcyanogenmod/profiles/RingModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcyanogenmod/profiles/RingModeSettings;

    iput-object v8, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    sget-object v8, Lcyanogenmod/profiles/AirplaneModeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcyanogenmod/profiles/AirplaneModeSettings;

    iput-object v8, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Lcyanogenmod/profiles/BrightnessSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcyanogenmod/profiles/BrightnessSettings;

    iput-object v8, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    sget-object v8, Lcyanogenmod/profiles/LockSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcyanogenmod/profiles/LockSettings;

    iput-object v8, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    :cond_d
    sget-object v8, Lcyanogenmod/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcyanogenmod/app/Profile$ProfileTrigger;

    const/4 v9, 0x0

    array-length v10, v8

    :goto_6
    if-ge v9, v10, :cond_e

    aget-object v6, v8, v9

    .local v6, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    iget-object v11, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-static {v6}, Lcyanogenmod/app/Profile$ProfileTrigger;->-get0(Lcyanogenmod/app/Profile$ProfileTrigger;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .end local v6    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    :cond_f
    const/4 v8, 0x5

    if-lt v4, v8, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    sget-object v8, Lcyanogenmod/profiles/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v9, 0x0

    array-length v10, v8

    :goto_7
    if-ge v9, v10, :cond_10

    aget-object v0, v8, v9

    .restart local v0    # "connection":Lcyanogenmod/profiles/ConnectionSettings;
    iget-object v11, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-virtual {v0}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .end local v0    # "connection":Lcyanogenmod/profiles/ConnectionSettings;
    :cond_10
    invoke-virtual {v3}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method public removeProfileGroup(Ljava/util/UUID;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove default group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAirplaneMode(Lcyanogenmod/profiles/AirplaneModeSettings;)V
    .locals 1
    .param p1, "descriptor"    # Lcyanogenmod/profiles/AirplaneModeSettings;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public setBrightness(Lcyanogenmod/profiles/BrightnessSettings;)V
    .locals 1
    .param p1, "descriptor"    # Lcyanogenmod/profiles/BrightnessSettings;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public setConditionalType()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V
    .locals 2
    .param p1, "descriptor"    # Lcyanogenmod/profiles/ConnectionSettings;

    .prologue
    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDozeMode(I)V
    .locals 2
    .param p1, "dozeMode"    # I

    .prologue
    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    iput v1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void

    :cond_1
    iput p1, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    goto :goto_0
.end method

.method public setExpandedDesktopMode(I)V
    .locals 2
    .param p1, "expandedDesktopMode"    # I

    .prologue
    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    iput v1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void

    :cond_1
    iput p1, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public setNotificationLightMode(I)V
    .locals 2
    .param p1, "notificationLightMode"    # I

    .prologue
    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    iput v1, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void

    :cond_1
    iput p1, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    goto :goto_0
.end method

.method public setProfileType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public setRingMode(Lcyanogenmod/profiles/RingModeSettings;)V
    .locals 1
    .param p1, "descriptor"    # Lcyanogenmod/profiles/RingModeSettings;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public setScreenLockMode(Lcyanogenmod/profiles/LockSettings;)V
    .locals 1
    .param p1, "screenLockMode"    # Lcyanogenmod/profiles/LockSettings;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public setSecondaryUuids(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    iget-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setStatusBarIndicator(Z)V
    .locals 1
    .param p1, "newStatusBarIndicator"    # Z

    .prologue
    iput-boolean p1, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V
    .locals 2
    .param p1, "descriptor"    # Lcyanogenmod/profiles/StreamSettings;

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {p1}, Lcyanogenmod/profiles/StreamSettings;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void
.end method

.method public setTrigger(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-gt p1, v3, :cond_0

    if-ltz p3, :cond_0

    const/4 v1, 0x4

    if-gt p3, v1, :cond_0

    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile$ProfileTrigger;

    .local v0, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0, p3}, Lcyanogenmod/app/Profile$ProfileTrigger;->-set0(Lcyanogenmod/app/Profile$ProfileTrigger;I)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    new-instance v2, Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-direct {v2, p1, p2, p3, p4}, Lcyanogenmod/app/Profile$ProfileTrigger;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTrigger(Lcyanogenmod/app/Profile$ProfileTrigger;)V
    .locals 4
    .param p1, "trigger"    # Lcyanogenmod/app/Profile$ProfileTrigger;

    .prologue
    invoke-virtual {p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getState()I

    move-result v2

    invoke-virtual {p1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcyanogenmod/app/Profile;->setTrigger(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public validateRingtones(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v2, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/ProfileGroup;

    .local v0, "pg":Lcyanogenmod/app/ProfileGroup;
    invoke-virtual {v0, p1}, Lcyanogenmod/app/ProfileGroup;->validateOverrideUris(Landroid/content/Context;)V

    goto :goto_0

    .end local v0    # "pg":Lcyanogenmod/app/ProfileGroup;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget v4, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    if-eqz v4, :cond_6

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcyanogenmod/app/Profile;->mNameResId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    if-eqz v4, :cond_7

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v4, Landroid/os/ParcelUuid;

    iget-object v7, p0, Lcyanogenmod/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v4, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v4, p1, v6}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-boolean v4, p0, Lcyanogenmod/app/Profile;->mStatusBarIndicator:Z

    if-eqz v4, :cond_a

    move v4, v5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcyanogenmod/app/Profile;->mProfileType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Lcyanogenmod/app/Profile;->mDirty:Z

    if-eqz v4, :cond_b

    move v4, v5

    :goto_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object v4, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object v4, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    if-eqz v4, :cond_f

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->mRingMode:Lcyanogenmod/profiles/RingModeSettings;

    invoke-virtual {v4, p1, v6}, Lcyanogenmod/profiles/RingModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    if-eqz v4, :cond_10

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->mAirplaneMode:Lcyanogenmod/profiles/AirplaneModeSettings;

    invoke-virtual {v4, p1, v6}, Lcyanogenmod/profiles/AirplaneModeSettings;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    if-eqz v4, :cond_11

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->mBrightness:Lcyanogenmod/profiles/BrightnessSettings;

    invoke-virtual {v4, p1, v6}, Lcyanogenmod/profiles/BrightnessSettings;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    if-eqz v4, :cond_12

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->mScreenLockMode:Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v4, p1, v6}, Lcyanogenmod/profiles/LockSettings;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v7, v6, [Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget v4, p0, Lcyanogenmod/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcyanogenmod/app/Profile;->mDozeMode:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Lcyanogenmod/app/Profile;->mNotificationLightMode:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_4
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void

    :cond_5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v4, p0, Lcyanogenmod/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "u$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .local v1, "u":Ljava/util/UUID;
    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .end local v1    # "u":Ljava/util/UUID;
    :cond_9
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_3

    .end local v2    # "u$iterator":Ljava/util/Iterator;
    .end local v3    # "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    :cond_a
    move v4, v6

    goto/16 :goto_4

    :cond_b
    move v4, v6

    goto/16 :goto_5

    :cond_c
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v7, v6, [Lcyanogenmod/app/ProfileGroup;

    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v7, v6, [Lcyanogenmod/profiles/StreamSettings;

    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_7

    :cond_e
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v7, v6, [Lcyanogenmod/profiles/ConnectionSettings;

    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    :cond_f
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :cond_10
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_11
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    :cond_12
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c

    :cond_13
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcyanogenmod/app/Profile;->networkConnectionSubIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v6, [Lcyanogenmod/profiles/ConnectionSettings;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_d
.end method
