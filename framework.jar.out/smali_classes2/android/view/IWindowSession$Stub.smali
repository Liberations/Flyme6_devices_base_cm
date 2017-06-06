.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_dragRecipientEntered:I = 0x13

.field static final TRANSACTION_dragRecipientExited:I = 0x14

.field static final TRANSACTION_finishDrawing:I = 0xc

.field static final TRANSACTION_getDisplayFrame:I = 0xb

.field static final TRANSACTION_getInTouchMode:I = 0xe

.field static final TRANSACTION_getLastWallpaperX:I = 0x18

.field static final TRANSACTION_getLastWallpaperY:I = 0x19

.field static final TRANSACTION_getWindowId:I = 0x1d

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1c

.field static final TRANSACTION_outOfMemory:I = 0x8

.field static final TRANSACTION_performDeferredDestroy:I = 0x7

.field static final TRANSACTION_performDrag:I = 0x11

.field static final TRANSACTION_performHapticFeedback:I = 0xf

.field static final TRANSACTION_pokeDrawLock_29:I = 0x1e

.field static final TRANSACTION_prepareDrag:I = 0x10

.field static final TRANSACTION_relayout_5:I = 0x6

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x12

.field static final TRANSACTION_sendWallpaperCommand:I = 0x1a

.field static final TRANSACTION_setInTouchMode:I = 0xd

.field static final TRANSACTION_setInsets:I = 0xa

.field static final TRANSACTION_setTransparentRegion:I = 0x9

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x17

