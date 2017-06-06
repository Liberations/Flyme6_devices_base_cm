.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final TRANSACTION_addAccessibilityInteractionConnection:I = 0x6

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_getEnabledAccessibilityServiceList:I = 0x4

.field static final TRANSACTION_getInstalledAccessibilityServiceList:I = 0x3

.field static final TRANSACTION_getWindowToken:I = 0xb

.field static final TRANSACTION_interrupt:I = 0x5

.field static final TRANSACTION_registerUiTestAutomationService:I = 0x8

.field static final TRANSACTION_removeAccessibilityInteractionConnection:I = 0x7

.field static final TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final TRANSACTION_temporaryEnableAccessibilityStateUntilKeyguardRemoved:I = 0xa

.field static final TRANSACTION_unregisterUiTestAutomationService:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/accessibility/IAccessibilityManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
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

    move-result v19

    return v19

    :sswitch_0
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    :sswitch_1
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v8

    .local v8, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v15

    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    .end local v8    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v9    # "_arg1":I
    .end local v15    # "_result":I
    :sswitch_2
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_0

    sget-object v19, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v18

    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_1

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    .end local v9    # "_arg1":I
    .end local v18    # "_result":Z
    :cond_0
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    .end local v7    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v9    # "_arg1":I
    .restart local v18    # "_result":Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .end local v9    # "_arg1":I
    .end local v18    # "_result":Z
    :sswitch_3
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v17

    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v19, 0x1

    return v19

    .end local v2    # "_arg0":I
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_4
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v17

    .restart local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v19, 0x1

    return v19

    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_5
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    .end local v2    # "_arg0":I
    :sswitch_6
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .local v6, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v11

    .local v11, "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v13}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I

    move-result v15

    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v19, 0x1

    return v19

    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v11    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v13    # "_arg2":I
    .end local v15    # "_result":I
    :sswitch_7
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .restart local v6    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    .end local v6    # "_arg0":Landroid/view/IWindow;
    :sswitch_8
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v10

    .local v10, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_2

    sget-object v19, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/accessibilityservice/AccessibilityServiceInfo;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    :cond_2
    const/4 v14, 0x0

    .local v14, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_2

    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v14    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_9
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v3

    .local v3, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    .end local v3    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :sswitch_a
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_3

    sget-object v19, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_4

    const/4 v12, 0x1

    .local v12, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Landroid/view/accessibility/IAccessibilityManager$Stub;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v19, 0x1

    return v19

    .end local v12    # "_arg1":Z
    :cond_3
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Z
    goto :goto_4

    .end local v12    # "_arg1":Z
    :sswitch_b
    const-string v19, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(I)Landroid/os/IBinder;

    move-result-object v16

    .local v16, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v19, 0x1

    return v19

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
