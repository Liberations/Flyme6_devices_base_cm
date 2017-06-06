.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_getNextAlarmClock:I = 0x6

.field static final TRANSACTION_getNextWakeFromIdleTime:I = 0x5

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setTime:I = 0x2

.field static final TRANSACTION_setTimeZone:I = 0x3

.field static final TRANSACTION_updateBlockedUids:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.app.IAlarmManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/IAlarmManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IAlarmManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
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

    move-result v4

    return v4

    :sswitch_0
    const-string v4, "android.app.IAlarmManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string v4, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/WorkSource;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager$AlarmClockInfo;

    :goto_2
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Landroid/app/IAlarmManager$Stub;->set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v13, 0x0

    .local v13, "_arg5":Landroid/app/PendingIntent;
    goto :goto_0

    .end local v13    # "_arg5":Landroid/app/PendingIntent;
    :cond_1
    const/4 v14, 0x0

    .local v14, "_arg6":Landroid/os/WorkSource;
    goto :goto_1

    .end local v14    # "_arg6":Landroid/os/WorkSource;
    :cond_2
    const/4 v15, 0x0

    .local v15, "_arg7":Landroid/app/AlarmManager$AlarmClockInfo;
    goto :goto_2

    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":J
    .end local v12    # "_arg4":I
    .end local v15    # "_arg7":Landroid/app/AlarmManager$AlarmClockInfo;
    :sswitch_2
    const-string v4, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .local v16, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/IAlarmManager$Stub;->setTime(J)Z

    move-result v24

    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .end local v16    # "_arg0":J
    .end local v24    # "_result":Z
    :sswitch_3
    const-string v4, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v19    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v4, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_4
    const/16 v18, 0x0

    .local v18, "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    .end local v18    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string v4, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IAlarmManager$Stub;->getNextWakeFromIdleTime()J

    move-result-wide v22

    .local v22, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    .end local v22    # "_result":J
    :sswitch_6
    const-string v4, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/IAlarmManager$Stub;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v21

    .local v21, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v4, 0x1

    return v4

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v5    # "_arg0":I
    .end local v21    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :sswitch_7
    const-string v4, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v20, 0x1

    .local v20, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/app/IAlarmManager$Stub;->updateBlockedUids(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v20    # "_arg1":Z
    :cond_6
    const/16 v20, 0x0

    .restart local v20    # "_arg1":Z
    goto :goto_6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
