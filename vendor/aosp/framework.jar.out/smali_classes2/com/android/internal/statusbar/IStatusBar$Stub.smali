.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x15

.field static final TRANSACTION_appTransitionPending:I = 0x14

.field static final TRANSACTION_appTransitionStarting:I = 0x16

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x19

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x17

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_startAssist:I = 0x18

.field static final TRANSACTION_toggleRecentApps:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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

    move-result v15

    return v15

    :sswitch_0
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :sswitch_1
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/statusbar/StatusBarIcon;

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    const/4 v15, 0x1

    return v15

    :cond_0
    const/4 v9, 0x0

    .local v9, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    const/4 v15, 0x1

    return v15

    .end local v2    # "_arg0":I
    :sswitch_3
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    const/4 v15, 0x1

    return v15

    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_4
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    const/4 v15, 0x1

    return v15

    :sswitch_5
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    const/4 v15, 0x1

    return v15

    :sswitch_6
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    const/4 v15, 0x1

    return v15

    :sswitch_7
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    const/4 v15, 0x1

    return v15

    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_8
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1

    const/4 v7, 0x1

    .local v7, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    const/4 v15, 0x1

    return v15

    .end local v7    # "_arg0":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_1

    .end local v7    # "_arg0":Z
    :sswitch_9
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    const/4 v14, 0x1

    .local v14, "_arg3":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v13, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    const/4 v15, 0x1

    return v15

    .end local v14    # "_arg3":Z
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "_arg3":Z
    goto :goto_2

    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":Z
    :sswitch_a
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    const/4 v15, 0x1

    return v15

    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_b
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    const/4 v15, 0x1

    return v15

    :sswitch_c
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    const/4 v15, 0x1

    return v15

    :sswitch_d
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v13}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    const/4 v15, 0x1

    return v15

    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v13    # "_arg2":I
    :sswitch_e
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_3

    const/4 v7, 0x1

    .restart local v7    # "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    const/4 v15, 0x1

    return v15

    .end local v7    # "_arg0":Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_3

    .end local v7    # "_arg0":Z
    :sswitch_f
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_4

    const/4 v7, 0x1

    .restart local v7    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_5

    const/4 v12, 0x1

    .local v12, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    const/4 v15, 0x1

    return v15

    .end local v7    # "_arg0":Z
    .end local v12    # "_arg1":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Z
    goto :goto_5

    .end local v7    # "_arg0":Z
    .end local v12    # "_arg1":Z
    :sswitch_10
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    const/4 v15, 0x1

    return v15

    :sswitch_11
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    const/4 v15, 0x1

    return v15

    :sswitch_12
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    const/4 v15, 0x1

    return v15

    :sswitch_13
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest()V

    const/4 v15, 0x1

    return v15

    :sswitch_14
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    const/4 v15, 0x1

    return v15

    :sswitch_15
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    const/4 v15, 0x1

    return v15

    :sswitch_16
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v10, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    const/4 v15, 0x1

    return v15

    .end local v4    # "_arg0":J
    .end local v10    # "_arg1":J
    :sswitch_17
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    const/4 v15, 0x1

    return v15

    :sswitch_18
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_6

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    const/4 v15, 0x1

    return v15

    :cond_6
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/os/Bundle;
    goto :goto_6

    .end local v3    # "_arg0":Landroid/os/Bundle;
    :sswitch_19
    const-string v15, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    const/4 v15, 0x1

    return v15

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
