.class public Lcyanogenmod/app/ThemeVersion$ComponentVersion;
.super Ljava/lang/Object;
.source "ThemeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ThemeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentVersion"
.end annotation


# instance fields
.field protected component:Lcyanogenmod/app/ThemeComponent;

.field protected currentVersion:I

.field protected id:I

.field protected minVersion:I

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILcyanogenmod/app/ThemeComponent;I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "component"    # Lcyanogenmod/app/ThemeComponent;
    .param p3, "targetVersion"    # I

    .prologue
    invoke-virtual {p2}, Lcyanogenmod/app/ThemeComponent;->name()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;Ljava/lang/String;II)V

    return-void
.end method

.method protected constructor <init>(ILcyanogenmod/app/ThemeComponent;Ljava/lang/String;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "component"    # Lcyanogenmod/app/ThemeComponent;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "minVersion"    # I
    .param p5, "targetVersion"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->id:I

    iput-object p2, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->component:Lcyanogenmod/app/ThemeComponent;

    iput-object p3, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->name:Ljava/lang/String;

    iput p4, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->minVersion:I

    iput p5, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->currentVersion:I

    return-void
.end method

.method public constructor <init>(Lcyanogenmod/app/ThemeVersion$ComponentVersion;)V
    .locals 6
    .param p1, "copy"    # Lcyanogenmod/app/ThemeVersion$ComponentVersion;

    .prologue
    iget v1, p1, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->id:I

    iget-object v2, p1, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->component:Lcyanogenmod/app/ThemeComponent;

    iget-object v3, p1, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->name:Ljava/lang/String;

    iget v4, p1, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->minVersion:I

    iget v5, p1, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->currentVersion:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/app/ThemeVersion$ComponentVersion;-><init>(ILcyanogenmod/app/ThemeComponent;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getComponent()Lcyanogenmod/app/ThemeComponent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->component:Lcyanogenmod/app/ThemeComponent;

    return-object v0
.end method

.method public getCurrentVersion()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->currentVersion:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->id:I

    return v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->minVersion:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/ThemeVersion$ComponentVersion;->name:Ljava/lang/String;

    return-object v0
.end method
