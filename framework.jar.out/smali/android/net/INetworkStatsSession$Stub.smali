.class public abstract Landroid/net/INetworkStatsSession$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsSession.java"

# interfaces
.implements Landroid/net/INetworkStatsSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsSession"

.field static final TRANSACTION_close:I = 0x8

.field static final TRANSACTION_getDeviceSummaryForNetwork:I = 0x1

.field static final TRANSACTION_getHistoryForNetwork:I = 0x3

.field static final TRANSACTION_getHistoryForUid:I = 0x5

.field static final TRANSACTION_getHistoryIntervalForUid:I = 0x6

.field static final TRANSACTION_getRelevantUids:I = 0x7

.field static final TRANSACTION_getSummaryForAllUid:I = 0x4

.field static final TRANSACTION_getSummaryForNetwork:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.INetworkStatsSession"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.net.INetworkStatsSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/INetworkStatsSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkStatsSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStatsSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
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
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg2":J
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/net/INetworkStatsSession$Stub;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v19

    .local v19, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v19, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v2, 0x1

    return v2

    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_0

    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v4    # "_arg1":J
    .restart local v6    # "_arg2":J
    .restart local v19    # "_result":Landroid/net/NetworkStats;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :sswitch_2
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg2":J
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v19

    .restart local v19    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v19, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v2, 0x1

    return v2

    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_2

    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v4    # "_arg1":J
    .restart local v6    # "_arg2":J
    .restart local v19    # "_result":Landroid/net/NetworkStats;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :sswitch_3
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v20

    .local v20, "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v2, 0x1

    return v2

    .end local v11    # "_arg1":I
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_4

    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v11    # "_arg1":I
    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .end local v11    # "_arg1":I
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_4
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .restart local v4    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v8, 0x1

    .local v8, "_arg3":Z
    :goto_7
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/net/INetworkStatsSession$Stub;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v19

    .restart local v19    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v19, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/4 v2, 0x1

    return v2

    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Z
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_6

    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v4    # "_arg1":J
    .restart local v6    # "_arg2":J
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "_arg3":Z
    goto :goto_7

    .restart local v19    # "_result":Landroid/net/NetworkStats;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Z
    .end local v19    # "_result":Landroid/net/NetworkStats;
    :sswitch_5
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg4":I
    move-object/from16 v9, p0

    move-object v10, v3

    invoke-virtual/range {v9 .. v14}, Landroid/net/INetworkStatsSession$Stub;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v20

    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v2, 0x1

    return v2

    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_9

    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v11    # "_arg1":I
    .restart local v12    # "_arg2":I
    .restart local v13    # "_arg3":I
    .restart local v14    # "_arg4":I
    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_6
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .restart local v14    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .local v15, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .local v17, "_arg6":J
    move-object/from16 v9, p0

    move-object v10, v3

    invoke-virtual/range {v9 .. v18}, Landroid/net/INetworkStatsSession$Stub;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v20

    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    const/4 v2, 0x1

    return v2

    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v15    # "_arg5":J
    .end local v17    # "_arg6":J
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_b

    .end local v3    # "_arg0":Landroid/net/NetworkTemplate;
    .restart local v11    # "_arg1":I
    .restart local v12    # "_arg2":I
    .restart local v13    # "_arg3":I
    .restart local v14    # "_arg4":I
    .restart local v15    # "_arg5":J
    .restart local v17    # "_arg6":J
    .restart local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v15    # "_arg5":J
    .end local v17    # "_arg6":J
    .end local v20    # "_result":Landroid/net/NetworkStatsHistory;
    :sswitch_7
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->getRelevantUids()[I

    move-result-object v21

    .local v21, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x1

    return v2

    .end local v21    # "_result":[I
    :sswitch_8
    const-string v2, "android.net.INetworkStatsSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsSession$Stub;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
