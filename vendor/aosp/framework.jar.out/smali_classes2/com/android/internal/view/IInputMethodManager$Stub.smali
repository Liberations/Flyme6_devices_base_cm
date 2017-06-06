.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final TRANSACTION_addClient:I = 0x6

.field static final TRANSACTION_finishInput:I = 0x9

.field static final TRANSACTION_getCurrentInputMethodSubtype:I = 0x17

.field static final TRANSACTION_getEnabledInputMethodList:I = 0x2

.field static final TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x3

.field static final TRANSACTION_getInputMethodList:I = 0x1

.field static final TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x1e

.field static final TRANSACTION_getLastInputMethodSubtype:I = 0x4

.field static final TRANSACTION_getShortcutInputMethodsAndSubtypes:I = 0x5

.field static final TRANSACTION_hideMySoftInput:I = 0x11

.field static final TRANSACTION_hideSoftInput:I = 0xb

.field static final TRANSACTION_notifySuggestionPicked:I = 0x16

.field static final TRANSACTION_notifyUserAction:I = 0x1f

.field static final TRANSACTION_registerSuggestionSpansForNotification:I = 0x15

.field static final TRANSACTION_removeClient:I = 0x7

.field static final TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x1d

.field static final TRANSACTION_setCurrentInputMethodSubtype:I = 0x18

.field static final TRANSACTION_setImeWindowStatus:I = 0x14

.field static final TRANSACTION_setInputMethod:I = 0xf

.field static final TRANSACTION_setInputMethodAndSubtype:I = 0x10

.field static final TRANSACTION_setInputMethodEnabled:I = 0x1c

.field static final TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0x1b

.field static final TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0xe

.field static final TRANSACTION_showInputMethodPickerFromClient:I = 0xd

.field static final TRANSACTION_showMySoftInput:I = 0x12

.field static final TRANSACTION_showSoftInput:I = 0xa

.field static final TRANSACTION_startInput:I = 0x8

.field static final TRANSACTION_switchToLastInputMethod:I = 0x19

.field static final TRANSACTION_switchToNextInputMethod:I = 0x1a

.field static final TRANSACTION_updateStatusIcon:I = 0x13

