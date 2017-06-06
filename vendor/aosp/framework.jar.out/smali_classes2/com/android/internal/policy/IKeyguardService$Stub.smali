.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_dismiss:I = 0x5

.field static final TRANSACTION_doKeyguardTimeout:I = 0x10

.field static final TRANSACTION_keyguardDone:I = 0x4

.field static final TRANSACTION_onActivityDrawn:I = 0x14

.field static final TRANSACTION_onBootCompleted:I = 0x12

.field static final TRANSACTION_onDreamingStarted:I = 0x6

.field static final TRANSACTION_onDreamingStopped:I = 0x7

.field static final TRANSACTION_onFinishedGoingToSleep:I = 0x9

.field static final TRANSACTION_onScreenTurnedOff:I = 0xd

.field static final TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final TRANSACTION_onScreenTurningOn:I = 0xb

.field static final TRANSACTION_onStartedGoingToSleep:I = 0x8

.field static final TRANSACTION_onStartedWakingUp:I = 0xa

.field static final TRANSACTION_onSystemReady:I = 0xf

.field static final TRANSACTION_setCurrentUser:I = 0x11

.field static final TRANSACTION_setKeyguardEnabled:I = 0xe

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_showKeyguard:I = 0x15

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x13

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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

    move-result v11

    return v11

    :sswitch_0
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_1
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    const/4 v7, 0x1

    .local v7, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(Z)V

    const/4 v11, 0x1

    return v11

    .end local v7    # "_arg0":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_0

    .end local v7    # "_arg0":Z
    :sswitch_2
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v6

    .local v6, "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    const/4 v11, 0x1

    return v11

    .end local v6    # "_arg0":Lcom/android/internal/policy/IKeyguardStateCallback;
    :sswitch_3
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v5

    .local v5, "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    const/4 v11, 0x1

    return v11

    .end local v5    # "_arg0":Lcom/android/internal/policy/IKeyguardExitCallback;
    :sswitch_4
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    const/4 v7, 0x1

    .restart local v7    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x1

    .local v10, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->keyguardDone(ZZ)V

    const/4 v11, 0x1

    return v11

    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Z
    goto :goto_2

    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":Z
    :sswitch_5
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss()V

    const/4 v11, 0x1

    return v11

    :sswitch_6
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    const/4 v11, 0x1

    return v11

    :sswitch_7
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    const/4 v11, 0x1

    return v11

    :sswitch_8
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    :sswitch_9
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(I)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp()V

    const/4 v11, 0x1

    return v11

    :sswitch_b
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v4

    .local v4, "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    const/4 v11, 0x1

    return v11

    .end local v4    # "_arg0":Lcom/android/internal/policy/IKeyguardDrawnCallback;
    :sswitch_c
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    const/4 v11, 0x1

    return v11

    :sswitch_d
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    const/4 v11, 0x1

    return v11

    :sswitch_e
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v7, 0x1

    .restart local v7    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    const/4 v11, 0x1

    return v11

    .end local v7    # "_arg0":Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_3

    .end local v7    # "_arg0":Z
    :sswitch_f
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    const/4 v11, 0x1

    return v11

    :cond_4
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_11
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    :sswitch_12
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    const/4 v11, 0x1

    return v11

    :sswitch_13
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg1":J
    invoke-virtual {p0, v2, v3, v8, v9}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    const/4 v11, 0x1

    return v11

    .end local v2    # "_arg0":J
    .end local v8    # "_arg1":J
    :sswitch_14
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onActivityDrawn()V

    const/4 v11, 0x1

    return v11

    :sswitch_15
    const-string v11, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->showKeyguard()V

    const/4 v11, 0x1

    return v11

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
