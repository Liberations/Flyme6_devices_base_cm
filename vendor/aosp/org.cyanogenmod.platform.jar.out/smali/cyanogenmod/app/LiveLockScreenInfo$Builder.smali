.class public Lcyanogenmod/app/LiveLockScreenInfo$Builder;
.super Ljava/lang/Object;
.source "LiveLockScreenInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/LiveLockScreenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mPriority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 3

    .prologue
    new-instance v0, Lcyanogenmod/app/LiveLockScreenInfo;

    iget-object v1, p0, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->mPriority:I

    invoke-direct {v0, v1, v2}, Lcyanogenmod/app/LiveLockScreenInfo;-><init>(Landroid/content/ComponentName;I)V

    return-object v0
.end method

.method public setComponent(Landroid/content/ComponentName;)Lcyanogenmod/app/LiveLockScreenInfo$Builder;
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot call setComponent with a null component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setPriority(I)Lcyanogenmod/app/LiveLockScreenInfo$Builder;
    .locals 4
    .param p1, "priority"    # I

    .prologue
    const/4 v3, -0x2

    if-lt p1, v3, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid priorty given ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= priority <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcyanogenmod/app/LiveLockScreenInfo$Builder;->mPriority:I

    return-object p0
.end method
