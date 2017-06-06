.class public Lcom/android/server/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;,
        Lcom/android/server/wifi/WifiMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final ADDR_STRING:Ljava/lang/String; = "addr="

.field public static final ANQP_DONE_EVENT:I = 0x2402c

.field private static final ANQP_DONE_STR:Ljava/lang/String; = "ANQP-QUERY-DONE"

.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final ASSOCIATED_WITH_STR:Ljava/lang/String; = "Associated with "

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final AUTH_EVENT_PREFIX_STR:Ljava/lang/String; = "Authentication with"

.field private static final AUTH_TIMEOUT_STR:Ljava/lang/String; = "timed out."

.field private static final BASE:I = 0x24000

.field private static final BSS_ADDED:I = 0xc

.field private static final BSS_ADDED_STR:Ljava/lang/String; = "BSS-ADDED"

.field private static final BSS_REMOVED:I = 0xd

.field private static final BSS_REMOVED_STR:Ljava/lang/String; = "BSS-REMOVED"

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static DBG:Z = false

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field private static final GAS_QUERY_DONE_STR:Ljava/lang/String; = "GAS-QUERY-DONE"

.field private static final GAS_QUERY_PREFIX_STR:Ljava/lang/String; = "GAS-QUERY-"

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field private static final GAS_QUERY_START_STR:Ljava/lang/String; = "GAS-QUERY-START"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field public static final HS20_DEAUTH_EVENT:I = 0x2403e

.field private static final HS20_DEAUTH_STR:Ljava/lang/String; = "HS20-DEAUTH-IMMINENT-NOTICE"

.field private static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field private static final HS20_SUB_REM_STR:Ljava/lang/String; = "HS20-SUBSCRIPTION-REMEDIATION"

.field private static final IDENTITY_STR:Ljava/lang/String; = "IDENTITY"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_REMOVE_AND_REFORM_GROUP_EVENT:I = 0x24028

.field private static final P2P_REMOVE_AND_REFORM_GROUP_STR:Ljava/lang/String; = "P2P-REMOVE-AND-REFORM-GROUP"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final REENABLED_STR:Ljava/lang/String; = "SSID-REENABLED"

.field private static final REQUEST_PREFIX_LEN_STR:I

.field private static final REQUEST_PREFIX_STR:Ljava/lang/String; = "CTRL-REQ-"

.field private static final RESULT_STRING:Ljava/lang/String; = "result="

.field public static final RSN_PMKID_MISMATCH_EVENT:I = 0x2403f

.field private static final RSN_PMKID_STR:Ljava/lang/String; = "RSN: PMKID mismatch"

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field private static final RX_HS20_ANQP_ICON_STR:Ljava/lang/String; = "RX-HS20-ANQP-ICON"

.field private static final RX_HS20_ANQP_ICON_STR_LEN:I

.field private static final SCAN_FAILED:I = 0xf

.field public static final SCAN_FAILED_EVENT:I = 0x24011

.field private static final SCAN_FAILED_STR:Ljava/lang/String; = "SCAN-FAILED"

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final SIM_STR:Ljava/lang/String; = "SIM"

.field private static final SSID_REENABLE:I = 0xb

.field public static final SSID_REENABLED:I = 0x2400e

.field private static final SSID_TEMP_DISABLE:I = 0xa

.field public static final SSID_TEMP_DISABLED:I = 0x2400d

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TARGET_BSSID_STR:Ljava/lang/String; = "Trying to associate with "

.field private static final TEMP_DISABLED_STR:Ljava/lang/String; = "SSID-TEMP-DISABLED"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final UNKNOWN:I = 0xe

.field private static final VDBG:Z = false

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static eventLogCounter:I

.field private static mAssocRejectEventPattern:Ljava/util/regex/Pattern;

.field private static mAssociatedPattern:Ljava/util/regex/Pattern;

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mDisconnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

.field private static mRequestIdentityPattern:Ljava/util/regex/Pattern;

.field private static mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

