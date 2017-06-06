.class public abstract Lcom/android/internal/view/IInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x7

.field static final TRANSACTION_displayCompletions:I = 0x6

.field static final TRANSACTION_finishInput:I = 0x1

.field static final TRANSACTION_finishSession:I = 0x9

.field static final TRANSACTION_toggleSoftInput:I = 0x8

.field static final TRANSACTION_updateCursor:I = 0x5

.field static final TRANSACTION_updateCursorAnchorInfo:I = 0xa

.field static final TRANSACTION_updateExtractedText:I = 0x2

.field static final TRANSACTION_updateSelection:I = 0x3

.field static final TRANSACTION_viewClicked:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.view.IInputMethodSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/view/IInputMethodSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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

    move-result v1

    return v1

    :sswitch_0
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishInput()V

    const/4 v1, 0x1

    return v1

    :sswitch_2
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/ExtractedText;

    :goto_0
    invoke-virtual {p0, v2, v14}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/view/inputmethod/ExtractedText;
    goto :goto_0

    .end local v2    # "_arg0":I
    .end local v14    # "_arg1":Landroid/view/inputmethod/ExtractedText;
    :sswitch_3
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg5":I
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateSelection(IIIIII)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    :sswitch_4
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v11, 0x1

    .local v11, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/internal/view/IInputMethodSession$Stub;->viewClicked(Z)V

    const/4 v1, 0x1

    return v1

    .end local v11    # "_arg0":Z
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Z
    goto :goto_1

    .end local v11    # "_arg0":Z
    :sswitch_5
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursor(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/graphics/Rect;
    goto :goto_2

    .end local v8    # "_arg0":Landroid/graphics/Rect;
    :sswitch_6
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/view/inputmethod/CompletionInfo;

    .local v12, "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0, v12}, Lcom/android/internal/view/IInputMethodSession$Stub;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    const/4 v1, 0x1

    return v1

    .end local v12    # "_arg0":[Landroid/view/inputmethod/CompletionInfo;
    :sswitch_7
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_3
    invoke-virtual {p0, v10, v13}, Lcom/android/internal/view/IInputMethodSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .end local v10    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_8
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/IInputMethodSession$Stub;->toggleSoftInput(II)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_9
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishSession()V

    const/4 v1, 0x1

    return v1

    :sswitch_a
    const-string v1, "com.android.internal.view.IInputMethodSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/CursorAnchorInfo;

    :goto_4
    invoke-virtual {p0, v9}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/view/inputmethod/CursorAnchorInfo;
    goto :goto_4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
