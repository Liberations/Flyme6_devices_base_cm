.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnection"

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x1

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x2

.field static final TRANSACTION_findFocus:I = 0x4

.field static final TRANSACTION_focusSearch:I = 0x5

.field static final TRANSACTION_performAccessibilityAction:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 37
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

    move-result v2

    return v2

    :sswitch_0
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .local v3, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Region;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v7

    .local v7, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/MagnificationSpec;

    :goto_1
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    return v2

    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg1":Landroid/graphics/Region;
    goto :goto_0

    .end local v5    # "_arg1":Landroid/graphics/Region;
    .restart local v6    # "_arg2":I
    .restart local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v8    # "_arg4":I
    .restart local v9    # "_arg5":I
    .restart local v10    # "_arg6":J
    :cond_1
    const/4 v12, 0x0

    .local v12, "_arg7":Landroid/view/MagnificationSpec;
    goto :goto_1

    .end local v3    # "_arg0":J
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":J
    .end local v12    # "_arg7":Landroid/view/MagnificationSpec;
    :sswitch_2
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Region;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v19

    .local v19, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .local v22, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    :goto_3
    move-object/from16 v13, p0

    move-wide v14, v3

    move/from16 v20, v9

    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    return v2

    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_2
    const/16 v17, 0x0

    .local v17, "_arg2":Landroid/graphics/Region;
    goto :goto_2

    .end local v17    # "_arg2":Landroid/graphics/Region;
    .restart local v9    # "_arg5":I
    .restart local v18    # "_arg3":I
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v21    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_3
    const/16 v24, 0x0

    .local v24, "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_3

    .end local v3    # "_arg0":J
    .end local v9    # "_arg5":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_3
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Region;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v19

    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .restart local v21    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    :goto_5
    move-object/from16 v13, p0

    move-wide v14, v3

    move/from16 v20, v9

    invoke-virtual/range {v13 .. v24}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    return v2

    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "_arg2":Landroid/graphics/Region;
    goto :goto_4

    .end local v17    # "_arg2":Landroid/graphics/Region;
    .restart local v9    # "_arg5":I
    .restart local v18    # "_arg3":I
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v21    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_5

    .end local v3    # "_arg0":J
    .end local v9    # "_arg5":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    :sswitch_4
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Region;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v19

    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .restart local v21    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    :goto_7
    move-object/from16 v25, p0

    move-wide/from16 v26, v3

    move-object/from16 v29, v17

    move/from16 v30, v18

    move-object/from16 v31, v19

    move/from16 v32, v9

    move/from16 v33, v21

    move-wide/from16 v34, v22

    move-object/from16 v36, v24

    invoke-virtual/range {v25 .. v36}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    return v2

    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_6
    const/16 v17, 0x0

    .restart local v17    # "_arg2":Landroid/graphics/Region;
    goto :goto_6

    .end local v17    # "_arg2":Landroid/graphics/Region;
    .restart local v9    # "_arg5":I
    .restart local v18    # "_arg3":I
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v21    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_7
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_7

    .end local v3    # "_arg0":J
    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v28    # "_arg1":I
    :sswitch_5
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Region;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v19

    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .restart local v21    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/MagnificationSpec;

    :goto_9
    move-object/from16 v25, p0

    move-wide/from16 v26, v3

    move-object/from16 v29, v17

    move/from16 v30, v18

    move-object/from16 v31, v19

    move/from16 v32, v9

    move/from16 v33, v21

    move-wide/from16 v34, v22

    move-object/from16 v36, v24

    invoke-virtual/range {v25 .. v36}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    const/4 v2, 0x1

    return v2

    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_8
    const/16 v17, 0x0

    .restart local v17    # "_arg2":Landroid/graphics/Region;
    goto :goto_8

    .end local v17    # "_arg2":Landroid/graphics/Region;
    .restart local v9    # "_arg5":I
    .restart local v18    # "_arg3":I
    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v21    # "_arg6":I
    .restart local v22    # "_arg7":J
    :cond_9
    const/16 v24, 0x0

    .restart local v24    # "_arg8":Landroid/view/MagnificationSpec;
    goto :goto_9

    .end local v3    # "_arg0":J
    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    .end local v24    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v28    # "_arg1":I
    :sswitch_6
    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .restart local v3    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .restart local v28    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/Bundle;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .restart local v18    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v19

    .restart local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .restart local v21    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .restart local v22    # "_arg7":J
    move-object/from16 v25, p0

    move-wide/from16 v26, v3

    move/from16 v30, v18

    move-object/from16 v31, v19

    move/from16 v32, v9

    move/from16 v33, v21

    move-wide/from16 v34, v22

    invoke-virtual/range {v25 .. v35}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    const/4 v2, 0x1

    return v2

    .end local v9    # "_arg5":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":J
    :cond_a
    const/16 v29, 0x0

    .local v29, "_arg2":Landroid/os/Bundle;
    goto :goto_a

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
