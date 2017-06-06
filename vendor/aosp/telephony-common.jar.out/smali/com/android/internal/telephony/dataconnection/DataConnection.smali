.class public Lcom/android/internal/telephony/dataconnection/DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
    }
.end annotation


# static fields
.field static final BASE:I = 0x40000

.field private static final CMD_TO_STRING_COUNT:I = 0x11

.field protected static final DBG:Z = true

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field static final EVENT_BW_REFRESH_RESPONSE:I = 0x4000e

.field static final EVENT_CONNECT:I = 0x40000

.field static final EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED:I = 0x4000b

.field static final EVENT_DATA_CONNECTION_ROAM_OFF:I = 0x4000d

.field static final EVENT_DATA_CONNECTION_ROAM_ON:I = 0x4000c

.field static final EVENT_DATA_CONNECTION_VOICE_CALL_ENDED:I = 0x40010

.field static final EVENT_DATA_CONNECTION_VOICE_CALL_STARTED:I = 0x4000f

.field static final EVENT_DATA_STATE_CHANGED:I = 0x40007

.field static final EVENT_DEACTIVATE_DONE:I = 0x40003

.field static final EVENT_DISCONNECT:I = 0x40004

.field static final EVENT_DISCONNECT_ALL:I = 0x40006

.field static final EVENT_GET_LAST_FAIL_DONE:I = 0x40002

.field static final EVENT_LOST_CONNECTION:I = 0x40009

.field protected static final EVENT_RETRY_CONNECTION:I = 0x4000a

.field static final EVENT_RIL_CONNECTED:I = 0x40005

.field static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x40001

.field static final EVENT_TEAR_DOWN_NOW:I = 0x40008

.field private static final NETWORK_TYPE:Ljava/lang/String; = "MOBILE"

.field private static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field private static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field private static final TCP_BUFFER_SIZES_1XRTT:Ljava/lang/String; = "16384,32768,131072,4096,16384,102400"

.field private static final TCP_BUFFER_SIZES_EDGE:Ljava/lang/String; = "4093,26280,70800,4096,16384,70800"

.field private static final TCP_BUFFER_SIZES_EHRPD:Ljava/lang/String; = "131072,262144,1048576,4096,16384,524288"

.field private static final TCP_BUFFER_SIZES_EVDO:Ljava/lang/String; = "4094,87380,262144,4096,16384,262144"

.field private static final TCP_BUFFER_SIZES_GPRS:Ljava/lang/String; = "4092,8760,48000,4096,8760,48000"

.field private static final TCP_BUFFER_SIZES_HSDPA:Ljava/lang/String; = "61167,367002,1101005,8738,52429,262114"

.field private static final TCP_BUFFER_SIZES_HSPA:Ljava/lang/String; = "40778,244668,734003,16777,100663,301990"

.field private static final TCP_BUFFER_SIZES_HSPAP:Ljava/lang/String; = "122334,734003,2202010,32040,192239,576717"

.field private static final TCP_BUFFER_SIZES_LTE:Ljava/lang/String; = "524288,1048576,2097152,262144,524288,1048576"

.field private static final TCP_BUFFER_SIZES_UMTS:Ljava/lang/String; = "58254,349525,1048576,58254,349525,1048576"

.field protected static final VDBG:Z = true

.field protected static mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

.field mApnContexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;",
            ">;"
        }
    .end annotation
.end field

.field private mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field mCid:I

.field protected mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

.field private mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

.field private mCreateTime:J

.field private mDataRegState:I

.field private mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

.field private mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field protected mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

.field private mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field protected mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

.field private mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

.field private mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

.field private mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

.field private mId:I

.field private mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

