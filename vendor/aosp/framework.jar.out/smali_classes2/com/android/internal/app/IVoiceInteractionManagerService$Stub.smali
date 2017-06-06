.class public abstract Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractionManagerService"

.field static final TRANSACTION_activeServiceSupportsAssist:I = 0x18

.field static final TRANSACTION_activeServiceSupportsLaunchFromKeyguard:I = 0x19

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_deleteKeyphraseSoundModel:I = 0xe

.field static final TRANSACTION_deliverNewSession:I = 0x2

.field static final TRANSACTION_finish:I = 0x8

.field static final TRANSACTION_getActiveServiceComponentName:I = 0x13

.field static final TRANSACTION_getDisabledShowContext:I = 0xa

.field static final TRANSACTION_getDspModuleProperties:I = 0xf

.field static final TRANSACTION_getKeyphraseSoundModel:I = 0xc

.field static final TRANSACTION_getUserDisabledShowContext:I = 0xb

.field static final TRANSACTION_hideCurrentSession:I = 0x15

.field static final TRANSACTION_hideSessionFromSession:I = 0x4

.field static final TRANSACTION_isEnrolledForKeyphrase:I = 0x10

.field static final TRANSACTION_isSessionRunning:I = 0x17

.field static final TRANSACTION_launchVoiceAssistFromKeyguard:I = 0x16

.field static final TRANSACTION_onLockscreenShown:I = 0x1a

.field static final TRANSACTION_setDisabledShowContext:I = 0x9

.field static final TRANSACTION_setKeepAwake:I = 0x6

.field static final TRANSACTION_showSession:I = 0x1

.field static final TRANSACTION_showSessionForActiveService:I = 0x14

.field static final TRANSACTION_showSessionFromSession:I = 0x3

.field static final TRANSACTION_startRecognition:I = 0x11

.field static final TRANSACTION_startVoiceActivity:I = 0x5

.field static final TRANSACTION_stopRecognition:I = 0x12

.field static final TRANSACTION_updateKeyphraseSoundModel:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/app/IVoiceInteractionManagerService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v4

    .local v4, "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v14, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v18    # "_arg2":I
    :cond_0
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v14    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v15

    .local v15, "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v21

    .local v21, "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v15, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    move-result v27

    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_1

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Landroid/service/voice/IVoiceInteractionSession;
    .end local v21    # "_arg2":Lcom/android/internal/app/IVoiceInteractor;
    .end local v27    # "_result":Z
    :sswitch_3
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v12, v14, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z

    move-result v27

    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_3

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v18    # "_arg2":I
    .end local v27    # "_result":Z
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "_arg1":Landroid/os/Bundle;
    goto :goto_2

    .end local v14    # "_arg1":Landroid/os/Bundle;
    .restart local v18    # "_arg2":I
    .restart local v27    # "_result":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "_arg2":I
    .end local v27    # "_result":Z
    :sswitch_4
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideSessionFromSession(Landroid/os/IBinder;)Z

    move-result v27

    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_4

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v27    # "_result":Z
    :sswitch_5
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v6}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v23

    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v23    # "_result":I
    :cond_5
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/content/Intent;
    goto :goto_5

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Landroid/content/Intent;
    :sswitch_6
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    const/16 v17, 0x1

    .local v17, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setKeepAwake(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v17    # "_arg1":Z
    :cond_6
    const/16 v17, 0x0

    .restart local v17    # "_arg1":Z
    goto :goto_6

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Z
    :sswitch_7
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->closeSystemDialogs(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg0":Landroid/os/IBinder;
    :sswitch_8
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->finish(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg0":Landroid/os/IBinder;
    :sswitch_9
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->setDisabledShowContext(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v9    # "_arg0":I
    :sswitch_a
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDisabledShowContext()I

    move-result v23

    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v23    # "_result":I
    :sswitch_b
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getUserDisabledShowContext()I

    move-result v23

    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v23    # "_result":I
    :sswitch_c
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v25

    .local v25, "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/4 v3, 0x1

    return v3

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v25    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :sswitch_d
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v23

    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v23    # "_result":I
    :cond_8
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    goto :goto_8

    .end local v10    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :sswitch_e
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->deleteKeyphraseSoundModel(ILjava/lang/String;)I

    move-result v23

    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v23    # "_result":I
    :sswitch_f
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v26

    .local v26, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v3, 0x1

    return v3

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v26    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :sswitch_10
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z

    move-result v27

    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_a

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_a
    const/4 v3, 0x0

    goto :goto_a

    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_11
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v7

    .local v7, "_arg3":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    :goto_b
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v23

    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v23    # "_result":I
    :cond_b
    const/4 v8, 0x0

    .local v8, "_arg4":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_b

    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v8    # "_arg4":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :sswitch_12
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object v19

    .local v19, "_arg2":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result v23

    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Landroid/service/voice/IVoiceInteractionService;
    .end local v5    # "_arg1":I
    .end local v19    # "_arg2":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v23    # "_result":I
    :sswitch_13
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v24

    .local v24, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_c

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    const/4 v3, 0x1

    return v3

    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .end local v24    # "_result":Landroid/content/ComponentName;
    :sswitch_14
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    move-result-object v20

    .local v20, "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    .local v22, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v5, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v27

    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_e

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v5    # "_arg1":I
    .end local v20    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v22    # "_arg3":Landroid/os/IBinder;
    .end local v27    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/os/Bundle;
    goto :goto_d

    .end local v11    # "_arg0":Landroid/os/Bundle;
    .restart local v5    # "_arg1":I
    .restart local v20    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .restart local v22    # "_arg3":Landroid/os/IBinder;
    .restart local v27    # "_result":Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_e

    .end local v5    # "_arg1":I
    .end local v20    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .end local v22    # "_arg3":Landroid/os/IBinder;
    .end local v27    # "_result":Z
    :sswitch_15
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->hideCurrentSession()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_16
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->launchVoiceAssistFromKeyguard()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_17
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->isSessionRunning()Z

    move-result v27

    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_f

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_f
    const/4 v3, 0x0

    goto :goto_f

    .end local v27    # "_result":Z
    :sswitch_18
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsAssist()Z

    move-result v27

    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_10

    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_10
    const/4 v3, 0x0

    goto :goto_10

    .end local v27    # "_result":Z
    :sswitch_19
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v27

    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_11

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_11
    const/4 v3, 0x0

    goto :goto_11

    .end local v27    # "_result":Z
    :sswitch_1a
    const-string v3, "com.android.internal.app.IVoiceInteractionManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onLockscreenShown()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    nop

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
