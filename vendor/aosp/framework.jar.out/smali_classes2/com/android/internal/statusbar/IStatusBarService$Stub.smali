.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_appTransitionCancelled:I = 0x21

.field static final TRANSACTION_appTransitionPending:I = 0x20

.field static final TRANSACTION_appTransitionStarting:I = 0x22

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x1f

.field static final TRANSACTION_clearNotificationEffects:I = 0x11

.field static final TRANSACTION_collapsePanels:I = 0x2

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_disable2:I = 0x5

.field static final TRANSACTION_disable2ForUser:I = 0x6

.field static final TRANSACTION_disableForUser:I = 0x4

.field static final TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final TRANSACTION_expandSettingsPanel:I = 0xc

.field static final TRANSACTION_hideRecentApps:I = 0x1c

.field static final TRANSACTION_onClearAllNotifications:I = 0x15

.field static final TRANSACTION_onNotificationActionClick:I = 0x13

.field static final TRANSACTION_onNotificationClear:I = 0x16

.field static final TRANSACTION_onNotificationClick:I = 0x12

.field static final TRANSACTION_onNotificationError:I = 0x14

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x18

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x17

.field static final TRANSACTION_onPanelHidden:I = 0x10

.field static final TRANSACTION_onPanelRevealed:I = 0xf

.field static final TRANSACTION_preloadRecentApps:I = 0x1e

.field static final TRANSACTION_registerStatusBar:I = 0xe

.field static final TRANSACTION_removeIcon:I = 0x9

.field static final TRANSACTION_setCurrentUser:I = 0xd

.field static final TRANSACTION_setIcon:I = 0x7

.field static final TRANSACTION_setIconVisibility:I = 0x8

.field static final TRANSACTION_setImeWindowStatus:I = 0xb

.field static final TRANSACTION_setSystemUiVisibility:I = 0x19

.field static final TRANSACTION_setWindowState:I = 0x1a

.field static final TRANSACTION_showRecentApps:I = 0x1b

.field static final TRANSACTION_startAssist:I = 0x23

.field static final TRANSACTION_toggleRecentApps:I = 0x1d

.field static final TRANSACTION_topAppWindowChanged:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 41
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

    move-result v6

    return v6

    :sswitch_0
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_1
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_2
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_3
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .local v29, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .local v35, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v29

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v20    # "_arg0":I
    .end local v29    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_4
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v29

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v10    # "_arg3":I
    .end local v20    # "_arg0":I
    .end local v29    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v29

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v20    # "_arg0":I
    .end local v29    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v29

    .restart local v29    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v29

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v10    # "_arg3":I
    .end local v20    # "_arg0":I
    .end local v29    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg4":Ljava/lang/String;
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    :sswitch_8
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/16 v33, 0x1

    .local v33, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v33    # "_arg1":Z
    :cond_0
    const/16 v33, 0x0

    .restart local v33    # "_arg1":Z
    goto :goto_0

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":Z
    :sswitch_9
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v26, 0x1

    .local v26, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->topAppWindowChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v26    # "_arg0":Z
    :cond_1
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_1

    .end local v26    # "_arg0":Z
    :sswitch_b
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    .local v24, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    const/16 v40, 0x1

    .local v40, "_arg3":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v40    # "_arg3":Z
    :cond_2
    const/16 v40, 0x0

    .restart local v40    # "_arg3":Z
    goto :goto_2

    .end local v9    # "_arg2":I
    .end local v24    # "_arg0":Landroid/os/IBinder;
    .end local v28    # "_arg1":I
    .end local v40    # "_arg3":Z
    :sswitch_c
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_d
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCurrentUser(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v20    # "_arg0":I
    :sswitch_e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v25

    .local v25, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v32, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct/range {v32 .. v32}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .local v32, "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .local v38, "_arg2_length":I
    if-gez v38, :cond_3

    const/16 v37, 0x0

    :goto_3
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .local v39, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v32

    move-object/from16 v3, v37

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_4

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    .end local v39    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_3
    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v37, v0

    .local v37, "_arg2":[I
    goto :goto_3

    .end local v37    # "_arg2":[I
    .restart local v39    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v25    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v32    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v38    # "_arg2_length":I
    .end local v39    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_f
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/16 v26, 0x1

    .restart local v26    # "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v26    # "_arg0":Z
    .end local v28    # "_arg1":I
    :cond_5
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_5

    .end local v26    # "_arg0":Z
    :sswitch_10
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_11
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_12
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":I
    :sswitch_14
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v12, p0

    move-object v13, v7

    move-object v14, v8

    move v15, v9

    move/from16 v16, v10

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":I
    :sswitch_15
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v20    # "_arg0":I
    :sswitch_16
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_17
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Lcom/android/internal/statusbar/NotificationVisibility;

    .local v27, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [Lcom/android/internal/statusbar/NotificationVisibility;

    .local v34, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v27    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v34    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    :sswitch_18
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v33, 0x1

    .restart local v33    # "_arg1":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v36, 0x1

    .local v36, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v36

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v33    # "_arg1":Z
    .end local v36    # "_arg2":Z
    :cond_6
    const/16 v33, 0x0

    .restart local v33    # "_arg1":Z
    goto :goto_6

    :cond_7
    const/16 v36, 0x0

    .restart local v36    # "_arg2":Z
    goto :goto_7

    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":Z
    .end local v36    # "_arg2":Z
    :sswitch_19
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v28

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v20    # "_arg0":I
    .end local v28    # "_arg1":I
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_1a
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowState(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v20    # "_arg0":I
    .end local v28    # "_arg1":I
    :sswitch_1b
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v26, 0x1

    .restart local v26    # "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRecentApps(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v26    # "_arg0":Z
    :cond_8
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_8

    .end local v26    # "_arg0":Z
    :sswitch_1c
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/16 v26, 0x1

    .restart local v26    # "_arg0":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v33, 0x1

    .restart local v33    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideRecentApps(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v26    # "_arg0":Z
    .end local v33    # "_arg1":Z
    :cond_9
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_9

    :cond_a
    const/16 v33, 0x0

    .restart local v33    # "_arg1":Z
    goto :goto_a

    .end local v26    # "_arg0":Z
    .end local v33    # "_arg1":Z
    :sswitch_1d
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleRecentApps()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_1e
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->preloadRecentApps()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_1f
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelPreloadRecentApps()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_20
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionPending()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_21
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionCancelled()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_22
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .local v22, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .local v30, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionStarting(JJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v22    # "_arg0":J
    .end local v30    # "_arg1":J
    :sswitch_23
    const-string v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Bundle;

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startAssist(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_b
    const/16 v21, 0x0

    .local v21, "_arg0":Landroid/os/Bundle;
    goto :goto_b

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
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
