.class public abstract Lcom/android/internal/view/IInputMethod$Stub;
.super Landroid/os/Binder;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethod"

.field static final TRANSACTION_attachToken:I = 0x1

.field static final TRANSACTION_bindInput:I = 0x2

.field static final TRANSACTION_changeInputMethodSubtype:I = 0xb

.field static final TRANSACTION_createSession:I = 0x6

.field static final TRANSACTION_hideSoftInput:I = 0xa

.field static final TRANSACTION_restartInput:I = 0x5

.field static final TRANSACTION_revokeSession:I = 0x8

.field static final TRANSACTION_setSessionEnabled:I = 0x7

.field static final TRANSACTION_showSoftInput:I = 0x9

.field static final TRANSACTION_startInput:I = 0x4

.field static final TRANSACTION_unbindInput:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.view.IInputMethod"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethod$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.view.IInputMethod"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethod$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_1
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethod$Stub;->attachToken(Landroid/os/IBinder;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputBinding;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/view/IInputMethod$Stub;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    const/4 v11, 0x1

    return v11

    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/view/inputmethod/InputBinding;
    goto :goto_0

    .end local v3    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :sswitch_3
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethod$Stub;->unbindInput()V

    const/4 v11, 0x1

    return v11

    :sswitch_4
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v5

    .local v5, "_arg0":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/EditorInfo;

    :goto_1
    invoke-virtual {p0, v5, v8}, Lcom/android/internal/view/IInputMethod$Stub;->startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V

    const/4 v11, 0x1

    return v11

    :cond_1
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/view/inputmethod/EditorInfo;
    goto :goto_1

    .end local v5    # "_arg0":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    :sswitch_5
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v5

    .restart local v5    # "_arg0":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/EditorInfo;

    :goto_2
    invoke-virtual {p0, v5, v8}, Lcom/android/internal/view/IInputMethod$Stub;->restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V

    const/4 v11, 0x1

    return v11

    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    goto :goto_2

    .end local v5    # "_arg0":Lcom/android/internal/view/IInputContext;
    .end local v8    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    :sswitch_6
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputChannel;

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/view/IInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputSessionCallback;

    move-result-object v9

    .local v9, "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    invoke-virtual {p0, v2, v9}, Lcom/android/internal/view/IInputMethod$Stub;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    const/4 v11, 0x1

    return v11

    .end local v9    # "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    :cond_3
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/view/InputChannel;
    goto :goto_3

    .end local v2    # "_arg0":Landroid/view/InputChannel;
    :sswitch_7
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v6

    .local v6, "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x1

    .local v10, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v6, v10}, Lcom/android/internal/view/IInputMethod$Stub;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    const/4 v11, 0x1

    return v11

    .end local v10    # "_arg1":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Z
    goto :goto_4

    .end local v6    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    .end local v10    # "_arg1":Z
    :sswitch_8
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v6

    .restart local v6    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p0, v6}, Lcom/android/internal/view/IInputMethod$Stub;->revokeSession(Lcom/android/internal/view/IInputMethodSession;)V

    const/4 v11, 0x1

    return v11

    .end local v6    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    :sswitch_9
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    sget-object v11, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ResultReceiver;

    :goto_5
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/view/IInputMethod$Stub;->showSoftInput(ILandroid/os/ResultReceiver;)V

    const/4 v11, 0x1

    return v11

    :cond_5
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_5

    .end local v0    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/ResultReceiver;
    :sswitch_a
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ResultReceiver;

    :goto_6
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/view/IInputMethod$Stub;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    const/4 v11, 0x1

    return v11

    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/os/ResultReceiver;
    goto :goto_6

    .end local v0    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/ResultReceiver;
    :sswitch_b
    const-string v11, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    :goto_7
    invoke-virtual {p0, v4}, Lcom/android/internal/view/IInputMethod$Stub;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    const/4 v11, 0x1

    return v11

    :cond_7
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_7

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
