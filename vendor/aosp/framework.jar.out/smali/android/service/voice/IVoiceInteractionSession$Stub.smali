.class public abstract Landroid/service/voice/IVoiceInteractionSession$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSession.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionSession"

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_destroy:I = 0x9

.field static final TRANSACTION_handleAssist:I = 0x3

.field static final TRANSACTION_handleScreenshot:I = 0x4

.field static final TRANSACTION_hide:I = 0x2

.field static final TRANSACTION_onLockscreenShown:I = 0x8

.field static final TRANSACTION_show:I = 0x1

.field static final TRANSACTION_taskFinished:I = 0x6

.field static final TRANSACTION_taskStarted:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.service.voice.IVoiceInteractionSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/voice/IVoiceInteractionSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_1
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    move-result-object v6

    .local v6, "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual {p0, v2, v3, v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    return v8

    .end local v3    # "_arg1":I
    .end local v6    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->hide()V

    return v8

    :sswitch_3
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistStructure;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/assist/AssistContent;

    :goto_3
    invoke-virtual {p0, v2, v4, v5}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    return v8

    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/app/assist/AssistStructure;
    goto :goto_2

    .end local v4    # "_arg1":Landroid/app/assist/AssistStructure;
    :cond_3
    const/4 v5, 0x0

    .local v5, "_arg2":Landroid/app/assist/AssistContent;
    goto :goto_3

    .end local v5    # "_arg2":Landroid/app/assist/AssistContent;
    :sswitch_4
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_4
    invoke-virtual {p0, v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleScreenshot(Landroid/graphics/Bitmap;)V

    return v8

    :cond_4
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_4

    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_5
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskStarted(Landroid/content/Intent;I)V

    return v8

    .end local v3    # "_arg1":I
    :cond_5
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_5

    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_6
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskFinished(Landroid/content/Intent;I)V

    return v8

    .end local v3    # "_arg1":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_6

    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_7
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->closeSystemDialogs()V

    return v8

    :sswitch_8
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->onLockscreenShown()V

    return v8

    :sswitch_9
    const-string v7, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->destroy()V

    return v8

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
