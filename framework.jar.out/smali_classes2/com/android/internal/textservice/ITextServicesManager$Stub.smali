.class public abstract Lcom/android/internal/textservice/ITextServicesManager$Stub;
.super Landroid/os/Binder;
.source "ITextServicesManager.java"

# interfaces
.implements Lcom/android/internal/textservice/ITextServicesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ITextServicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.textservice.ITextServicesManager"

.field static final TRANSACTION_finishSpellCheckerService:I = 0x4

.field static final TRANSACTION_getCurrentSpellChecker:I = 0x1

.field static final TRANSACTION_getCurrentSpellCheckerSubtype:I = 0x2

.field static final TRANSACTION_getEnabledSpellCheckers:I = 0x9

.field static final TRANSACTION_getSpellCheckerService:I = 0x3

.field static final TRANSACTION_isSpellCheckerEnabled:I = 0x8

.field static final TRANSACTION_setCurrentSpellChecker:I = 0x5

.field static final TRANSACTION_setCurrentSpellCheckerSubtype:I = 0x6

.field static final TRANSACTION_setSpellCheckerEnabled:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.textservice.ITextServicesManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/textservice/ITextServicesManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/textservice/ITextServicesManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v11

    .local v11, "_result":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Landroid/view/textservice/SpellCheckerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Landroid/view/textservice/SpellCheckerInfo;
    :sswitch_2
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .local v10, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v10}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v12

    .local v12, "_result":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_2

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/view/textservice/SpellCheckerSubtype;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v1, 0x1

    return v1

    .end local v10    # "_arg1":Z
    .end local v12    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Z
    goto :goto_1

    .restart local v12    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Z
    .end local v12    # "_result":Landroid/view/textservice/SpellCheckerSubtype;
    :sswitch_3
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v4

    .local v4, "_arg2":Lcom/android/internal/textservice/ITextServicesSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v5

    .local v5, "_arg3":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    :goto_3
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg4":Landroid/os/Bundle;
    goto :goto_3

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/android/internal/textservice/ITextServicesSessionListener;
    .end local v5    # "_arg3":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .end local v6    # "_arg4":Landroid/os/Bundle;
    :sswitch_4
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v7

    .local v7, "_arg0":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    invoke-virtual {p0, v7}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    const/4 v1, 0x1

    return v1

    .end local v7    # "_arg0":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    :sswitch_5
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg1":I
    invoke-virtual {p0, v2, v9}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V

    const/4 v1, 0x1

    return v1

    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    :sswitch_7
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    .local v8, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v8}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->setSpellCheckerEnabled(Z)V

    const/4 v1, 0x1

    return v1

    .end local v8    # "_arg0":Z
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_4

    .end local v8    # "_arg0":Z
    :sswitch_8
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->isSpellCheckerEnabled()Z

    move-result v13

    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_5

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .end local v13    # "_result":Z
    :sswitch_9
    const-string v1, "com.android.internal.textservice.ITextServicesManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v14

    .local v14, "_result":[Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v1, 0x1

    return v1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