.field static final TRANSACTION_windowGainedFocus:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
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
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList()Ljava/util/List;

    move-result-object v29

    .local v29, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_2
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v29

    .restart local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :sswitch_3
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/16 v20, 0x1

    .local v20, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v30

    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    .end local v20    # "_arg1":Z
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_0
    const/16 v20, 0x0

    .restart local v20    # "_arg1":Z
    goto :goto_0

    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Z
    :sswitch_4
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v26

    .local v26, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v26    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_5
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v28

    .local v28, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3

    .end local v28    # "_result":Ljava/util/List;
    :sswitch_6
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    .local v4, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v18

    .local v18, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1, v6, v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v18    # "_arg1":Lcom/android/internal/view/IInputContext;
    :sswitch_7
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_8
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v18

    .restart local v18    # "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/inputmethod/EditorInfo;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v4, v1, v2, v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v27

    .local v27, "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":I
    .end local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_2
    const/16 v23, 0x0

    .local v23, "_arg2":Landroid/view/inputmethod/EditorInfo;
    goto :goto_2

    .end local v23    # "_arg2":Landroid/view/inputmethod/EditorInfo;
    .restart local v7    # "_arg3":I
    .restart local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "_arg3":I
    .end local v18    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_9
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :sswitch_a
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/ResultReceiver;

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v31

    .local v31, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_5

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v31    # "_result":Z
    :cond_4
    const/16 v22, 0x0

    .local v22, "_arg2":Landroid/os/ResultReceiver;
    goto :goto_4

    .end local v22    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v31    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v17    # "_arg1":I
    .end local v31    # "_result":Z
    :sswitch_b
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/ResultReceiver;

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v31

    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_7

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v31    # "_result":Z
    :cond_6
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_6

    .end local v22    # "_arg2":Landroid/os/ResultReceiver;
    .restart local v31    # "_result":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v17    # "_arg1":I
    .end local v31    # "_result":Z
    :sswitch_c
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/EditorInfo;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v10

    .local v10, "_arg6":Lcom/android/internal/view/IInputContext;
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/view/IInputMethodManager$Stub;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v27

    .restart local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/InputBindResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v3, 0x1

    return v3

    .end local v10    # "_arg6":Lcom/android/internal/view/IInputContext;
    .end local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_8
    const/4 v9, 0x0

    .local v9, "_arg5":Landroid/view/inputmethod/EditorInfo;
    goto :goto_8

    .end local v9    # "_arg5":Landroid/view/inputmethod/EditorInfo;
    .restart local v10    # "_arg6":Lcom/android/internal/view/IInputContext;
    .restart local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v10    # "_arg6":Lcom/android/internal/view/IInputContext;
    .end local v27    # "_result":Lcom/android/internal/view/InputBindResult;
    :sswitch_d
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v17    # "_arg1":I
    :sswitch_e
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    .restart local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_a
    const/16 v24, 0x0

    .local v24, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_a

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_11
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideMySoftInput(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":I
    :sswitch_12
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showMySoftInput(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":I
    :sswitch_13
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1, v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":I
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_14
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1, v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->setImeWindowStatus(Landroid/os/IBinder;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":I
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":I
    :sswitch_15
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/style/SuggestionSpan;

    .local v16, "_arg0":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v16    # "_arg0":[Landroid/text/style/SuggestionSpan;
    :sswitch_16
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/text/style/SuggestionSpan;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1, v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z

    move-result v31

    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_c

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v6    # "_arg2":I
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v31    # "_result":Z
    :cond_b
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/text/style/SuggestionSpan;
    goto :goto_b

    .end local v13    # "_arg0":Landroid/text/style/SuggestionSpan;
    .restart local v6    # "_arg2":I
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v31    # "_result":Z
    :cond_c
    const/4 v3, 0x0

    goto :goto_c

    .end local v6    # "_arg2":I
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v31    # "_result":Z
    :sswitch_17
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v26

    .restart local v26    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_d

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d
    const/4 v3, 0x1

    return v3

    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .end local v26    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_18
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v31

    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_f

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v31    # "_result":Z
    :cond_e
    const/4 v14, 0x0

    .local v14, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_e

    .end local v14    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v31    # "_result":Z
    :cond_f
    const/4 v3, 0x0

    goto :goto_f

    .end local v31    # "_result":Z
    :sswitch_19
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToLastInputMethod(Landroid/os/IBinder;)Z

    move-result v31

    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_10

    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_10
    const/4 v3, 0x0

    goto :goto_10

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v31    # "_result":Z
    :sswitch_1a
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    const/16 v20, 0x1

    .restart local v20    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z

    move-result v31

    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_12

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v20    # "_arg1":Z
    .end local v31    # "_result":Z
    :cond_11
    const/16 v20, 0x0

    .restart local v20    # "_arg1":Z
    goto :goto_11

    .restart local v31    # "_result":Z
    :cond_12
    const/4 v3, 0x0

    goto :goto_12

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":Z
    .end local v31    # "_result":Z
    :sswitch_1b
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .restart local v12    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/view/IInputMethodManager$Stub;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z

    move-result v31

    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_13

    const/4 v3, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_13
    const/4 v3, 0x0

    goto :goto_13

    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v31    # "_result":Z
    :sswitch_1c
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    const/16 v20, 0x1

    .restart local v20    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)Z

    move-result v31

    .restart local v31    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_15

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v20    # "_arg1":Z
    .end local v31    # "_result":Z
    :cond_14
    const/16 v20, 0x0

    .restart local v20    # "_arg1":Z
    goto :goto_14

    .restart local v31    # "_result":Z
    :cond_15
    const/4 v3, 0x0

    goto :goto_15

    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Z
    .end local v31    # "_result":Z
    :sswitch_1d
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/view/inputmethod/InputMethodSubtype;

    .local v21, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_1e
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight()I

    move-result v25

    .local v25, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v25    # "_result":I
    :sswitch_1f
    const-string v3, "com.android.internal.view.IInputMethodManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/IInputMethodManager$Stub;->notifyUserAction(I)V

    const/4 v3, 0x1

    return v3

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
