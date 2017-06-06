.class public final Lcyanogenmod/profiles/LockSettings;
.super Ljava/lang/Object;
.source "LockSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/profiles/LockSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/profiles/LockSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDirty:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcyanogenmod/profiles/LockSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/profiles/LockSettings;->TAG:Ljava/lang/String;

    new-instance v0, Lcyanogenmod/profiles/LockSettings$1;

    invoke-direct {v0}, Lcyanogenmod/profiles/LockSettings$1;-><init>()V

    sput-object v0, Lcyanogenmod/profiles/LockSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyanogenmod/profiles/LockSettings;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/LockSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguard"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    const-string v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->requireSecureKeyguard()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .local v2, "enable":Z
    :goto_0
    :try_start_0
    invoke-interface {p2, v2}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .end local v2    # "enable":Z
    :cond_0
    iget v3, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x1

    .restart local v2    # "enable":Z
    goto :goto_0

    .end local v2    # "enable":Z
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "enable":Z
    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcyanogenmod/profiles/LockSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to set keyguard enabled state to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .local v1, "parcelableVersion":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    :cond_1
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Lcyanogenmod/profiles/LockSettings;->mDirty:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iget v0, p0, Lcyanogenmod/profiles/LockSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
