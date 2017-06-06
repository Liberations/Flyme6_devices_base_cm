.class public Lcyanogenmod/app/CustomTile$Builder;
.super Ljava/lang/Object;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCollapsePanel:Z

.field private mContentDescription:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

.field private mIcon:I

.field private mLabel:Ljava/lang/String;

.field private mOnClick:Landroid/app/PendingIntent;

.field private mOnClickUri:Landroid/net/Uri;

.field private mOnLongClick:Landroid/app/PendingIntent;

.field private mOnSettingsClick:Landroid/content/Intent;

.field private mRemoteIcon:Landroid/graphics/Bitmap;

.field private mSensitiveData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mCollapsePanel:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mSensitiveData:Z

    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/app/CustomTile;
    .locals 2

    .prologue
    new-instance v0, Lcyanogenmod/app/CustomTile;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile;-><init>()V

    .local v0, "tile":Lcyanogenmod/app/CustomTile;
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/app/CustomTile;->-set0(Lcyanogenmod/app/CustomTile;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClick:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnLongClick:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnSettingsClick:Landroid/content/Intent;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClickUri:Landroid/net/Uri;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iget v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mIcon:I

    iput v1, v0, Lcyanogenmod/app/CustomTile;->icon:I

    iget-boolean v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mCollapsePanel:Z

    iput-boolean v1, v0, Lcyanogenmod/app/CustomTile;->collapsePanel:Z

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mRemoteIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    iget-boolean v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mSensitiveData:Z

    iput-boolean v1, v0, Lcyanogenmod/app/CustomTile;->sensitiveData:Z

    return-object v0
.end method

.method public hasSensitiveData(Z)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    iput-boolean p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mSensitiveData:Z

    return-object p0
.end method

.method public setContentDescription(I)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setExpandedStyle(Lcyanogenmod/app/CustomTile$ExpandedStyle;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "expandedStyle"    # Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;->setBuilder(Lcyanogenmod/app/CustomTile$Builder;)V

    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "drawableId"    # I

    .prologue
    iput p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mIcon:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "remoteIcon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mIcon:I

    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mRemoteIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLabel(I)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setOnClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClick:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setOnClickUri(Landroid/net/Uri;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClickUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setOnLongClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnLongClick:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setOnSettingsClickIntent(Landroid/content/Intent;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnSettingsClick:Landroid/content/Intent;

    return-object p0
.end method

.method public shouldCollapsePanel(Z)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    iput-boolean p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mCollapsePanel:Z

    return-object p0
.end method
