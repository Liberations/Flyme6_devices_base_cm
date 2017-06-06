.class public Lcyanogenmod/app/CustomTile$ExpandedItem;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/CustomTile$ExpandedItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/CustomTile$ExpandedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public itemBitmapResource:Landroid/graphics/Bitmap;

.field public itemDrawableResourceId:I

.field public itemSummary:Ljava/lang/String;

.field public itemTitle:Ljava/lang/String;

.field public onClickPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/app/CustomTile$ExpandedItem$1;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile$ExpandedItem$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/CustomTile$ExpandedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .local v1, "parcelableVersion":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    :cond_3
    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    :cond_4
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/app/CustomTile$ExpandedItem;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/app/CustomTile$ExpandedItem;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected internalSetItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected internalSetItemDrawable(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    iput p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    return-void
.end method

.method protected internalSetItemSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    return-void
.end method

.method protected internalSetItemTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    return-void
.end method

.method protected internalSetOnClickPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    const-string v2, "onClickPendingIntent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "itemTitle= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "itemSummary= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "itemDrawableResourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    const-string v2, "itemBitmapResource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->onClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemSummary:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    iget v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemDrawableResourceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedItem;->itemBitmapResource:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