.field private mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private mLastFailTime:J

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field protected mPcscfAddr:[Ljava/lang/String;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field mReconnectIntent:Landroid/app/PendingIntent;

.field mRetryManager:Lcom/android/internal/telephony/RetryManager;

.field protected mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

.field private mRilRat:I

.field protected mTag:I

.field private mUserData:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->hasDeferredMessages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p1, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllOfConnected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllOfDisconnectDcRetrying(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
    .locals 0
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p3, "sendAll"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 0
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->quit()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .locals 0
    .param p1, "rilRat"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 1
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateNetworkInfoSuspendState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->clearSettings()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dumpToLog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_CONNECT"

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_SETUP_DATA_CONNECTION_DONE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_GET_LAST_FAIL_DONE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DEACTIVATE_DONE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DISCONNECT"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_RIL_CONNECTED"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DISCONNECT_ALL"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DATA_STATE_CHANGED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_TEAR_DOWN_NOW"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_LOST_CONNECTION"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_RETRY_CONNECTION"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DATA_CONNECTION_ROAM_ON"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DATA_CONNECTION_ROAM_OFF"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_BW_REFRESH_RESPONSE"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DATA_CONNECTION_VOICE_CALL_STARTED"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_DATA_CONNECTION_VOICE_CALL_ENDED"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p5, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p6, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    const v4, 0x7fffffff

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p6}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v2, Lcom/android/internal/telephony/ConfigResourceUtil;

    invoke-direct {v2}, Lcom/android/internal/telephony/ConfigResourceUtil;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    new-instance v2, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v2}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    const/16 v2, 0x12c

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogRecSize(I)V

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogOnlyTransitions(Z)V

    const-string v2, "DataConnection constructor E"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v3, p0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .local v0, "networkType":I
    new-instance v2, Landroid/net/NetworkInfo;

    const-string v3, "MOBILE"

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v0, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    const-string v2, "DataConnection constructor X"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkSetMtu(Lcom/android/internal/telephony/dataconnection/ApnSetting;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTU set by call response to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTU set by APN to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, "mtu":I
    if-eqz v0, :cond_5

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTU set by config resource to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private clearSettings()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-void
.end method

.method static cmdToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "cmd"    # I

    .prologue
    const/high16 v3, 0x40000

    sub-int/2addr p0, v3

    if-ltz p0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v1, p0

    .local v0, "value":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p0, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    add-int v1, p0, v3

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private configureRetry(Z)V
    .locals 6
    .param p1, "forDefault"    # Z

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x3e8

    const/4 v3, 0x5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getRetryConfig(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "retryConfig":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v2, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "configureRetry: Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1, v3, v5, v4}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureRetry: forDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRetryManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v2, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "configureRetry: Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1, v3, v5, v4}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    goto :goto_0
.end method

.method private dumpToLog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    new-instance v1, Ljava/io/StringWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/io/Writer;)V

    invoke-virtual {p0, v3, v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private getRetryConfig(Z)Ljava/lang/String;
    .locals 3
    .param p1, "forDefault"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v1

    .local v1, "nt":I
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    const-string v2, "test.data_retry_config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v2, "ro.cdma.data_retry_config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_3

    const-string v2, "ro.gsm.data_retry_config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    const-string v2, "ro.gsm.2nd_data_retry_config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 4
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->configureRetry(Z)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mInitialMaxRetry:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RetryManager;->setCurMaxRetryCount(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RetryManager;->setRetryForever(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConnection:  RefCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mApnList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnectionParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConnection: incompatible apnSetting in ConnectionParams cp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return v3
.end method

.method private isDnsOk([Ljava/lang/String;)Z
    .locals 7
    .param p1, "domainNameServers"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "0.0.0.0"

    aget-object v3, p1, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0.0.0.0"

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v5

    :cond_1
    const/4 v0, 0x0

    .local v0, "allowNoDns":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConfigResUtil:Lcom/android/internal/telephony/ConfigResourceUtil;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "config_allowDataCallWithoutDns"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ConfigResourceUtil;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v0    # "allowNoDns":Z
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "isDnsOk: Data call without DNS allowed."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return v5

    .restart local v0    # "allowNoDns":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDnsOk: exception reading config. Ex= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "allowNoDns":Z
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v6

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const-string v2, "isDnsOk: return false apn.types[0]=%s APN_TYPE_MMS=%s isIpAddress(%s)=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v6

    aput-object v4, v3, v6

    const-string v4, "mms"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return v6
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "id"    # I
    .param p2, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p3, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p4, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    .local v0, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->start()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .local v1, "result":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_b

    aget-object v3, v7, v5

    .local v3, "type":Ljava/lang/String;
    const-string v9, "*"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v9, 0x7

    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v9, "default"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    :cond_2
    const-string v9, "mms"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    :cond_3
    const-string v9, "supl"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    :cond_4
    const-string v9, "dun"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    .local v2, "securedDunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v2, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_5
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    .end local v2    # "securedDunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_6
    const-string v9, "fota"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    :cond_7
    const-string v9, "ims"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    :cond_8
    const-string v9, "cbs"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    :cond_9
    const-string v9, "ia"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x7

    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    :cond_a
    const-string v9, "emergency"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_1

    .end local v3    # "type":Ljava/lang/String;
    :cond_b
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    :cond_c
    const/16 v4, 0xe

    .local v4, "up":I
    const/16 v0, 0xe

    .local v0, "down":I
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    packed-switch v5, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    return-object v1

    :pswitch_1
    const/16 v4, 0x50

    const/16 v0, 0x50

    goto :goto_2

    :pswitch_2
    const/16 v4, 0x3b

    const/16 v0, 0xec

    goto :goto_2

    :pswitch_3
    const/16 v4, 0x180

    const/16 v0, 0x180

    goto :goto_2

    :pswitch_4
    const/16 v4, 0xe

    const/16 v0, 0xe

    goto :goto_2

    :pswitch_5
    const/16 v4, 0x99

    const/16 v0, 0x999

    goto :goto_2

    :pswitch_6
    const/16 v4, 0x733

    const/16 v0, 0xc66

    goto :goto_2

    :pswitch_7
    const/16 v4, 0x64

    const/16 v0, 0x64

    goto :goto_2

    :pswitch_8
    const/16 v4, 0x800

    const/16 v0, 0x3800

    goto :goto_2

    :pswitch_9
    const/16 v4, 0x170a

    const/16 v0, 0x3800

    goto :goto_2

    :pswitch_a
    const/16 v4, 0x170a

    const/16 v0, 0x3800

    goto :goto_2

    :pswitch_b
    const/16 v4, 0x733

    const/16 v0, 0x1399

    goto :goto_2

    :pswitch_c
    const v4, 0xc800

    const v0, 0x19000

    goto :goto_2

    :pswitch_d
    const v4, 0xc800

    const v0, 0x19000

    goto :goto_2

    :pswitch_e
    const/16 v4, 0x99

    const/16 v0, 0x9d4

    goto :goto_2

    :pswitch_f
    const/16 v4, 0x2c00

    const v0, 0xa800

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method private static msgToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    if-nez p0, :cond_0

    const-string v1, "null"

    .local v1, "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "retVal":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "{what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " when="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget v2, p0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const-string v2, " arg1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget v2, p0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    const-string v2, " arg2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    const-string v2, " obj="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, " target="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " replyTo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "retVal":Ljava/lang/String;
    goto :goto_0
.end method

.method private notifyAllDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 3
    .param p1, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x4200f

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    return-void
.end method

.method private notifyAllOfConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const v1, 0x42000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    return-void
.end method

.method private notifyAllOfDisconnectDcRetrying(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const v1, 0x42022

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    return-void
.end method

.method private notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .locals 8
    .param p1, "alreadySent"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "event"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, p3, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eq v0, p1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    :cond_1
    new-instance v4, Landroid/util/Pair;

    iget v5, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mConnectionGeneration:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p2, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, "msg":Landroid/os/Message;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
    .locals 6
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p3, "sendAll"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    if-eqz v4, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    .local v1, "connectionCompletedMsg":Landroid/os/Message;
    iput-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v4, :cond_0

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "timeStamp":J
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iput v4, v1, Landroid/os/Message;->arg1:I

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p2, v4, :cond_3

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyConnectCompleted at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connectionCompletedMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v1    # "connectionCompletedMsg":Landroid/os/Message;
    .end local v2    # "timeStamp":J
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x42023

    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    :cond_2
    return-void

    .restart local v1    # "connectionCompletedMsg":Landroid/os/Message;
    .restart local v2    # "timeStamp":J
    :cond_3
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    if-nez p2, :cond_4

    sget-object p2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    :cond_4
    new-instance v4, Ljava/lang/Throwable;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0
.end method

.method private onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 14
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v4, 0x0

    const v3, 0x40001

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect: carrier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' APN=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' proxy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' port=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    const-string v1, "DataConnection.onConnect"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    if-lez v0, :cond_1

    new-instance v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v10}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .local v10, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v0

    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v0

    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    iput v2, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    iput v2, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    const-string v0, ""

    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:I

    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    iput v2, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .local v8, "msg":Landroid/os/Message;
    invoke-static {v8, v10, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect: FailBringUpAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " send error response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v0

    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    return-void

    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_1
    iput-wide v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    iput-wide v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .restart local v8    # "msg":Landroid/os/Message;
    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .local v9, "authType":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .local v7, "protocol":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .end local v7    # "protocol":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .restart local v7    # "protocol":Ljava/lang/String;
    goto :goto_1
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .local v1, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted stale cp.tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .local v2, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :goto_0
    return-object v2

    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted failed, ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto :goto_0

    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_1
    if-eqz v1, :cond_2

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto :goto_0

    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto :goto_0

    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    if-eqz v3, :cond_5

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto :goto_0

    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted received DataCallResponse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v3

    iget-object v2, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_0
.end method

.method private setLinkProperties(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 5
    .param p1, "response"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v1, 0x0

    .local v1, "okToUseSystemPropertyDns":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "propertyPrefix":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .local v0, "dnsServers":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dns1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dns2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v1

    .local v1, "okToUseSystemPropertyDns":Z
    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v3

    return-object v3
.end method

.method static slog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "DC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const v9, 0x40003

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    .local v2, "discReason":I
    const/4 v0, 0x0

    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz p1, :cond_0

    instance-of v5, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    if-eqz v5, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .local v3, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v0, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v6, "radioTurnedOff"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_4

    :cond_1
    const-string v4, "tearDownData radio is on, call deactivateDataCall"

    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {p0, v9, v7, v8, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    :goto_1
    return-void

    .end local v4    # "str":Ljava/lang/String;
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_3
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v6, "pdpReset"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_4
    const-string v4, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    .restart local v4    # "str":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, p1, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v1, "ar":Landroid/os/AsyncResult;
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {p0, v9, v5, v8, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private updateNetworkInfoSuspendState()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .local v1, "oldState":Landroid/net/NetworkInfo$DetailedState;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Setting suspend state without a NetworkAgent"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v1, v5, :cond_4

    :goto_1
    return v3

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .local v0, "ct":Lcom/android/internal/telephony/CallTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v5, :cond_2

    :goto_2
    return v3

    :cond_2
    move v3, v4

    goto :goto_2

    .end local v0    # "ct":Lcom/android/internal/telephony/CallTracker;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method private updateTcpBufferSizes(I)V
    .locals 11
    .param p1, "rilRat"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .local v4, "sizes":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .local v2, "ratName":Ljava/lang/String;
    const/4 v7, 0x7

    if-eq p1, v7, :cond_0

    const/16 v7, 0x8

    if-ne p1, v7, :cond_4

    :cond_0
    :goto_0
    const-string v2, "evdo"

    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070035

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "configOverride":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_2

    aget-object v7, v0, v1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "split":[Ljava/lang/String;
    aget-object v7, v5, v9

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    aget-object v4, v5, v10

    .end local v4    # "sizes":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_2
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v4}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.tcp.delack."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, "segments":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v3}, Landroid/net/LinkProperties;->setTcpDelayedAckSegments(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.tcp.usercfg."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .local v6, "usercfg":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v6}, Landroid/net/LinkProperties;->setTcpUserCfg(I)V

    return-void

    .end local v0    # "configOverride":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "segments":I
    .end local v6    # "usercfg":I
    .restart local v4    # "sizes":Ljava/lang/String;
    :cond_4
    const/16 v7, 0xc

    if-ne p1, v7, :cond_1

    goto :goto_0

    .restart local v0    # "configOverride":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v5    # "split":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "sizes":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :pswitch_1
    const-string v4, "4092,8760,48000,4096,8760,48000"

    .local v4, "sizes":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "sizes":Ljava/lang/String;
    :pswitch_2
    const-string v4, "4093,26280,70800,4096,16384,70800"

    .restart local v4    # "sizes":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "sizes":Ljava/lang/String;
    :pswitch_3
    const-string v4, "58254,349525,1048576,58254,349525,1048576"

    .restart local v4    # "sizes":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "sizes":Ljava/lang/String;
    :pswitch_4
    const-string v4, "16384,32768,131072,4096,16384,102400"

    .restart local v4    # "sizes":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "sizes":Ljava/lang/String;
    :pswitch_5
    const-string v4, "4094,87380,262144,4096,16384,262144"

    .restart local v4    # "sizes":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "sizes":Ljava/lang/String;
    :pswitch_6
    const-string v4, "131072,262144,1048576,4096,16384,524288"

    .restart local v4    # "sizes":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "sizes":Ljava/lang/String;
    :pswitch_7
    const-string v4, "61167,367002,1101005,8738,52429,262114"

    .restart local v4    # "sizes":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "sizes":Ljava/lang/String;
    :pswitch_8
    const-string v4, "40778,244668,734003,16777,100663,301990"

    .restart local v4    # "sizes":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "sizes":Ljava/lang/String;
    :pswitch_9
    const-string v4, "524288,1048576,2097152,262144,524288,1048576"

    .restart local v4    # "sizes":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "sizes":Ljava/lang/String;
    :pswitch_a
    const-string v4, "122334,734003,2202010,32040,192239,576717"

    .restart local v4    # "sizes":Ljava/lang/String;
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected dispose()V
    .locals 1

    .prologue
    const-string v0, "dispose: call quiteNow()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->quitNow()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v0, "DataConnection "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnContexts.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnContexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataConnectionTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRetryManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mConnectionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDisconnectParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDcFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRilRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNetworkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mInstanceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDcRetryAlarmController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v0
.end method

.method getCid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    return v0
.end method

.method getCopyLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method getCopyNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    return v0
.end method

.method getIsInactive()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handlePdpRejectCauseSuccess()V
    .locals 1

    .prologue
    const-string v0, "handlePdpRejectCauseSuccess()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method public isIpv4Connected()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v2

    .local v2, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/net/Inet4Address;

    .local v3, "i4addr":Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i4addr":Ljava/net/Inet4Address;
    :cond_1
    return v4
.end method

.method public isIpv6Connected()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v2

    .local v2, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/net/Inet6Address;

    .local v3, "i6addr":Ljava/net/Inet6Address;
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i6addr":Ljava/net/Inet6Address;
    :cond_1
    return v4
.end method

.method protected isPdpRejectCauseFailureHandled(Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 1
    .param p1, "result"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .param p2, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    const-string v0, "isPdpRejectCauseFailureHandled()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 7
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "sendAll"    # Z

    .prologue
    const/4 v4, 0x0

    const-string v3, "NotifyDisconnectCompleted"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v2, 0x0

    .local v2, "reason":Ljava/lang/String;
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    if-eqz v3, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    .local v1, "msg":Landroid/os/Message;
    iput-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_0

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    .local v2, "reason":Ljava/lang/String;
    const-string v4, "msg=%s msg.obj=%s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :goto_0
    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_3

    if-nez v2, :cond_2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const v3, 0x4200f

    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotifyDisconnectCompleted DisconnectParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void

    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "reason":Ljava/lang/String;
    :cond_4
    const-string v3, "<no-reason>"

    goto :goto_0
.end method

.method setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method tearDownNow()V
    .locals 1

    .prologue
    const-string v0, "tearDownNow()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const v0, 0x40008

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->toStringSimple()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApnContexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringSimple()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastastFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRetryManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " linkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .prologue
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkProperties(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->checkSetMtu(Lcom/android/internal/telephony/dataconnection/ApnSetting;Landroid/net/LinkProperties;)V

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    :cond_2
    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty old LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty new LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