.field static final TRANSACTION_setWallpaperPosition:I = 0x15

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x1b

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/IWindowSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 73
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
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .local v4, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg3":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .local v8, "_arg4":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .local v9, "_arg5":Landroid/graphics/Rect;
    new-instance v10, Landroid/view/InputChannel;

    invoke-direct {v10}, Landroid/view/InputChannel;-><init>()V

    .local v10, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v68

    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    if-eqz v9, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    if-eqz v10, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v3}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v10    # "_arg6":Landroid/view/InputChannel;
    .end local v68    # "_result":I
    :cond_0
    const/4 v6, 0x0

    .local v6, "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v10    # "_arg6":Landroid/view/InputChannel;
    .restart local v68    # "_result":I
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v10    # "_arg6":Landroid/view/InputChannel;
    .end local v68    # "_result":I
    :sswitch_2
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg4":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .local v18, "_arg6":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .local v19, "_arg7":Landroid/graphics/Rect;
    new-instance v20, Landroid/view/InputChannel;

    invoke-direct/range {v20 .. v20}, Landroid/view/InputChannel;-><init>()V

    .local v20, "_arg8":Landroid/view/InputChannel;
    move-object/from16 v11, p0

    move-object v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    move-object/from16 v17, v9

    invoke-virtual/range {v11 .. v20}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v68

    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v9, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    if-eqz v18, :cond_6

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    if-eqz v19, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    if-eqz v20, :cond_8

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v20    # "_arg8":Landroid/view/InputChannel;
    .end local v68    # "_result":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_4

    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v16    # "_arg4":I
    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    .restart local v19    # "_arg7":Landroid/graphics/Rect;
    .restart local v20    # "_arg8":Landroid/view/InputChannel;
    .restart local v68    # "_result":I
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v20    # "_arg8":Landroid/view/InputChannel;
    .end local v68    # "_result":I
    :sswitch_3
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v68

    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v8, :cond_a

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    if-eqz v9, :cond_b

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v68    # "_result":I
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_9

    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v68    # "_result":I
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v68    # "_result":I
    :sswitch_4
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg4":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    move-object/from16 v11, p0

    move-object v12, v4

    move v13, v5

    move-object v14, v6

    move v15, v7

    move-object/from16 v17, v9

    invoke-virtual/range {v11 .. v18}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v68

    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v9, :cond_d

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d
    if-eqz v18, :cond_e

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v68    # "_result":I
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_c

    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    .restart local v16    # "_arg4":I
    .restart local v18    # "_arg6":Landroid/graphics/Rect;
    .restart local v68    # "_result":I
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    .end local v16    # "_arg4":I
    .end local v18    # "_arg6":Landroid/graphics/Rect;
    .end local v68    # "_result":I
    :sswitch_5
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_6
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "_arg6":I
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .restart local v19    # "_arg7":Landroid/graphics/Rect;
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .local v30, "_arg8":Landroid/graphics/Rect;
    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .local v31, "_arg9":Landroid/graphics/Rect;
    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    .local v32, "_arg10":Landroid/graphics/Rect;
    new-instance v33, Landroid/graphics/Rect;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/Rect;-><init>()V

    .local v33, "_arg11":Landroid/graphics/Rect;
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .local v34, "_arg12":Landroid/graphics/Rect;
    new-instance v35, Landroid/content/res/Configuration;

    invoke-direct/range {v35 .. v35}, Landroid/content/res/Configuration;-><init>()V

    .local v35, "_arg13":Landroid/content/res/Configuration;
    new-instance v36, Landroid/view/Surface;

    invoke-direct/range {v36 .. v36}, Landroid/view/Surface;-><init>()V

    .local v36, "_arg14":Landroid/view/Surface;
    move-object/from16 v21, p0

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v16

    move-object/from16 v29, v19

    invoke-virtual/range {v21 .. v36}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v68

    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v19, :cond_10

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_10
    if-eqz v30, :cond_11

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    if-eqz v31, :cond_12

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_12
    if-eqz v32, :cond_13

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    if-eqz v33, :cond_14

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_14
    if-eqz v34, :cond_15

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_15
    if-eqz v35, :cond_16

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_16
    if-eqz v36, :cond_17

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    const/4 v3, 0x1

    return v3

    .end local v7    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v27    # "_arg5":I
    .end local v28    # "_arg6":I
    .end local v30    # "_arg8":Landroid/graphics/Rect;
    .end local v31    # "_arg9":Landroid/graphics/Rect;
    .end local v32    # "_arg10":Landroid/graphics/Rect;
    .end local v33    # "_arg11":Landroid/graphics/Rect;
    .end local v34    # "_arg12":Landroid/graphics/Rect;
    .end local v35    # "_arg13":Landroid/content/res/Configuration;
    .end local v36    # "_arg14":Landroid/view/Surface;
    .end local v68    # "_result":I
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_f

    .end local v6    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "_arg3":I
    .restart local v16    # "_arg4":I
    .restart local v19    # "_arg7":Landroid/graphics/Rect;
    .restart local v27    # "_arg5":I
    .restart local v28    # "_arg6":I
    .restart local v30    # "_arg8":Landroid/graphics/Rect;
    .restart local v31    # "_arg9":Landroid/graphics/Rect;
    .restart local v32    # "_arg10":Landroid/graphics/Rect;
    .restart local v33    # "_arg11":Landroid/graphics/Rect;
    .restart local v34    # "_arg12":Landroid/graphics/Rect;
    .restart local v35    # "_arg13":Landroid/content/res/Configuration;
    .restart local v36    # "_arg14":Landroid/view/Surface;
    .restart local v68    # "_result":I
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v19    # "_arg7":Landroid/graphics/Rect;
    .end local v27    # "_arg5":I
    .end local v28    # "_arg6":I
    .end local v30    # "_arg8":Landroid/graphics/Rect;
    .end local v31    # "_arg9":Landroid/graphics/Rect;
    .end local v32    # "_arg10":Landroid/graphics/Rect;
    .end local v33    # "_arg11":Landroid/graphics/Rect;
    .end local v34    # "_arg12":Landroid/graphics/Rect;
    .end local v35    # "_arg13":Landroid/content/res/Configuration;
    .end local v36    # "_arg14":Landroid/view/Surface;
    .end local v68    # "_result":I
    :sswitch_7
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->performDeferredDestroy(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_8
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v72

    .local v72, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v72, :cond_18

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_18
    const/4 v3, 0x0

    goto :goto_18

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v72    # "_result":Z
    :sswitch_9
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/graphics/Region;

    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v4, v1}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_19
    const/16 v64, 0x0

    .local v64, "_arg1":Landroid/graphics/Region;
    goto :goto_19

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v64    # "_arg1":Landroid/graphics/Region;
    :sswitch_a
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/graphics/Rect;

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Region;

    :goto_1c
    move-object/from16 v21, p0

    move-object/from16 v22, v4

    move/from16 v23, v5

    invoke-virtual/range {v21 .. v26}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_1a
    const/16 v24, 0x0

    .local v24, "_arg2":Landroid/graphics/Rect;
    goto :goto_1a

    .end local v24    # "_arg2":Landroid/graphics/Rect;
    :cond_1b
    const/16 v25, 0x0

    .local v25, "_arg3":Landroid/graphics/Rect;
    goto :goto_1b

    .end local v25    # "_arg3":Landroid/graphics/Rect;
    :cond_1c
    const/16 v26, 0x0

    .local v26, "_arg4":Landroid/graphics/Region;
    goto :goto_1c

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v26    # "_arg4":Landroid/graphics/Region;
    :sswitch_b
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    new-instance v63, Landroid/graphics/Rect;

    invoke-direct/range {v63 .. v63}, Landroid/graphics/Rect;-><init>()V

    .local v63, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v4, v1}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v63, :cond_1d

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    const/4 v3, 0x1

    return v3

    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v63    # "_arg1":Landroid/graphics/Rect;
    :sswitch_c
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_d
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v62, 0x1

    .local v62, "_arg0":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v62    # "_arg0":Z
    :cond_1e
    const/16 v62, 0x0

    .restart local v62    # "_arg0":Z
    goto :goto_1e

    .end local v62    # "_arg0":Z
    :sswitch_e
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v72

    .restart local v72    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v72, :cond_1f

    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1f

    .end local v72    # "_result":Z
    :sswitch_f
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    const/16 v67, 0x1

    .local v67, "_arg2":Z
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v72

    .restart local v72    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v72, :cond_21

    const/4 v3, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v67    # "_arg2":Z
    .end local v72    # "_result":Z
    :cond_20
    const/16 v67, 0x0

    .restart local v67    # "_arg2":Z
    goto :goto_20

    .restart local v72    # "_result":Z
    :cond_21
    const/4 v3, 0x0

    goto :goto_21

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v67    # "_arg2":Z
    .end local v72    # "_result":Z
    :sswitch_10
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    new-instance v42, Landroid/view/Surface;

    invoke-direct/range {v42 .. v42}, Landroid/view/Surface;-><init>()V

    .local v42, "_arg4":Landroid/view/Surface;
    move-object/from16 v37, p0

    move-object/from16 v38, v4

    move/from16 v39, v5

    move/from16 v41, v7

    invoke-virtual/range {v37 .. v42}, Landroid/view/IWindowSession$Stub;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v70

    .local v70, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz v42, :cond_22

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_22
    const/4 v3, 0x1

    return v3

    :cond_22
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v5    # "_arg1":I
    .end local v7    # "_arg3":I
    .end local v40    # "_arg2":I
    .end local v42    # "_arg4":Landroid/view/Surface;
    .end local v70    # "_result":Landroid/os/IBinder;
    :sswitch_11
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v45

    .local v45, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v46

    .local v46, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v47

    .local v47, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v48

    .local v48, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v49

    .local v49, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/ClipData;

    :goto_23
    move-object/from16 v43, p0

    move-object/from16 v44, v4

    invoke-virtual/range {v43 .. v50}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v72

    .restart local v72    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v72, :cond_24

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v72    # "_result":Z
    :cond_23
    const/16 v50, 0x0

    .local v50, "_arg6":Landroid/content/ClipData;
    goto :goto_23

    .end local v50    # "_arg6":Landroid/content/ClipData;
    .restart local v72    # "_result":Z
    :cond_24
    const/4 v3, 0x0

    goto :goto_24

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v45    # "_arg1":Landroid/os/IBinder;
    .end local v46    # "_arg2":F
    .end local v47    # "_arg3":F
    .end local v48    # "_arg4":F
    .end local v49    # "_arg5":F
    .end local v72    # "_result":Z
    :sswitch_12
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    const/16 v66, 0x1

    .local v66, "_arg1":Z
    :goto_25
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v4, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v66    # "_arg1":Z
    :cond_25
    const/16 v66, 0x0

    .restart local v66    # "_arg1":Z
    goto :goto_25

    .end local v4    # "_arg0":Landroid/view/IWindow;
    .end local v66    # "_arg1":Z
    :sswitch_13
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_14
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .restart local v4    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v4    # "_arg0":Landroid/view/IWindow;
    :sswitch_15
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .local v52, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v53

    .local v53, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v46

    .restart local v46    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v47

    .restart local v47    # "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v48

    .restart local v48    # "_arg4":F
    move-object/from16 v51, p0

    move/from16 v54, v46

    move/from16 v55, v47

    move/from16 v56, v48

    invoke-virtual/range {v51 .. v56}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v46    # "_arg2":F
    .end local v47    # "_arg3":F
    .end local v48    # "_arg4":F
    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v53    # "_arg1":F
    :sswitch_16
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .restart local v52    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v52    # "_arg0":Landroid/os/IBinder;
    :sswitch_17
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .restart local v52    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .restart local v40    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v40

    invoke-virtual {v0, v1, v5, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    .end local v5    # "_arg1":I
    .end local v40    # "_arg2":I
    .end local v52    # "_arg0":Landroid/os/IBinder;
    :sswitch_18
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getLastWallpaperX()I

    move-result v68

    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v68    # "_result":I
    :sswitch_19
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getLastWallpaperY()I

    move-result v68

    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    .end local v68    # "_result":I
    :sswitch_1a
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .restart local v52    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .local v56, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .restart local v40    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/os/Bundle;

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    const/16 v61, 0x1

    .local v61, "_arg6":Z
    :goto_27
    move-object/from16 v54, p0

    move-object/from16 v55, v52

    move/from16 v57, v40

    move/from16 v58, v7

    move/from16 v59, v16

    invoke-virtual/range {v54 .. v61}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v69

    .local v69, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v69, :cond_28

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v69

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_28
    const/4 v3, 0x1

    return v3

    .end local v61    # "_arg6":Z
    .end local v69    # "_result":Landroid/os/Bundle;
    :cond_26
    const/16 v60, 0x0

    .local v60, "_arg5":Landroid/os/Bundle;
    goto :goto_26

    .end local v60    # "_arg5":Landroid/os/Bundle;
    :cond_27
    const/16 v61, 0x0

    .restart local v61    # "_arg6":Z
    goto :goto_27

    .restart local v69    # "_result":Landroid/os/Bundle;
    :cond_28
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .end local v7    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v40    # "_arg2":I
    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v56    # "_arg1":Ljava/lang/String;
    .end local v61    # "_arg6":Z
    .end local v69    # "_result":Landroid/os/Bundle;
    :sswitch_1b
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .restart local v52    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Landroid/os/Bundle;

    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_29
    const/16 v65, 0x0

    .local v65, "_arg1":Landroid/os/Bundle;
    goto :goto_29

    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v65    # "_arg1":Landroid/os/Bundle;
    :sswitch_1c
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .restart local v52    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/graphics/Rect;

    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_2a
    const/16 v63, 0x0

    .local v63, "_arg1":Landroid/graphics/Rect;
    goto :goto_2a

    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v63    # "_arg1":Landroid/graphics/Rect;
    :sswitch_1d
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .restart local v52    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v71

    .local v71, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v71, :cond_2b

    invoke-interface/range {v71 .. v71}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_2b
    const/4 v3, 0x0

    goto :goto_2b

    .end local v52    # "_arg0":Landroid/os/IBinder;
    .end local v71    # "_result":Landroid/view/IWindowId;
    :sswitch_1e
    const-string v3, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .restart local v52    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

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
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
