.class final Landroid/app/ActivityThread$FlymeApplicationThread;
.super Landroid/app/ActivityThread$ApplicationThread;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FlymeApplicationThread"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.FlymeExtIApplicationThread"

.field static final SHRINK_MEMORY:I = 0xcb


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    iput-object p1, p0, Landroid/app/ActivityThread$FlymeApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread;)V

    return-void
.end method

.method private scheduleShrinkMemory(I)V
    .locals 3
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$FlymeApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xcb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/ActivityThread;->invokeMethodSendMessage(ILjava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread$ApplicationThread;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    const-string v1, "android.app.FlymeExtIApplicationThread"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "level":I
    invoke-direct {p0, v0}, Landroid/app/ActivityThread$FlymeApplicationThread;->scheduleShrinkMemory(I)V

    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
