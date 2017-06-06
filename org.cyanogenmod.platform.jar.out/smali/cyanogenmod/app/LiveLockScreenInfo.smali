.class public Lcyanogenmod/app/LiveLockScreenInfo;
.super Ljava/lang/Object;
.source "LiveLockScreenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/LiveLockScreenInfo$Builder;,
        Lcyanogenmod/app/LiveLockScreenInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/LiveLockScreenInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2


# instance fields
.field public component:Landroid/content/ComponentName;

.field public priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/app/LiveLockScreenInfo$1;

    invoke-direct {v0}, Lcyanogenmod/app/LiveLockScreenInfo$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/LiveLockScreenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput v0, p0, Lcyanogenmod/app/LiveLockScreenInfo;->priority:I

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "priority"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    iput p2, p0, Lcyanogenmod/app/LiveLockScreenInfo;->priority:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v1

    .local v1, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v1}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v2

    .local v2, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/app/LiveLockScreenInfo;->priority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "component":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/LiveLockScreenInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/LiveLockScreenInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clone()Lcyanogenmod/app/LiveLockScreenInfo;
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/app/LiveLockScreenInfo;

    invoke-direct {v0}, Lcyanogenmod/app/LiveLockScreenInfo;-><init>()V

    .local v0, "that":Lcyanogenmod/app/LiveLockScreenInfo;
    invoke-virtual {p0, v0}, Lcyanogenmod/app/LiveLockScreenInfo;->cloneInto(Lcyanogenmod/app/LiveLockScreenInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcyanogenmod/app/LiveLockScreenInfo;->clone()Lcyanogenmod/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Lcyanogenmod/app/LiveLockScreenInfo;)V
    .locals 1
    .param p1, "that"    # Lcyanogenmod/app/LiveLockScreenInfo;

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p1, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    iget v0, p0, Lcyanogenmod/app/LiveLockScreenInfo;->priority:I

    iput v0, p1, Lcyanogenmod/app/LiveLockScreenInfo;->priority:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiveLockScreenInfo: priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/app/LiveLockScreenInfo;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/app/LiveLockScreenInfo;->priority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcyanogenmod/app/LiveLockScreenInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
