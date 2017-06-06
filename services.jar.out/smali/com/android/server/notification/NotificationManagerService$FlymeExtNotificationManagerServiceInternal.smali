.class Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;
.super Lcom/android/server/notification/NotificationManagerService$5;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlymeExtNotificationManagerServiceInternal"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.FlymeExtINotificationManager"


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public getPackageHeadsUpVisibility(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUI()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldRankingHelper()Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageRemindEnable(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUI()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldRankingHelper()Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$5;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :pswitch_0
    const-string v6, "android.app.FlymeExtINotificationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v4

    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_1
    const-string v6, "android.app.FlymeExtINotificationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->setPackageHeadsUpVisibility(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_2
    const-string v8, "android.app.FlymeExtINotificationManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v5

    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_3
    const-string v6, "android.app.FlymeExtINotificationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .local v3, "_arg2":Z
    :goto_0
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->setPackageRemindEnable(Ljava/lang/String;IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    .end local v3    # "_arg2":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Z
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPackageHeadsUpVisibility(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUI()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldRankingHelper()Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackageHeadsUpVisibility(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    return-void
.end method

.method public setPackageRemindEnable(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUI()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->flymeGetFieldRankingHelper()Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPackageRemindEnable(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$FlymeExtNotificationManagerServiceInternal;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    return-void
.end method
