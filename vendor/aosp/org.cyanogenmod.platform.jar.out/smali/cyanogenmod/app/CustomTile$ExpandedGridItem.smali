.class public Lcyanogenmod/app/CustomTile$ExpandedGridItem;
.super Lcyanogenmod/app/CustomTile$ExpandedItem;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedGridItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/app/CustomTile$ExpandedItem;-><init>(Lcyanogenmod/app/CustomTile$ExpandedItem;)V

    return-void
.end method


# virtual methods
.method public setExpandedGridItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedGridItem;->internalSetItemBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setExpandedGridItemDrawable(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedGridItem;->internalSetItemDrawable(I)V

    return-void
.end method

.method public setExpandedGridItemOnClickIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedGridItem;->internalSetOnClickPendingIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setExpandedGridItemTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedGridItem;->internalSetItemTitle(Ljava/lang/String;)V

    return-void
.end method