.field private static mTargetBSSIDPattern:Ljava/util/regex/Pattern;

.field private static sRecvErrors:I


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private mMonitoring:Z

.field private final mStateMachine:Lcom/android/internal/util/StateMachine;

.field private mStateMachine2:Lcom/android/internal/util/StateMachine;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    const-string v0, "CTRL-REQ-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    const-string v0, "RX-HS20-ANQP-ICON"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    sput v1, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +reason=([0-9]+) +locally_generated=([0-1])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +status_code=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    const-string v0, "Trying to associate with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    const-string v0, "Associated with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    const-string v0, "SIM-([0-9]*):GSM-AUTH((:[0-9a-f]+)+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    const-string v0, "SIM-([0-9]*):UMTS-AUTH:([0-9a-f]+):([0-9a-f]+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    const-string v0, "IDENTITY-([0-9]+):Identity needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 2
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiMonitor"

    const-string v1, "Creating WifiMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v0, p2, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->registerInterfaceMonitor(Ljava/lang/String;Lcom/android/server/wifi/WifiMonitor;)V

    return-void
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 27
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v21, :cond_0

    if-eqz p1, :cond_0

    const-string v21, "CTRL-EVENT-BSS-ADDED"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    :cond_0
    :goto_0
    const-string v21, "CTRL-EVENT-"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_13

    const-string v21, "WPA:"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "pre-shared key may be incorrect"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v23, 0x24007

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    :cond_1
    :goto_1
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/16 v21, 0x0

    return v21

    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WifiMonitor:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " cnt="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " dispatchEvent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v21, "WPS-SUCCESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x24008

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    :cond_4
    const-string v21, "WPS-FAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v21, "WPS-OVERLAP-DETECTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x2400a

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    :cond_6
    const-string v21, "WPS-TIMEOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x2400b

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    :cond_7
    const-string v21, "P2P"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v21, "AP"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleHostApEvents(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v21, "ANQP-QUERY-DONE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleAnqpResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    const-string v21, "WifiMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bad ANQP event string: \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\': "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v11    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_a
    const-string v21, "GAS-QUERY-"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleGasQueryEvents(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v21, "RX-HS20-ANQP-ICON"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    sget v22, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    const v23, 0x24035

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    const-string v21, "HS20-"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleHs20Events(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v21, "CTRL-REQ-"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleRequests(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string v21, "Trying to associate with "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleTargetBSSIDEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string v21, "Associated with "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleAssociatedBSSIDEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string v21, "Authentication with"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    const-string v21, "timed out."

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x24007

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    :cond_11
    const-string v21, "RSN: PMKID mismatch"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    const v22, 0x2403f

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    :cond_12
    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v21, :cond_1

    const-string v21, "WifiMonitor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "couldn\'t identify event type - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    sget v21, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "eventName":Ljava/lang/String;
    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .local v16, "nameEnd":I
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_14
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_16

    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v21, :cond_15

    const-string v21, "WifiMonitor"

    const-string v22, "Received wpa_supplicant event with empty event name"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/16 v21, 0x0

    return v21

    :cond_16
    const-string v21, "CONNECTED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/4 v8, 0x1

    .local v8, "event":I
    :goto_2
    move-object/from16 v9, p1

    .local v9, "eventData":Ljava/lang/String;
    const/16 v21, 0x7

    move/from16 v0, v21

    if-eq v8, v0, :cond_17

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v8, v0, :cond_29

    :cond_17
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v9, v21, v22

    :cond_18
    :goto_3
    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v8, v0, :cond_19

    const/16 v21, 0xb

    move/from16 v0, v21

    if-ne v8, v0, :cond_30

    :cond_19
    const/16 v20, 0x0

    .local v20, "substr":Ljava/lang/String;
    const/16 v17, -0x1

    .local v17, "netId":I
    const-string v21, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .local v13, "ind":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_1a

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .end local v20    # "substr":Ljava/lang/String;
    :cond_1a
    if-eqz v20, :cond_2d

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .local v19, "status":[Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2d

    aget-object v14, v19, v21

    .local v14, "key":Ljava/lang/String;
    const-string v23, "id="

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3

    move/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v14, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v23

    if-eqz v23, :cond_2c

    const/4 v12, 0x3

    .local v12, "idx":I
    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v12, v0, :cond_2c

    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, "c":C
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v6, v0, :cond_2c

    const/16 v23, 0x39

    move/from16 v0, v23

    if-gt v6, v0, :cond_2c

    mul-int/lit8 v17, v17, 0xa

    add-int/lit8 v23, v6, -0x30

    add-int v17, v17, v23

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .end local v6    # "c":C
    .end local v8    # "event":I
    .end local v9    # "eventData":Ljava/lang/String;
    .end local v12    # "idx":I
    .end local v13    # "ind":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "netId":I
    .end local v19    # "status":[Ljava/lang/String;
    :cond_1b
    const-string v21, "DISCONNECTED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    const/4 v8, 0x2

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_1c
    const-string v21, "STATE-CHANGE"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    const/4 v8, 0x3

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_1d
    const-string v21, "SCAN-RESULTS"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    const/4 v8, 0x4

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_1e
    const-string v21, "SCAN-FAILED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    const/16 v8, 0xf

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_1f
    const-string v21, "LINK-SPEED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    const/4 v8, 0x5

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_20
    const-string v21, "TERMINATING"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    const/4 v8, 0x6

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_21
    const-string v21, "DRIVER-STATE"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    const/4 v8, 0x7

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_22
    const-string v21, "EAP-FAILURE"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_23

    const/16 v8, 0x8

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_23
    const-string v21, "ASSOC-REJECT"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_24

    const/16 v8, 0x9

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_24
    const-string v21, "SSID-TEMP-DISABLED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    const/16 v8, 0xa

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_25
    const-string v21, "SSID-REENABLED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_26

    const/16 v8, 0xb

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_26
    const-string v21, "BSS-ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_27

    const/16 v8, 0xc

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_27
    const-string v21, "BSS-REMOVED"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_28

    const/16 v8, 0xd

    .restart local v8    # "event":I
    goto/16 :goto_2

    .end local v8    # "event":I
    :cond_28
    const/16 v8, 0xe

    .restart local v8    # "event":I
    goto/16 :goto_2

    .restart local v9    # "eventData":Ljava/lang/String;
    :cond_29
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v8, v0, :cond_2a

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v8, v0, :cond_2b

    :cond_2a
    const-string v21, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .restart local v13    # "ind":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_18

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .end local v13    # "ind":I
    :cond_2b
    const-string v21, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .restart local v13    # "ind":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_18

    add-int/lit8 v21, v13, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .restart local v14    # "key":Ljava/lang/String;
    .restart local v17    # "netId":I
    .restart local v19    # "status":[Ljava/lang/String;
    :cond_2c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .end local v14    # "key":Ljava/lang/String;
    .end local v19    # "status":[Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v8, v0, :cond_2f

    const v21, 0x2400d

    :goto_6
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v17

    move/from16 v3, v23

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .end local v13    # "ind":I
    .end local v17    # "netId":I
    :cond_2e
    :goto_7
    const/16 v21, 0x0

    sput v21, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/16 v21, 0x0

    return v21

    .restart local v13    # "ind":I
    .restart local v17    # "netId":I
    :cond_2f
    const v21, 0x2400e

    goto :goto_6

    .end local v13    # "ind":I
    .end local v17    # "netId":I
    :cond_30
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v8, v0, :cond_31

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantStateChange(Ljava/lang/String;)V

    goto :goto_7

    :cond_31
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v8, v0, :cond_32

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wifi/WifiMonitor;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_7

    :cond_32
    const/16 v21, 0x6

    move/from16 v0, v21

    if-ne v8, v0, :cond_35

    const-string v21, "recv error"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_33

    sget v21, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_34

    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v21, :cond_33

    const-string v21, "WifiMonitor"

    const-string v22, "too many recv errors, closing connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v23, 0x24002

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    const/16 v21, 0x1

    return v21

    :cond_34
    sget v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/16 v21, 0x0

    return v21

    :cond_35
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v8, v0, :cond_36

    const-string v21, "EAP authentication failed"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2e

    const-string v21, "WifiMonitor send auth failure (EAP_AUTH_FAILURE) "

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v23, 0x24007

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    goto/16 :goto_7

    :cond_36
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v8, v0, :cond_39

    sget-object v21, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .local v15, "match":Ljava/util/regex/Matcher;
    const-string v5, ""

    .local v5, "BSSID":Ljava/lang/String;
    const/16 v18, -0x1

    .local v18, "status":I
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-nez v21, :cond_38

    sget-boolean v21, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v21, :cond_37

    const-string v21, "WifiMonitor"

    const-string v22, "Assoc Reject: Could not parse assoc reject string"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v21, v0

    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v23, 0x2402b

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_38
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v21, 0x2

    :try_start_1
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    goto :goto_8

    :catch_1
    move-exception v7

    .local v7, "e":Ljava/lang/NumberFormatException;
    const/16 v18, -0x1

    goto :goto_8

    .end local v5    # "BSSID":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "match":Ljava/util/regex/Matcher;
    .end local v18    # "status":I
    :cond_39
    const/16 v21, 0xc

    move/from16 v0, v21

    if-eq v8, v0, :cond_2e

    const/16 v21, 0xd

    move/from16 v0, v21

    if-eq v8, v0, :cond_2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wifi/WifiMonitor;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_7
.end method

.method private handleAnqpResult(Ljava/lang/String;)V
    .locals 12
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    const-string v8, "addr="

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "addrPos":I
    const-string v8, "result="

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .local v6, "resPos":I
    if-ltz v0, :cond_0

    if-gez v6, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unexpected ANQP result notification"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const-string v8, "addr="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .local v1, "eoaddr":I
    if-gez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    const-string v8, "result="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .local v4, "eoresult":I
    if-gez v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_3
    :try_start_0
    const-string v8, "addr="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "bssid":J
    const-string v8, "result="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "success"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    .local v7, "result":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const v10, 0x2402c

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v7, v11, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "bssid":J
    .end local v7    # "result":I
    :goto_1
    return-void

    .restart local v2    # "bssid":J
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "result":I
    goto :goto_0

    .end local v2    # "bssid":J
    .end local v7    # "result":I
    :catch_0
    move-exception v5

    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad MAC address in ANQP response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleAssociatedBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v4, 0x20093

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :cond_1
    return-void
.end method

.method private handleGasQueryEvents(Ljava/lang/String;)V
    .locals 11
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const-string v5, "GAS-QUERY-START"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x24033

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "GAS-QUERY-DONE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "dataTokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "bssid":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "success":I
    array-length v7, v1

    move v5, v6

    .end local v0    # "bssid":Ljava/lang/String;
    :goto_1
    if-ge v5, v7, :cond_7

    aget-object v4, v1, v5

    .local v4, "token":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "nameValue":[Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    aget-object v8, v2, v6

    const-string v9, "addr"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    aget-object v0, v2, v10

    .local v0, "bssid":Ljava/lang/String;
    goto :goto_2

    .end local v0    # "bssid":Ljava/lang/String;
    :cond_5
    aget-object v8, v2, v6

    const-string v9, "result"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    aget-object v8, v2, v10

    const-string v9, "SUCCESS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .end local v2    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v7, 0x24034

    invoke-virtual {v5, v7, v3, v6, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "success":I
    :cond_8
    sget-boolean v5, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown GAS query event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    const v3, 0x2402a

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    const v3, 0x24029

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleHs20Events(Ljava/lang/String;)V
    .locals 10
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const-string v5, "HS20-SUBSCRIPTION-REMEDIATION"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "dataTokens":[Ljava/lang/String;
    const/4 v3, -0x1

    .local v3, "method":I
    const/4 v4, 0x0

    .local v4, "url":Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v9, :cond_1

    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v8

    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x2403d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "method":I
    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v5, "HS20-DEAUTH-IMMINENT-NOTICE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, -0x1

    .local v0, "code":I
    const/4 v2, -0x1

    .local v2, "delay":I
    const/4 v4, 0x0

    .restart local v4    # "url":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dataTokens":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v1, v9

    .end local v4    # "url":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x2403e

    invoke-virtual {v5, v6, v0, v2, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .end local v0    # "code":I
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v2    # "delay":I
    :cond_5
    sget-boolean v5, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown HS20 event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 9
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .local v0, "BSSID":Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, "networkId":I
    const/4 v6, 0x0

    .local v6, "reason":I
    const/4 v2, -0x1

    .local v2, "ind":I
    const/4 v3, 0x0

    .local v3, "local":I
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v7, :cond_3

    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "WifiMonitor"

    const-string v8, "handleNetworkStateChange: Couldnt find BSSID in event string"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "BSSID":Ljava/lang/String;
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "BSSID":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, -0x1

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    .local v0, "BSSID":Ljava/lang/String;
    :cond_3
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v7, :cond_1

    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .restart local v4    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_5

    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "WifiMonitor"

    const-string v8, "handleNetworkStateChange: Could not parse disconnect string"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v0, v3, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    goto :goto_1

    .restart local v0    # "BSSID":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "BSSID":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    :goto_3
    const/4 v7, 0x3

    :try_start_2
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    goto :goto_2

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    goto :goto_3

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_2
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const-string v3, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24015

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .restart local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24016

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    const-string v3, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24025

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const-string v3, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    const v5, 0x24017

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v3, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24019

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_5
    const-string v3, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v4

    const v5, 0x2401a

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string v3, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401b

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_7
    const-string v3, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v4

    const v5, 0x2401c

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401d

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_9
    const-string v3, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    .restart local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2401e

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_a
    const-string v3, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    const v5, 0x2401f

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v4

    const v5, 0x24020

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v5, 0x24021

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v5, 0x24022

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v5, 0x24023

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const-string v3, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v5, 0x24024

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    const-string v3, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24027

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_11
    const-string v3, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24026

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null service resp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string v3, "P2P-REMOVE-AND-REFORM-GROUP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received event= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x24028

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method private handleRequests(Ljava/lang/String;)V
    .locals 13
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v12, 0x24010

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v0, 0x0

    .local v0, "SSID":Ljava/lang/String;
    const/4 v6, -0x2

    .local v6, "reason":I
    sget v8, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "requestName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    const-string v8, "IDENTITY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "SSID":Ljava/lang/String;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .end local v0    # "SSID":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v9, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v10, 0x2400f

    invoke-virtual {v8, v10, v9, v6, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "SSID":Ljava/lang/String;
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    goto :goto_0

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .local v0, "SSID":Ljava/lang/String;
    :cond_2
    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "didn\'t find SSID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_3
    const-string v8, "SIM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .local v4, "matchGsm":Ljava/util/regex/Matcher;
    sget-object v8, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .local v5, "matchUmts":Ljava/util/regex/Matcher;
    new-instance v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;-><init>()V

    .local v1, "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    iput v10, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8, v12, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    const/4 v8, 0x5

    iput v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    new-array v8, v9, [Ljava/lang/String;

    iput-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v8, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8, v12, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "couldn\'t parse SIM auth request - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1    # "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    .end local v4    # "matchGsm":Ljava/util/regex/Matcher;
    .end local v5    # "matchUmts":Ljava/util/regex/Matcher;
    :cond_6
    sget-boolean v8, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "couldn\'t identify request type - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 17
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .local v12, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string v13, "SSID="

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .local v4, "index":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_0

    add-int/lit8 v13, v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v12

    .end local v12    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    const-string v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "dataTokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "BSSID":Ljava/lang/String;
    const/4 v6, -0x1

    .local v6, "networkId":I
    const/4 v7, -0x1

    .local v7, "newState":I
    const/4 v13, 0x0

    array-length v14, v2

    .end local v1    # "BSSID":Ljava/lang/String;
    :goto_0
    if-ge v13, v14, :cond_5

    aget-object v10, v2, v13

    .local v10, "token":Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "nameValue":[Ljava/lang/String;
    array-length v15, v5

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    aget-object v15, v5, v15

    const-string v16, "BSSID"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    aget-object v1, v5, v15

    .local v1, "BSSID":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "BSSID":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x1

    :try_start_0
    aget-object v15, v5, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .local v11, "value":I
    const/4 v15, 0x0

    aget-object v15, v5, v15

    const-string v16, "id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v6, v11

    goto :goto_1

    :cond_4
    const/4 v15, 0x0

    aget-object v15, v5, v15

    const-string v16, "state"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move v7, v11

    goto :goto_1

    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v10    # "token":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_5
    const/4 v13, -0x1

    if-ne v7, v13, :cond_6

    return-void

    :cond_6
    sget-object v8, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .local v8, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v14

    const/4 v13, 0x0

    array-length v15, v14

    :goto_2
    if-ge v13, v15, :cond_7

    aget-object v9, v14, v13

    .local v9, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v9}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v7, :cond_9

    move-object v8, v9

    .end local v9    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v13, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v8, v13, :cond_8

    const-string v13, "WifiMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid supplicant state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v1, v8}, Lcom/android/server/wifi/WifiMonitor;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    return-void

    .restart local v9    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v8    # "newSupplicantState":Landroid/net/wifi/SupplicantState;
    .end local v9    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v5    # "nameValue":[Ljava/lang/String;
    .restart local v10    # "token":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private handleTargetBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "BSSID":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v4, 0x2008d

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v11, 0x24009

    const/4 v10, 0x0

    const-string v7, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, "match":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .local v4, "reason":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "cfgErrStr":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "reasonStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "reasonInt":I
    packed-switch v5, :pswitch_data_0

    move v4, v5

    .end local v5    # "reasonInt":I
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "cfgErrInt":I
    sparse-switch v0, :sswitch_data_0

    if-nez v4, :cond_1

    move v4, v0

    .end local v0    # "cfgErrInt":I
    .end local v1    # "cfgErrStr":Ljava/lang/String;
    .end local v6    # "reasonStr":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8, v11, v10, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    .restart local v1    # "cfgErrStr":Ljava/lang/String;
    .restart local v5    # "reasonInt":I
    .restart local v6    # "reasonStr":Ljava/lang/String;
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x5

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x4

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    .end local v5    # "reasonInt":I
    .restart local v0    # "cfgErrInt":I
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x6

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :sswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x3

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    const-string v0, "WifiMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .local v1, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    return-object v1

    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    return-object v1

    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v4

    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    :goto_0
    return-void

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    goto :goto_0
.end method

.method getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    return-object v0

    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    return-object v2
.end method

.method getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 3
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    return-object v1

    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    return-object v2
.end method

.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24011

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    :sswitch_4
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xe -> :sswitch_4
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public killSupplicant(Z)V
    .locals 1
    .param p1, "p2pSupported"    # Z

    .prologue
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->killSupplicant(Z)V

    return-void
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V
    .locals 3
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I
    .param p4, "reason"    # I

    .prologue
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiMonitor notify network disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    sget v2, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    new-instance v3, Lcom/android/server/wifi/StateChangeResult;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    const v4, 0x24006

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setStateMachine2(Lcom/android/internal/util/StateMachine;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    return-void
.end method

.method public startMonitoring()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->startMonitoring(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopMonitoring()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopMonitoring(Ljava/lang/String;)V

    return-void
.end method

.method public stopSupplicant()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->-get1()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopSupplicant()V

    return-void
.end method
