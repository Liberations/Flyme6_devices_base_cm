.class public Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;
.super Ljava/lang/Object;
.source "DcSwitchAsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectInfo"
.end annotation


# instance fields
.field final request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

.field final responseMessage:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "req"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->request:Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$ConnectInfo;->responseMessage:Landroid/os/Message;

    return-void
.end method
