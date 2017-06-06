.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;
.super Ljava/lang/Object;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetPreferredNwModeMessage"
.end annotation


# instance fields
.field public networkType:I

.field public slotId:I

.field public subId:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "subId"    # I
    .param p3, "networkType"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;->slotId:I

    iput p2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;->subId:I

    iput p3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SetPreferredNwModeMessage;->networkType:I

    return-void
.end method
