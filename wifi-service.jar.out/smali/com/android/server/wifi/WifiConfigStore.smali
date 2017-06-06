.class public Lcom/android/server/wifi/WifiConfigStore;
.super Lcom/android/server/net/IpConfigStore;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;,
        Lcom/android/server/wifi/WifiConfigStore$1;
    }
.end annotation


# static fields
.field private static synthetic -android_net_IpConfiguration$IpAssignmentSwitchesValues:[I = null

.field private static synthetic -android_net_IpConfiguration$ProxySettingsSwitchesValues:[I = null

.field private static synthetic -android_net_NetworkInfo$DetailedStateSwitchesValues:[I = null

.field private static final ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED"

.field private static final ASSOCIATED_FULL_SCAN_BACKOFF_KEY:Ljava/lang/String; = "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD"

.field private static final ASSOCIATED_PARTIAL_SCAN_PERIOD_KEY:Ljava/lang/String; = "ASSOCIATED_PARTIAL_SCAN_PERIOD"

.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH"

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD"

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW"

.field private static final BLACKLIST_MILLI_KEY:Ljava/lang/String; = "BLACKLIST_MILLI"

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID"

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID"

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS"

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE"

.field private static final CONFIG_KEY:Ljava/lang/String; = "CONFIG"

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY"

.field private static final CREATION_TIME_KEY:Ljava/lang/String; = "CREATION_TIME"

.field private static final CREATOR_NAME_KEY:Ljava/lang/String; = "CREATOR_NAME"

.field private static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY"

.field private static final DATE_KEY:Ljava/lang/String; = "DATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW"

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELETED_CONFIG_PSK:Ljava/lang/String; = "Mjkd86jEMGn79KhKll298Uu7-deleted"

.field private static final DELETED_CRC32_KEY:Ljava/lang/String; = "DELETED_CRC32"

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL"

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD"

.field static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field private static final ENABLE_AUTOJOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTOJOIN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_AUTO_JOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED"

.field private static final ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED"

.field private static final ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED"

.field private static final ENABLE_HAL_BASED_PNO:Ljava/lang/String; = "ENABLE_HAL_BASED_PNO"

.field private static final ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY"

.field private static final ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL"

.field private static final FAILURE_KEY:Ljava/lang/String; = "FAILURE"

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN"

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ"

.field private static final G_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "G_BAND_PREFERENCE_RSSI_THRESHOLD"

.field private static final JOIN_ATTEMPT_BOOST_KEY:Ljava/lang/String; = "JOIN_ATTEMPT_BOOST"

.field private static final LINK_KEY:Ljava/lang/String; = "LINK"

.field private static final MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS"

.field private static final MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS"

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI"

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID"

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS"

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION"

.field private static final NUM_AUTH_FAILURES_KEY:Ljava/lang/String; = "AUTH_FAILURES"

.field private static final NUM_CONNECTION_FAILURES_KEY:Ljava/lang/String; = "CONNECT_FAILURES"

.field private static final NUM_IP_CONFIG_FAILURES_KEY:Ljava/lang/String; = "IP_CONFIG_FAILURES"

.field public static final OLD_PRIVATE_KEY_NAME:Ljava/lang/String; = "private_key"

.field private static final ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS_KEY:Ljava/lang/String; = "ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS"

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION"

.field private static final PPS_FILE:Ljava/lang/String; = "/data/misc/wifi/PerProviderSubscription.conf"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY"

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI"

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH"

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE"

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED"

.field private static final SEPARATOR:Ljava/lang/String; = ":  "

.field private static final SSID_KEY:Ljava/lang/String; = "SSID"

.field private static final STATUS_KEY:Ljava/lang/String; = "AUTO_JOIN_STATUS"

.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final SUPPLICANT_CONFIG_FILE_BACKUP:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf.tmp"

.field private static final SUPPLICANT_DISABLE_REASON_KEY:Ljava/lang/String; = "SUP_DIS_REASON"

.field private static final SUPPLICANT_STATUS_KEY:Ljava/lang/String; = "SUP_STATUS"

.field public static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final THRESHOLD_BAD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_24"

.field private static final THRESHOLD_BAD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_5"

.field private static final THRESHOLD_GOOD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_24"

.field private static final THRESHOLD_GOOD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_5"

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G"

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G"

.field private static final THRESHOLD_LOW_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_24"

.field private static final THRESHOLD_LOW_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_5"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS"

.field private static final THRESHOLD_UNBLACKLIST_HARD_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_24G"

.field private static final THRESHOLD_UNBLACKLIST_HARD_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_5G"

.field private static final THRESHOLD_UNBLACKLIST_SOFT_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_24G"

.field private static final THRESHOLD_UNBLACKLIST_SOFT_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_5G"

.field private static final UPDATE_NAME_KEY:Ljava/lang/String; = "UPDATE_NAME"

.field private static final UPDATE_TIME_KEY:Ljava/lang/String; = "UPDATE_TIME"

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID"

.field private static final USER_APPROVED_KEY:Ljava/lang/String; = "USER_APPROVED"

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS"

.field private static VDBG:Z = false

.field private static VVDBG:Z = false

.field private static final WIFI_VERBOSE_LOGS_KEY:Ljava/lang/String; = "WIFI_VERBOSE_LOGS"

.field private static final autoJoinConfigFile:Ljava/lang/String;

.field public static final idStringVarName:Ljava/lang/String; = "id_str"

.field private static final ipConfigFile:Ljava/lang/String;

.field private static mConnectChoice:Ljava/util/regex/Pattern; = null

.field public static final maxNumScanCacheEntries:I = 0x80

.field private static final networkHistoryConfigFile:Ljava/lang/String;

.field private static final sKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPnoListSortComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

.field public associatedFullScanMaxIntervalMilli:I

.field public associatedHysteresisHigh:I

.field public associatedHysteresisLow:I

.field public badLinkSpeed24:I

.field public badLinkSpeed5:I

.field public bandPreferenceBoostFactor5:I

.field public final bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public bandPreferencePenaltyFactor5:I

.field public final bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public currentNetworkBoost:I

.field public enable5GHzPreference:Z

.field public final enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public enableLinkDebouncing:Z

.field public final enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

.field public enableWifiCellularHandoverUserTriggeredAdjustment:Z

.field public goodLinkSpeed24:I

.field public goodLinkSpeed5:I

.field private lastSelectedConfiguration:Ljava/lang/String;

.field public lastUnwantedNetworkDisconnectTimestamp:J

.field private final mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

.field mBssidBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCachedPnoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguredBand:I

.field private final mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

.field private mContext:Landroid/content/Context;

.field public mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field mLostConfigsDbg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

.field private final mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private mScanDetailCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field public maxAuthErrorsToBlacklist:I

.field public maxConnectionErrorsToBlacklist:I

.field public final maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxRxPacketForFullScans:I

.field public final maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxRxPacketForPartialScans:I

.field public maxTxPacketForFullScans:I

.field public final maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxTxPacketForPartialScans:I

.field public networkSwitchingBlackListPeriodMilli:I

.field public onlyLinkSameCredentialConfigurations:Z

.field public roamOnAny:Z

.field public scanResultRssiLevelPatchUp:I

.field showNetworks:Z

.field public final thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public wifiConfigBlacklistMinTimeMilli:I

.field public wifiConfigLastSelectionHysteresis:I

.field public final wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/hotspot2/omadm/MOManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    return-object v0
.end method

.method private static synthetic -getandroid_net_IpConfiguration$IpAssignmentSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$IpAssignment;->values()[Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid_net_IpConfiguration$ProxySettingsSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$ProxySettings;->values()[Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->getPnoNetworkSortScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiConfigStore;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/networkHistory.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/autojoinconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v0, "(.*)=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "eap"

    aput-object v1, v0, v2

    const-string v1, "phase2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "identity"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "anonymous_identity"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "password"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "client_cert"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "ca_cert"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "subject_match"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "engine"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "engine_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "key_id"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "altsubject_match"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "domain_suffix_match"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "phase1"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/wifi/WifiConfigStore$1;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiConfigStore$1;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->sPnoListSortComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wn"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/server/net/IpConfigStore;-><init>()V

    new-instance v1, Lcom/android/server/wifi/ConfigurationMap;

    invoke-direct {v1}, Lcom/android/server/wifi/ConfigurationMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    const/16 v1, 0x50

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    const v1, 0x493e0

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    const v1, 0xa4cb800

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    iput v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    const/16 v1, 0x18

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    const/16 v1, 0x24

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    const v1, 0x493e0

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    const v1, 0x2bf20

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigLastSelectionHysteresis:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConfigStore;->roamOnAny:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    iput v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredBand:I

    const/16 v1, 0x19

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    const/16 v1, -0x55

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_HARD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_SOFT:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_HARD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_SOFT:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->A_BAND_PREFERENCE_RSSI_THRESHOLD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->G_BAND_PREFERENCE_RSSI_THRESHOLD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x3a98

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x1d4c0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x4e20

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x2bf20

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_HARD_5G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_SOFT_5G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_HARD_24G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_SOFT_24G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_GOOD_RSSI_5"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_LOW_RSSI_5"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_BAD_RSSI_5"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_GOOD_RSSI_24"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_LOW_RSSI_24"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_BAD_RSSI_24"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "WIFI_VERBOSE_LOGS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "A_BAND_PREFERENCE_RSSI_THRESHOLD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ASSOCIATED_PARTIAL_SCAN_PERIOD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ASSOCIATED_PARTIAL_SCAN_PERIOD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "G_BAND_PREFERENCE_RSSI_THRESHOLD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_HAL_BASED_PNO"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_HAL_BASED_PNO"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->startWatching()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, "hs2on":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passpoint is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wifi/PerProviderSubscription.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    new-instance v1, Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-direct {v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    new-instance v1, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/wifi/SIMAccessor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/SIMAccessor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    return-void

    .end local v0    # "hs2on":Z
    :cond_1
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    goto/16 :goto_0

    .restart local v0    # "hs2on":Z
    :cond_2
    const-string v1, "disabled"

    goto :goto_1
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 42
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateNetworkNative "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v32, v0

    .local v32, "netId":I
    const/16 v33, 0x0

    .local v33, "newNetwork":Z
    const/4 v5, -0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v36

    .local v36, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v36, :cond_7

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v32, v0

    .end local v36    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_0
    const/16 v40, 0x1

    .local v40, "updateFailed":Z
    const/16 v36, 0x0

    .local v36, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v33, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v24

    .local v24, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v24, :cond_3

    new-instance v36, Landroid/net/wifi/WifiConfiguration;

    .end local v36    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .local v36, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .end local v24    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v36    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-nez v33, :cond_a

    if-eqz v36, :cond_a

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    if-nez v5, :cond_4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "ssid"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "id_str"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set id_str: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :goto_2
    if-eqz v40, :cond_4c

    if-eqz v33, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set a network variable, removed network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_5
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v5

    .end local v32    # "netId":I
    .end local v33    # "newNetwork":Z
    .end local v40    # "updateFailed":Z
    :cond_6
    const-string v5, "WifiConfigStore"

    const-string v6, "Passpoint is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v5

    .restart local v32    # "netId":I
    .restart local v33    # "newNetwork":Z
    .restart local v36    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateNetworkNative passpoint "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was found, but no network Id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_8
    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->addNetwork()I

    move-result v32

    if-gez v32, :cond_9

    const-string v5, "Failed to add a network!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v5

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateNetworkNative created netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v36    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v40    # "updateFailed":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    if-nez v33, :cond_d

    if-eqz v36, :cond_d

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v5, :cond_d

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v5, :cond_d

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    if-nez v5, :cond_e

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting BSSID for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "bssid"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set BSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x0

    goto :goto_3

    :cond_e
    if-nez v33, :cond_f

    if-nez v36, :cond_10

    :cond_f
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "sim_num"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set sim no: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, v36

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    if-ne v5, v6, :cond_f

    :cond_11
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "mode"

    const-string v8, "1"

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "failed to set adhoc mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "frequency"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "failed to set frequency"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "allowedKeyManagementString":Ljava/lang/String;
    if-nez v33, :cond_1b

    if-eqz v36, :cond_1b

    if-eqz v16, :cond_1b

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_4
    if-nez v5, :cond_14

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "key_mgmt"

    move/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_14
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "allowedProtocolsString":Ljava/lang/String;
    if-nez v33, :cond_1d

    if-eqz v36, :cond_1d

    if-eqz v18, :cond_1d

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_5
    if-nez v5, :cond_15

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "proto"

    move/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_15
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "allowedAuthAlgorithmsString":Ljava/lang/String;
    if-nez v33, :cond_1f

    if-eqz v36, :cond_1f

    if-eqz v14, :cond_1f

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_6
    if-nez v5, :cond_16

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "auth_alg"

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v14}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_16
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, "allowedPairwiseCiphersString":Ljava/lang/String;
    if-nez v33, :cond_21

    if-eqz v36, :cond_21

    if-eqz v17, :cond_21

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_7
    if-nez v5, :cond_17

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "pairwise"

    move/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_17
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "allowedGroupCiphersString":Ljava/lang/String;
    if-nez v33, :cond_23

    if-eqz v36, :cond_23

    if-eqz v15, :cond_23

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_8
    if-nez v5, :cond_18

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "group"

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v15}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_18
    if-nez v33, :cond_25

    if-eqz v36, :cond_25

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_25

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_25

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_9
    if-nez v5, :cond_19

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_19

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    :cond_19
    const/16 v25, 0x0

    .local v25, "hasSetKey":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v5, :cond_2a

    const/16 v27, 0x0

    .local v27, "i":I
    :goto_a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_2a

    if-nez v33, :cond_27

    if-eqz v36, :cond_27

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v27

    if-eqz v5, :cond_27

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v27

    if-eqz v5, :cond_27

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v27

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v27

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_b
    if-nez v5, :cond_1a

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v27

    if-eqz v5, :cond_1a

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v27

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    :cond_1a
    :goto_c
    add-int/lit8 v27, v27, 0x1

    goto :goto_a

    .end local v14    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v15    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v17    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v18    # "allowedProtocolsString":Ljava/lang/String;
    .end local v25    # "hasSetKey":Z
    .end local v27    # "i":I
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set key_mgmt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v18    # "allowedProtocolsString":Ljava/lang/String;
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set proto: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v14    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    :cond_1f
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set auth_alg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v17    # "allowedPairwiseCiphersString":Ljava/lang/String;
    :cond_21
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set pairwise: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v15    # "allowedGroupCiphersString":Ljava/lang/String;
    :cond_23
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "psk"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "failed to set psk"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v25    # "hasSetKey":Z
    .restart local v27    # "i":I
    :cond_27
    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget-object v6, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v6, v6, v27

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v8, v8, v27

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set wep_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_29
    const/16 v25, 0x1

    goto/16 :goto_c

    .end local v27    # "i":I
    :cond_2a
    if-eqz v25, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set wep_tx_keyidx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2b
    if-nez v33, :cond_2c

    if-nez v36, :cond_33

    :cond_2c
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "priority"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    :cond_2d
    if-nez v33, :cond_2e

    if-nez v36, :cond_35

    :cond_2e
    :goto_e
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_36

    const/4 v5, 0x1

    :goto_f
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_2f
    if-nez v33, :cond_30

    if-nez v36, :cond_38

    :cond_30
    :goto_10
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v5, :cond_31

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "ieee80211w"

    const-string v8, "2"

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    :cond_31
    if-nez v33, :cond_3a

    if-eqz v36, :cond_3a

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v5, :cond_3a

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v5, :cond_3a

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_11
    if-nez v5, :cond_32

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v5, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "update_identifier"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move/from16 v0, v32

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    :cond_32
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_4b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v22, v0

    .local v22, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiConfigStore;->needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v5, v6, :cond_3c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": key store is locked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v22    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_33
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move-object/from16 v0, v36

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-eq v5, v6, :cond_2d

    goto/16 :goto_d

    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set priority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_35
    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v5, v6, :cond_2f

    goto/16 :goto_e

    :cond_36
    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set hiddenSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_38
    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eq v5, v6, :cond_31

    goto/16 :goto_10

    :cond_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set requirePMF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3a
    const/4 v5, 0x0

    goto/16 :goto_11

    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set updateIdentifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v22    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_3c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    .local v20, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v31

    .local v31, "keyId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to install keys"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .end local v20    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v31    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v21

    .local v21, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invalid config for key installation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v21    # "e":Ljava/lang/IllegalStateException;
    :cond_3d
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v23

    .local v23, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v37, 0x0

    .local v37, "savedEnterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v38, 0x0

    .local v38, "savedValue":Ljava/lang/String;
    if-eqz v36, :cond_3e

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_3e

    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v37

    .end local v37    # "savedEnterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3e
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .end local v38    # "savedValue":Ljava/lang/String;
    .local v30, "key$iterator":Ljava/util/Iterator;
    :cond_3f
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .local v29, "key":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .local v41, "value":Ljava/lang/String;
    if-eqz v37, :cond_40

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    :cond_40
    const-string v5, "password"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    if-eqz v41, :cond_41

    const-string v5, "*"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    :cond_41
    const-string v5, "realm"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const-string v5, "plmn"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const-string v5, "identity"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_42

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_43

    :cond_42
    if-nez v33, :cond_3f

    if-eqz v41, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "NULL"

    move/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_43
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_42

    if-nez v33, :cond_44

    if-eqz v38, :cond_44

    if-eqz v41, :cond_44

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_12
    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v41

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_44
    const/4 v5, 0x0

    goto :goto_12

    :cond_45
    const-string v5, "anonymous_identity"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_46

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_47

    :cond_46
    if-nez v33, :cond_3f

    if-eqz v41, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "NULL"

    move/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_47
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_46

    if-nez v33, :cond_48

    if-eqz v38, :cond_48

    if-eqz v41, :cond_48

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_13
    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v41

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_48
    const/4 v5, 0x0

    goto :goto_13

    :cond_49
    if-nez v33, :cond_4a

    if-eqz v38, :cond_4a

    if-eqz v41, :cond_4a

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_14
    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v32

    move-object/from16 v1, v29

    move-object/from16 v2, v41

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4a
    const/4 v5, 0x0

    goto :goto_14

    .end local v22    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v23    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29    # "key":Ljava/lang/String;
    .end local v30    # "key$iterator":Ljava/util/Iterator;
    .end local v41    # "value":Ljava/lang/String;
    :cond_4b
    const/16 v40, 0x0

    goto/16 :goto_2

    .end local v14    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v15    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v16    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v17    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v18    # "allowedProtocolsString":Ljava/lang/String;
    .end local v25    # "hasSetKey":Z
    :cond_4c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    .restart local v20    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v20, :cond_4e

    new-instance v20, Landroid/net/wifi/WifiConfiguration;

    .end local v20    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .restart local v20    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    move/from16 v0, v32

    move-object/from16 v1, v20

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eqz p1, :cond_4d

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move-object/from16 v0, v20

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move-object/from16 v0, v20

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move-object/from16 v0, v20

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move-object/from16 v0, v20

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move-object/from16 v0, v20

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    :cond_4d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "created new config netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_4e
    const/16 v26, 0x0

    .local v26, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_5b

    :try_start_1
    new-instance v13, Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v33, :cond_4f

    const/4 v5, 0x0

    :goto_15
    invoke-direct {v13, v6, v8, v5}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/security/KeyStore;Z)V

    .local v13, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .local v7, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    const/4 v5, 0x0

    array-length v8, v6

    :goto_16
    if-ge v5, v8, :cond_50

    aget-wide v10, v6, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    .local v35, "roamingConsortiumId":Ljava/lang/Long;
    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v35    # "roamingConsortiumId":Ljava/lang/Long;
    :cond_4f
    const/4 v5, 0x1

    goto :goto_15

    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :cond_50
    new-instance v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .local v4, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v26    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "created a homeSP object for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :goto_17
    const/4 v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_51

    if-eqz v33, :cond_59

    move/from16 v0, p2

    move-object/from16 v1, v20

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    :cond_51
    :goto_18
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    .local v39, "sb":Ljava/lang/StringBuilder;
    const-string v5, "time="

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .local v19, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v5, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v19, v6, v8

    const/4 v8, 0x1

    aput-object v19, v6, v8

    const/4 v8, 0x2

    aput-object v19, v6, v8

    const/4 v8, 0x3

    aput-object v19, v6, v8

    const/4 v8, 0x4

    aput-object v19, v6, v8

    const/4 v8, 0x5

    aput-object v19, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v33, :cond_5a

    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    :goto_19
    move-object/from16 v0, v20

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_52

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove deleted status netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_52
    move-object/from16 v0, v20

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_53

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    :cond_53
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    move-object/from16 v0, v20

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v5, :cond_54

    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove ephemeral status netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_54
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v5, :cond_55

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "will read network variables netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_55
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v5, :cond_56

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    :cond_56
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_57

    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move-object/from16 v0, v20

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    :cond_57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v34

    .local v34, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    if-eqz v4, :cond_58

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    :cond_58
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    return-object v34

    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v19    # "c":Ljava/util/Calendar;
    .end local v34    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v39    # "sb":Ljava/lang/StringBuilder;
    .restart local v26    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :catch_1
    move-exception v28

    .local v28, "ioe":Ljava/io/IOException;
    move-object/from16 v4, v26

    .end local v26    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :goto_1a
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create Passpoint config: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v5

    .end local v28    # "ioe":Ljava/io/IOException;
    :cond_59
    move/from16 v0, p2

    move-object/from16 v1, v20

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_18

    .restart local v19    # "c":Ljava/util/Calendar;
    .restart local v39    # "sb":Ljava/lang/StringBuilder;
    :cond_5a
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    goto/16 :goto_19

    .end local v19    # "c":Ljava/util/Calendar;
    .end local v39    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :catch_2
    move-exception v28

    .restart local v28    # "ioe":Ljava/io/IOException;
    goto :goto_1a

    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v28    # "ioe":Ljava/io/IOException;
    .restart local v26    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_5b
    move-object/from16 v4, v26

    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_17
.end method

.method private buildPnoList()V
    .locals 8

    .prologue
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v3, "sortedWifiConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildPnoList sortedWifiConfigurations size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/server/wifi/WifiConfigStore$2;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiConfigStore$2;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .local v4, "threshold":I
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found sortedWifiConfigurations : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5, v0, v4}, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;-><init>(Lcom/android/server/wifi/WifiNative;Landroid/net/wifi/WifiConfiguration;I)V

    .local v2, "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    .end local v4    # "threshold":I
    :cond_1
    return-void
.end method

.method private cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p3, "passpointMatch"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .prologue
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    .local v6, "scanResult":Landroid/net/wifi/ScanResult;
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v10, 0xc8

    if-lt v9, v10, :cond_1

    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSavedNetworkHistory(): found a deleted, skip it...  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    .local v5, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v5, :cond_2

    const-string v9, "WifiConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not allocate scan cache for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v4

    .local v4, "result":Landroid/net/wifi/ScanResult;
    if-eqz v4, :cond_3

    iget v9, v4, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    iput v9, v6, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    iget-wide v10, v4, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    iput-wide v10, v6, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    iget v9, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iput v9, v6, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iget v9, v4, Landroid/net/wifi/ScanResult;->numConnection:I

    iput v9, v6, Landroid/net/wifi/ScanResult;->numConnection:I

    iget v9, v4, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    iput v9, v6, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    :cond_3
    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/net/wifi/ScanResult;->untrusted:Z

    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v9

    const/16 v10, 0xc0

    if-le v9, v10, :cond_7

    const-wide/16 v2, 0x0

    .local v2, "now_dbg":J
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Will trim config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "sd$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    .local v7, "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .end local v8    # "sd$iterator":Ljava/util/Iterator;
    :cond_6
    const/16 v9, 0x80

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/ScanDetailCache;->trim(I)V

    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v9, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    sub-long v0, v10, v2

    .local v0, "diff":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Finished trimming config, time(ns) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "sd$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    .restart local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "diff":J
    .end local v2    # "now_dbg":J
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    .end local v8    # "sd$iterator":Ljava/util/Iterator;
    :cond_7
    if-eqz p3, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v9

    invoke-virtual {v5, p2, p3, v9}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void

    :cond_8
    invoke-virtual {v5, p2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    goto :goto_2
.end method

.method private cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 7
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .local v3, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v3, v4, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-direct {p0, v0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find config for \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v3    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_3
    return-void
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static encodeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-string v0, "eap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "engine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private getAllConfiguredNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-object v2
.end method

.method private static getChecksum(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .local v0, "csum":Ljava/util/zip/Checksum;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Ljava/util/zip/Checksum;->update([BII)V

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    if-eqz p1, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v2
.end method

.method private getCredentialsBySsidMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "psk"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "storedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static getPnoNetworkSortScore(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->isNetworkEnabled(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->isNetworkTempDisabled(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static hasHardwareBackedKey(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isAutoConfigPriorities()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_auto_priority"

    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static isHardwareBackedKey(Ljava/security/PrivateKey;)Z
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isNetworkEnabled(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNetworkTempDisabled(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v2, 0x80

    if-gt v1, v2, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .local v0, "method":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private localLog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private localLog(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logContents(Ljava/lang/String;)V
    .locals 8
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- Begin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v3, v4

    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- End "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Contents ---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    return-void

    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_6
    throw v5

    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private logKernelTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .local v2, "kernelTimeMs":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "kernel time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v4, v2, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-long v4, v2, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    array-length v1, p2

    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .local v1, "nextSetBit":I
    array-length v2, p1

    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private markAllNetworksDisabled()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    return-void
.end method

.method private markAllNetworksDisabledExcept(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p1, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v3, :cond_0

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method private matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;
    .locals 12
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "query"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v7

    .local v7, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v9, v7}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_2

    const/4 v8, 0x0

    .local v8, "queried":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getLoadedSPs()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .local v4, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    .local v6, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "match nwk "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->toKeyString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", anqp "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v0, :cond_3

    const-string v9, "present"

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", query "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", home sps: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "homeSP$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .local v2, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    invoke-virtual {v2, v7, v1, v9}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v5

    .local v5, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": match "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", queried "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v5, v9, :cond_0

    if-eqz v8, :cond_4

    :cond_0
    :goto_4
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v3    # "homeSP$iterator":Ljava/util/Iterator;
    .end local v4    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v5    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .end local v6    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v8    # "queried":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    goto/16 :goto_0

    .end local v1    # "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_2
    const/4 v8, 0x1

    .restart local v8    # "queried":Z
    goto/16 :goto_1

    .restart local v4    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .restart local v6    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_3
    const-string v9, "missing"

    goto/16 :goto_2

    .restart local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v3    # "homeSP$iterator":Ljava/util/Iterator;
    .restart local v5    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v9, v7}, Lcom/android/server/wifi/hotspot2/AnqpCache;->initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->startANQP(Lcom/android/server/wifi/ScanDetail;)V

    :cond_5
    const/4 v8, 0x1

    goto :goto_4

    .end local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v5    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_6
    return-object v6
.end method

.method private matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;
    .locals 5
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isConfigured()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigStore;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigStore;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    move-result-object v0

    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pass 1 matches: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    .local v0, "certData":[B
    const-string v3, "WifiConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putting certificate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in keystore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v4, 0x3f2

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v0, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .end local v0    # "certData":[B
    :catch_0
    move-exception v2

    .local v2, "e2":Ljava/security/cert/CertificateException;
    return v6

    .end local v2    # "e2":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    .local v1, "e1":Ljava/io/IOException;
    return v6
.end method

.method private readAutoJoinConfig()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v12, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    invoke-direct {v9, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_5

    const-string v9, "WifiConfigStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readAutoJoinConfig line: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x3a

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .local v7, "split":I
    if-gez v7, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .local v6, "reference":Ljava/lang/Object;
    if-eqz v6, :cond_0

    add-int/lit8 v9, v7, 0x1

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "value":I
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v9, v12, :cond_4

    check-cast v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local v6    # "reference":Ljava/lang/Object;
    if-eqz v8, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3
    const-string v9, "WifiConfigStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readAutoJoinConfig: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .end local v8    # "value":I
    :catch_0
    move-exception v3

    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v9, "WifiConfigStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v7    # "split":I
    :catch_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v10

    move-object v14, v10

    move-object v10, v9

    move-object v9, v14

    :goto_5
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_6
    if-eqz v10, :cond_9

    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinStatus: Error parsing configuration"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    return-void

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "split":I
    .restart local v8    # "value":I
    :cond_3
    move v9, v11

    goto :goto_2

    .restart local v6    # "reference":Ljava/lang/Object;
    :cond_4
    :try_start_7
    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v6    # "reference":Ljava/lang/Object;
    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v7    # "split":I
    .end local v8    # "value":I
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    :goto_9
    if-eqz v10, :cond_7

    :try_start_9
    throw v10
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v10

    goto :goto_9

    :cond_7
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v11

    if-nez v10, :cond_8

    move-object v10, v11

    goto :goto_6

    :cond_8
    if-eq v10, v11, :cond_2

    :try_start_a
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    throw v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .local v4, "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    goto :goto_5

    :catch_6
    move-exception v9

    goto :goto_4
.end method

.method private readIpAndProxyConfigurations()V
    .locals 6

    .prologue
    sget-object v4, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v4}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .local v3, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .local v2, "id":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyID(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configuration found for missing network, nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignored, networks.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_1

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "id":I
    :cond_4
    return-void
.end method

.method private readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "netId"    # I
    .param p2, "variable"    # Ljava/util/BitSet;
    .param p3, "varName"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2}, Ljava/util/BitSet;->clear()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "vals":[Ljava/lang/String;
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .local v1, "val":Ljava/lang/String;
    invoke-direct {p0, v1, p4}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "index":I
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "vals":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readNetworkHistory()V
    .locals 33

    .prologue
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory() path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_0
    const/16 v28, 0x0

    const/16 v19, 0x0

    .local v19, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v20, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v29, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local v19    # "in":Ljava/io/DataInputStream;
    .local v20, "in":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .local v4, "bssid":Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, "ssid":Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "key":Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "freq":I
    const/16 v26, 0x0

    .local v26, "status":I
    const-wide/16 v10, 0x0

    .local v10, "seen":J
    :try_start_1
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .local v6, "rssi":I
    const/4 v5, 0x0

    .local v5, "caps":Ljava/lang/String;
    const/4 v14, 0x0

    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v21    # "key":Ljava/lang/String;
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v22

    .local v22, "line":Ljava/lang/String;
    if-nez v22, :cond_3

    if-eqz v20, :cond_2

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_2
    :goto_1
    if-eqz v28, :cond_34

    :try_start_3
    throw v28
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v19, v20

    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v20    # "in":Ljava/io/DataInputStream;
    .end local v22    # "line":Ljava/lang/String;
    .end local v26    # "status":I
    :goto_2
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "readNetworkHistory: failed to read, revert to default, "

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    return-void

    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v22    # "line":Ljava/lang/String;
    .restart local v26    # "status":I
    :cond_3
    const/16 v8, 0x3a

    :try_start_4
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .local v13, "colon":I
    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .local v24, "slash":C
    if-gez v13, :cond_4

    const/16 v8, 0x2f

    move/from16 v0, v24

    if-ne v0, v8, :cond_1

    :cond_4
    const/16 v8, 0x2f

    move/from16 v0, v24

    if-ne v0, v8, :cond_6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .local v21, "key":Ljava/lang/String;
    :goto_4
    const-string v8, "CONFIG"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .local v14, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v14, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory didnt find netid for hash="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .end local v6    # "rssi":I
    .end local v13    # "colon":I
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "line":Ljava/lang/String;
    .end local v24    # "slash":C
    :catch_1
    move-exception v8

    move-object/from16 v19, v20

    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v20    # "in":Ljava/io/DataInputStream;
    .end local v26    # "status":I
    :goto_5
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v9

    move-object/from16 v32, v9

    move-object v9, v8

    move-object/from16 v8, v32

    :goto_6
    if-eqz v19, :cond_5

    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_5
    :goto_7
    if-eqz v9, :cond_36

    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_2
    move-exception v18

    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v13    # "colon":I
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v22    # "line":Ljava/lang/String;
    .restart local v24    # "slash":C
    .restart local v26    # "status":I
    :cond_6
    const/4 v8, 0x0

    :try_start_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "key":Ljava/lang/String;
    add-int/lit8 v8, v13, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .local v27, "value":Ljava/lang/String;
    goto :goto_4

    .end local v27    # "value":Ljava/lang/String;
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-nez v8, :cond_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Upgrading network "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v29, " to "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6    # "rssi":I
    .end local v13    # "colon":I
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "line":Ljava/lang/String;
    .end local v24    # "slash":C
    :catchall_1
    move-exception v8

    move-object/from16 v9, v28

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    goto :goto_6

    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "rssi":I
    .restart local v13    # "colon":I
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "line":Ljava/lang/String;
    .restart local v24    # "slash":C
    :cond_9
    if-eqz v14, :cond_1

    const-string v8, "SSID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-nez v8, :cond_1

    move-object/from16 v25, v27

    .local v25, "ssid":Ljava/lang/String;
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    :cond_a
    move-object/from16 v0, v25

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .end local v25    # "ssid":Ljava/lang/String;
    :cond_b
    const-string v8, "FQDN"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "null"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    const/4 v8, 0x0

    :goto_8
    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v8, "DEFAULT_GW"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    move-object/from16 v0, v27

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v8, "AUTO_JOIN_STATUS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    goto/16 :goto_0

    :cond_e
    const-string v8, "SUP_DIS_REASON"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto/16 :goto_0

    :cond_f
    const-string v8, "SELF_ADDED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    goto/16 :goto_0

    :cond_10
    const-string v8, "DID_SELF_ADD"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    goto/16 :goto_0

    :cond_11
    const-string v8, "NO_INTERNET_ACCESS_REPORTS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    goto/16 :goto_0

    :cond_12
    const-string v8, "VALIDATED_INTERNET_ACCESS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    goto/16 :goto_0

    :cond_13
    const-string v8, "CREATION_TIME"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move-object/from16 v0, v27

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    const-string v8, "UPDATE_TIME"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    move-object/from16 v0, v27

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const-string v8, "EPHEMERAL"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    goto/16 :goto_0

    :cond_16
    const-string v8, "CREATOR_UID_KEY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto/16 :goto_0

    :cond_17
    const-string v8, "BLACKLIST_MILLI"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    goto/16 :goto_0

    :cond_18
    const-string v8, "CONNECT_FAILURES"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    goto/16 :goto_0

    :cond_19
    const-string v8, "IP_CONFIG_FAILURES"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    goto/16 :goto_0

    :cond_1a
    const-string v8, "AUTH_FAILURES"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    goto/16 :goto_0

    :cond_1b
    const-string v8, "SCORER_OVERRIDE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    goto/16 :goto_0

    :cond_1c
    const-string v8, "SCORER_OVERRIDE_AND_SWITCH"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    goto/16 :goto_0

    :cond_1d
    const-string v8, "NUM_ASSOCIATION"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    goto/16 :goto_0

    :cond_1e
    const-string v8, "JOIN_ATTEMPT_BOOST"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    goto/16 :goto_0

    :cond_1f
    const-string v8, "CONNECT_UID_KEY"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    goto/16 :goto_0

    :cond_20
    const-string v8, "UPDATE_UID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_0

    :cond_21
    const-string v8, "FAILURE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    move-object/from16 v0, v27

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    :cond_22
    const-string v8, "PEER_CONFIGURATION"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    move-object/from16 v0, v27

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    goto/16 :goto_0

    :cond_23
    const-string v8, "CHOICE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    const-string v15, ""

    .local v15, "configKey":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "choice":I
    sget-object v8, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v23

    .local v23, "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_31

    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "WifiConfigStore: connectChoice:  Couldnt match pattern : "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v12    # "choice":I
    .end local v15    # "configKey":Ljava/lang/String;
    .end local v23    # "match":Ljava/util/regex/Matcher;
    :cond_24
    const-string v8, "LINK"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v8, :cond_33

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    goto/16 :goto_0

    :cond_25
    const-string v8, "BSSID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const/16 v26, 0x0

    move-object/from16 v4, v27

    .local v4, "bssid":Ljava/lang/String;
    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    const-string v5, ""

    .local v5, "caps":Ljava/lang/String;
    goto/16 :goto_0

    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    :cond_26
    const-string v8, "RSSI"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_27
    const-string v8, "BSSID_STATUS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    goto/16 :goto_0

    :cond_28
    const-string v8, "FREQ"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_29
    const-string v8, "DATE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "/BSSID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    if-eqz v4, :cond_1

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static/range {v25 .. v25}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .local v3, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v2, Lcom/android/server/wifi/ScanDetail;

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v8

    move/from16 v0, v26

    iput v0, v8, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    goto/16 :goto_0

    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "wssid":Landroid/net/wifi/WifiSsid;
    :cond_2a
    const-string v8, "DELETED_CRC32"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2b
    const-string v8, "DELETED_EPHEMERAL"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v0, v27

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2c
    const-string v8, "CREATOR_NAME"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    move-object/from16 v0, v27

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2d
    const-string v8, "UPDATE_NAME"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    move-object/from16 v0, v27

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2e
    const-string v8, "USER_APPROVED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    goto/16 :goto_0

    .restart local v25    # "ssid":Ljava/lang/String;
    :cond_2f
    const-string v8, "Error parsing network history file, mismatched SSIDs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    const/4 v14, 0x0

    .local v14, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v25, 0x0

    .local v25, "ssid":Ljava/lang/String;
    goto/16 :goto_0

    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v25    # "ssid":Ljava/lang/String;
    :cond_30
    move-object/from16 v8, v27

    goto/16 :goto_8

    .restart local v12    # "choice":I
    .restart local v15    # "configKey":Ljava/lang/String;
    .restart local v23    # "match":Ljava/util/regex/Matcher;
    :cond_31
    const/4 v8, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v15

    const/4 v8, 0x2

    :try_start_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v12

    :goto_9
    if-lez v12, :cond_1

    :try_start_a
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-nez v8, :cond_32

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    :cond_32
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_3
    move-exception v18

    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    goto :goto_9

    .end local v12    # "choice":I
    .end local v15    # "configKey":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "match":Ljava/util/regex/Matcher;
    :cond_33
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .end local v13    # "colon":I
    .end local v21    # "key":Ljava/lang/String;
    .end local v24    # "slash":C
    :catch_4
    move-exception v28

    goto/16 :goto_1

    :cond_34
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_3

    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v22    # "line":Ljava/lang/String;
    .end local v26    # "status":I
    :catch_5
    move-exception v28

    if-nez v9, :cond_35

    move-object/from16 v9, v28

    goto/16 :goto_7

    :cond_35
    move-object/from16 v0, v28

    if-eq v9, v0, :cond_5

    :try_start_b
    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_6
    move-exception v16

    .local v16, "e":Ljava/io/EOFException;
    goto/16 :goto_3

    .end local v16    # "e":Ljava/io/EOFException;
    :cond_36
    throw v8
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    move-exception v17

    .local v17, "e":Ljava/io/IOException;
    :goto_a
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "readNetworkHistory: No config file, revert to default, "

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .end local v17    # "e":Ljava/io/IOException;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v20    # "in":Ljava/io/DataInputStream;
    .restart local v22    # "line":Ljava/lang/String;
    .restart local v26    # "status":I
    :catch_8
    move-exception v16

    .restart local v16    # "e":Ljava/io/EOFException;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_3

    .end local v16    # "e":Ljava/io/EOFException;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "in":Ljava/io/DataInputStream;
    :catch_9
    move-exception v17

    .restart local v17    # "e":Ljava/io/IOException;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    goto :goto_a

    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v17    # "e":Ljava/io/IOException;
    .end local v22    # "line":Ljava/lang/String;
    .end local v26    # "status":I
    .local v19, "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v8

    move-object/from16 v9, v28

    goto/16 :goto_6

    :catch_a
    move-exception v8

    goto/16 :goto_5
.end method

.method private readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .local v4, "start":J
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .local v2, "end":J
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readNetworkVariableFromSupplicantFile ssid=["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "] key="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " duration="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .local v4, "netId":I
    if-gez v4, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v9, "ssid"

    invoke-virtual {v8, v4, v9}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-eq v8, v9, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v9, "bssid"

    invoke-virtual {v8, v4, v9}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    iput-object v5, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v9, "priority"

    invoke-virtual {v8, v4, v9}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput v12, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v9, "sim_num"

    invoke-virtual {v8, v4, v9}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->SIMNum:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v9, "scan_ssid"

    invoke-virtual {v8, v4, v9}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_a

    move v8, v7

    :goto_4
    iput-boolean v8, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v9, "mode"

    invoke-virtual {v8, v4, v9}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_b

    :goto_6
    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "frequency"

    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->frequency:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "wep_tx_keyidx"

    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput v12, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    :try_start_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    const/4 v7, 0x4

    if-ge v1, v7, :cond_d

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget-object v8, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v7, v1

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_7
    iput-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto/16 :goto_1

    :catch_0
    move-exception v2

    .local v2, "ignore":Ljava/lang/NumberFormatException;
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error in parsing Selected Sim number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v2    # "ignore":Ljava/lang/NumberFormatException;
    :cond_a
    move v8, v6

    goto/16 :goto_4

    :cond_b
    move v7, v6

    goto :goto_6

    .restart local v1    # "i":I
    :cond_c
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v11, v7, v1

    goto :goto_b

    :cond_d
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "psk"

    invoke-virtual {v7, v4, v8}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    iput-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_c
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const-string v9, "proto"

    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const-string v9, "key_mgmt"

    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const-string v9, "auth_alg"

    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const-string v9, "pairwise"

    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const-string v9, "group"

    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v7, :cond_e

    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    :cond_e
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v0

    .local v0, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    array-length v8, v7

    :goto_d
    if-ge v6, v8, :cond_12

    aget-object v3, v7, v6

    .local v3, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v9, v4, v3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {v5}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_f
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .end local v0    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_10
    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_c

    .restart local v0    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "key":Ljava/lang/String;
    :cond_11
    const-string v9, "NULL"

    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .end local v3    # "key":Ljava/lang/String;
    :cond_12
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v6, v4}, Lcom/android/server/wifi/WifiConfigStore;->migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    :cond_13
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V

    return-void

    .end local v0    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    :catch_1
    move-exception v2

    .restart local v2    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_9

    .end local v2    # "ignore":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    .restart local v2    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_8

    .end local v2    # "ignore":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .restart local v2    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_7

    .end local v2    # "ignore":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v2

    .restart local v2    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_5

    .end local v2    # "ignore":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v2

    .restart local v2    # "ignore":Ljava/lang/NumberFormatException;
    goto/16 :goto_2
.end method

.method private readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "reader":Ljava/io/BufferedReader;
    sget-boolean v10, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readNetworkVariablesFromSupplicantFile key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .local v2, "found":Z
    const/4 v4, 0x0

    .local v4, "networkSsid":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "value":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .end local v4    # "networkSsid":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .local v3, "line":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_6

    const-string v10, "[ \\t]*network=\\{"

    invoke-virtual {v3, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v2, 0x1

    const/4 v4, 0x0

    .restart local v4    # "networkSsid":Ljava/lang/String;
    const/4 v9, 0x0

    .end local v4    # "networkSsid":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .local v8, "trimmedLine":Ljava/lang/String;
    const-string v10, "ssid="

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v9, :cond_3

    invoke-interface {v7, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v8    # "trimmedLine":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v10, "[ \\t]*\\}"

    invoke-virtual {v3, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .restart local v4    # "networkSsid":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_1

    .end local v4    # "networkSsid":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v8    # "trimmedLine":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    .local v9, "value":Ljava/lang/String;
    goto :goto_2

    .end local v8    # "trimmedLine":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    :goto_3
    move-object v5, v6

    .end local v2    # "found":Z
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_8
    :goto_4
    return-object v7

    .restart local v2    # "found":Z
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "found":Z
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_3
    sget-boolean v10, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    if-eqz v5, :cond_8

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_4

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_5
    sget-boolean v10, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    if-eqz v5, :cond_8

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v5, :cond_b

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_b
    :goto_8
    throw v10

    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "found":Z
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method private removeConfigAndSendBroadcastIfNeeded(I)Z
    .locals 6
    .param p1, "netId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_5

    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    :cond_2
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    :cond_3
    :goto_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .local v1, "csum":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  crc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .end local v1    # "csum":Ljava/lang/Long;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    invoke-direct {p0, v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    :cond_5
    return v5

    :cond_6
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p0
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "changeReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setNetworkPriorityNative(II)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "priority"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v1, "priority"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setSSIDNative(ILjava/lang/String;)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v1, "ssid"

    invoke-static {p2}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static toMatchString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 3
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    :cond_0
    return-void

    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    return-void
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 5

    .prologue
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .local v2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v3, v2}, Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 6
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .local v1, "ipChanged":Z
    const/4 v3, 0x0

    .local v3, "proxyChanged":Z
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeIpAndProxyConfigurationsOnChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-getandroid_net_IpConfiguration$IpAssignmentSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v4, "Ignore invalid ip assignment during write"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-getandroid_net_IpConfiguration$ProxySettingsSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    const-string v4, "Ignore invalid proxy configuration during write"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_1
    :pswitch_1
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP config changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " static configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " proxyProperties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    :cond_6
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v4, v1, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v4

    :pswitch_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    if-eq v4, v5, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    if-eq v4, v5, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .local v2, "newHttpProxy":Landroid/net/ProxyInfo;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .local v0, "currentHttpProxy":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_a
    if-eqz v0, :cond_b

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    .end local v0    # "currentHttpProxy":Landroid/net/ProxyInfo;
    .end local v2    # "newHttpProxy":Landroid/net/ProxyInfo;
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    if-eq v4, v5, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v3, :cond_0

    const-string v3, "addOrUpdateNetwork id="

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    const-string v3, "WifiConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " netId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .local v1, "csum":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .end local v1    # "csum":Ljava/lang/Long;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v2

    .local v2, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget-boolean v3, v2, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    return v3

    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v3, 0x2

    goto :goto_0
.end method

.method blackListBssid(Ljava/lang/String;)V
    .locals 7
    .param p1, "BSSID"    # Ljava/lang/String;

    .prologue
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "WifiConfigStore"

    const-string v6, "No blacklist allowed without epno enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5, p1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .local v4, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "count":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bssid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "bssid":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    aput-object v0, v4, v2

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_0

    .end local v0    # "bssid":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {v4}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    return-void
.end method

.method canModifyNetwork(IIZ)Z
    .locals 12
    .param p1, "uid"    # I
    .param p2, "networkId"    # I
    .param p3, "onlyAnnotate"    # Z

    .prologue
    const/4 v11, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v9, p2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canModifyNetwork: cannot find config networkId "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    return v8

    :cond_0
    const-class v9, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v5

    :goto_0
    if-eqz v5, :cond_2

    return v7

    :cond_1
    const/4 v5, 0x0

    .local v5, "isUidDeviceOwner":Z
    goto :goto_0

    .end local v5    # "isUidDeviceOwner":Z
    :cond_2
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v9, p1, :cond_4

    const/4 v3, 0x1

    .local v3, "isCreator":Z
    :goto_1
    if-eqz p3, :cond_5

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v7

    :cond_3
    return v7

    .end local v3    # "isCreator":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isCreator":Z
    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.software.device_admin"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v1, :cond_6

    return v8

    :cond_6
    if-eqz v1, :cond_8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v1, v9, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v2

    :goto_2
    if-nez v2, :cond_9

    if-nez v3, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v7

    :cond_7
    return v7

    :cond_8
    const/4 v2, 0x0

    .local v2, "isConfigEligibleForLockdown":Z
    goto :goto_2

    .end local v2    # "isConfigEligibleForLockdown":Z
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v7, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    const/4 v4, 0x1

    .local v4, "isLockdownFeatureEnabled":Z
    :goto_3
    if-nez v4, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v7

    :goto_4
    return v7

    .end local v4    # "isLockdownFeatureEnabled":Z
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "isLockdownFeatureEnabled":Z
    goto :goto_3

    :cond_b
    move v7, v8

    goto :goto_4
.end method

.method canModifyNetwork(ILandroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "onlyAnnotate"    # Z

    .prologue
    const/4 v4, 0x0

    if-nez p2, :cond_0

    const-string v2, "canModifyNetowrk recieved null configuration"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    return v4

    :cond_0
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .local v0, "netid":I
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v2

    return v2

    .end local v0    # "netid":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .local v1, "test":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_2

    return v4

    :cond_2
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .restart local v0    # "netid":I
    goto :goto_0
.end method

.method checkConfigOverridePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method clearBssidBlacklist()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WifiConfigStore"

    const-string v1, "No blacklist allowed without epno enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    return-void
.end method

.method disableAllNetworks()V
    .locals 5

    .prologue
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableAllNetworks"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .local v2, "networkDisabled":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->getEnabledNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "enabled$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "enabled":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "enabled":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    :cond_3
    return-void
.end method

.method disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getEphemeral(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forget ephemeral SSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found ephemeral config in disableEphemeralNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    return-object v0
.end method

.method disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    .local v0, "ret":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->registerNetworkDisabled(I)V

    :cond_0
    return v0
.end method

.method disableNetwork(II)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableNetwork"

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    move-result v2

    .local v2, "ret":Z
    const/4 v1, 0x0

    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNetwork netId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " SSID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " disabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_3

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v4, :cond_2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v6, :cond_2

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move-object v1, v0

    .end local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-ne p2, v6, :cond_3

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/16 v3, 0xa1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    :cond_3
    if-eqz v1, :cond_4

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    :cond_4
    return v2

    .restart local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v4, "Dump of WifiConfigStore"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastPriority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Configured networks"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getAllConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conf$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "LostConfigs: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v4, :cond_2

    const-string v4, "WifiConfigStore - Log Begin ----"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v4, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v4, "WifiConfigStore - Log End ----"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isConfigured()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Begin dump of ANQP Cache"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v4, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->dump(Ljava/io/PrintWriter;)V

    const-string v4, "End dump of ANQP Cache"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method enableAllNetworks()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    const/4 v2, 0x0

    .local v2, "networkEnabledStateChanged":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v6, 0x80

    if-gt v3, v6, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v11, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    :cond_1
    :goto_1
    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v6, v4, v6

    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v6, v10}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    :cond_3
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enable network failed on "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    :cond_6
    return-void
.end method

.method enableNetwork(IZI)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "uid"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v1

    .local v1, "ret":Z
    if-eqz p2, :cond_2

    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNetwork(disableOthers=true, uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "enableNetwork(disableOthers=false) "

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v3

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .end local v0    # "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method enableNetworkWithoutBroadcast(IZ)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v1

    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    :cond_1
    return v1
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-lez p1, :cond_0

    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    :goto_0
    if-le p1, v1, :cond_1

    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    :goto_1
    return-void

    :cond_0
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    goto :goto_1
.end method

.method forgetNetwork(I)Z
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v2, :cond_0

    const-string v2, "forgetNetwork"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    move-result v1

    .local v1, "remove":Z
    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    return v3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConfiguredNetworksSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v0

    return v0
.end method

.method public getLastSelectedConfiguration()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    return-object v0
.end method

.method getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "netId":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v1

    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "netId":Ljava/lang/Integer;
    :cond_1
    return-object v6
.end method

.method getMaxDhcpRetries()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getCredentialsBySsidMap()Ljava/util/Map;

    move-result-object v0

    .local v0, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getProxyProperties(I)Landroid/net/ProxyInfo;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method getRecentConfiguredNetworks(IZ)Ljava/util/List;
    .locals 7
    .param p1, "milli"    # I
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v0, :cond_0

    int-to-long v4, p1

    iget v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredBand:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(JI)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-eq v4, v5, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    return-object v3
.end method

.method public getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-direct {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getScanDetailCacheIfExist(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    return-object v0
.end method

.method getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method getWhiteListedSsids(Landroid/net/wifi/WifiConfiguration;)[Ljava/lang/String;
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x22

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    .local v6, "num_ssids":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_0

    return-object v8

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    return-object v8

    :cond_1
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v7, :cond_2

    return-object v8

    :cond_2
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    return-object v8

    :cond_4
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "configKey$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "configKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .local v3, "link":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_5

    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v7, :cond_5

    iget-boolean v7, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v7, :cond_5

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    if-le v2, v12, :cond_6

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_6

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_6

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "nonQuoteSSID":Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_6
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "configKey":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .restart local v2    # "length":I
    if-le v2, v12, :cond_9

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_9

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_9

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "length":I
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_8
    new-array v7, v9, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .restart local v2    # "length":I
    :cond_9
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    goto :goto_2
.end method

.method public getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByFQDN(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find network for homeSP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method handleBSSIDBlackList(ILjava/lang/String;Z)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .local v2, "found":Z
    if-nez p2, :cond_0

    return v2

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v5}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v4    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_4
    return v2
.end method

.method handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_24:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_5:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+4) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    return-void

    :cond_3
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_HARD_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+8) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleDisabledAPs(ZLjava/lang/String;I)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .prologue
    const/4 v6, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_3

    const-string v4, "any"

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "enabled"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "BSSID"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x80

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring SSID re-enabled from supplicant:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID temp disabled for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_2
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v4, :cond_3

    iget-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_0

    const-string v4, "no identity"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0xa0

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no identity blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    iput-object p3, v1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v4, "WRONG_KEY"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "AUTH_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    if-le v4, v5, :cond_4

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v4, "DHCP FAILURE"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getMaxDhcpRetries()I

    move-result v2

    .local v2, "maxRetries":I
    if-lez v2, :cond_8

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-le v4, v2, :cond_8

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_8
    const/4 v3, 0x0

    .local v3, "result":Landroid/net/wifi/ScanResult;
    const-string v0, ""

    .local v0, "bssidDbg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    if-eqz v4, :cond_9

    if-eqz p4, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_9
    if-eqz v3, :cond_a

    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ipfail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    if-le v4, v9, :cond_a

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, p4}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to IP config failures, count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disableReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v0    # "bssidDbg":Ljava/lang/String;
    .end local v2    # "maxRetries":I
    :cond_b
    const-string v4, "CONN_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    if-le v4, v5, :cond_4

    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    const/4 v4, 0x4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3f2

    const/4 v3, 0x1

    .local v3, "ret":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "privKeyName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "userCertName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "caCertName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .local v1, "privKeyData":[B
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiConfigStore;->isHardwareBackedKey(Ljava/security/PrivateKey;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "importing keys "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in hardware backed store"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v1, v8, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v3

    .local v3, "ret":Z
    :goto_0
    if-nez v3, :cond_1

    return v3

    .local v3, "ret":Z
    :cond_0
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "importing keys "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in software backed store"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v1, v8, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v3

    .local v3, "ret":Z
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5, v2, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    return v3

    .end local v1    # "privKeyData":[B
    .end local v3    # "ret":Z
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    .restart local v3    # "ret":Z
    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5, v2, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5, v4, v8}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_3
    return v3

    .end local v3    # "ret":Z
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    :cond_6
    return v3
.end method

.method isEphemeral(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNetworkConfigured(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method isUsingStaticIp(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "link$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .local v11, "link":Landroid/net/wifi/WifiConfiguration;
    const/4 v10, 0x0

    .local v10, "doLink":Z
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    iget-boolean v1, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v1, :cond_2

    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v13

    .local v13, "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_2

    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration link due to same gw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_4
    const/4 v10, 0x1

    :cond_5
    if-eqz v10, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    if-eqz v1, :cond_7

    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "psk"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "apsk":Ljava/lang/String;
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "psk"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "bpsk":Ljava/lang/String;
    if-eqz v7, :cond_6

    if-nez v9, :cond_10

    :cond_6
    const/4 v10, 0x0

    .end local v7    # "apsk":Ljava/lang/String;
    .end local v9    # "bpsk":Ljava/lang/String;
    :cond_7
    :goto_1
    if-eqz v10, :cond_11

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: will link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_8
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    :cond_9
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    :cond_a
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, v11, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    :cond_b
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "abssid$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "abssid":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "bbssid$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "bbssid":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration try to link due to DBDC BSSID match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssida "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssidb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_f
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v10, 0x1

    goto :goto_2

    .end local v0    # "abssid":Ljava/lang/String;
    .end local v3    # "bbssid":Ljava/lang/String;
    .end local v6    # "abssid$iterator":Ljava/util/Iterator;
    .end local v8    # "bbssid$iterator":Ljava/util/Iterator;
    .restart local v7    # "apsk":Ljava/lang/String;
    .restart local v9    # "bpsk":Ljava/lang/String;
    :cond_10
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "*"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Mjkd86jEMGn79KhKll298Uu7-deleted"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_1

    .end local v7    # "apsk":Ljava/lang/String;
    .end local v9    # "bpsk":Ljava/lang/String;
    :cond_11
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_13

    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_12
    const/4 v1, 0x1

    iput-boolean v1, v11, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v10    # "doLink":Z
    .end local v11    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_15
    return-void
.end method

.method loadAndEnableAllNetworks()V
    .locals 1

    .prologue
    const-string v0, "Loading config and enabling all networks "

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    return-void
.end method

.method loadConfiguredNetworks()V
    .locals 21

    .prologue
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/ConfigurationMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "configTlsResetList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v13, -0x1

    .local v13, "last_id":I
    const/4 v10, 0x0

    .local v10, "done":Z
    :goto_0
    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiNative;->listNetworks(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "listStr":Ljava/lang/String;
    if-nez v15, :cond_0

    return-void

    :cond_0
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "lines":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const-string v18, "WifiConfigStore: loadConfiguredNetworks:  "

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    const/16 v18, 0x0

    array-length v0, v14

    move/from16 v19, v0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v16, v14, v18

    .local v16, "net":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .end local v16    # "net":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_2
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    aget-object v18, v14, v12

    const-string v19, "\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .local v17, "result":[Ljava/lang/String;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v18, 0x0

    :try_start_0
    aget-object v18, v17, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v13, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    const/16 v18, 0x3

    aget-object v18, v17, v18

    const-string v19, "[CURRENT]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .local v7, "csum":Ljava/util/zip/Checksum;
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-interface {v7, v0, v1, v2}, Ljava/util/zip/Checksum;->update([BII)V

    invoke-interface {v7}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v8

    .local v8, "d":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " got CRC for SSID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " -> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", was deleted"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .end local v8    # "d":J
    :cond_2
    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    :cond_3
    sget-object v18, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    sget-object v18, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const-string v18, "discarded duplicate network "

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->getTls12Enable()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v7    # "csum":Ljava/util/zip/Checksum;
    :cond_5
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to read network-id \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_5

    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const/16 v18, 0x3

    aget-object v18, v17, v18

    const-string v19, "[DISABLED]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_3

    :cond_7
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_3

    :cond_8
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_3

    .restart local v7    # "csum":Ljava/util/zip/Checksum;
    :cond_9
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v18, v0

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const-string v18, "loaded configured network"

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring loaded configured for network "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " because config are not valid"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "csum":Ljava/util/zip/Checksum;
    .end local v17    # "result":[Ljava/lang/String;
    :cond_b
    array-length v0, v14

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v12    # "i":I
    .end local v14    # "lines":[Ljava/lang/String;
    .end local v15    # "listStr":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readPasspointConfig()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkHistory()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readAutoJoinConfig()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->buildPnoList()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "loadConfiguredNetworks loaded "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " networks"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/ConfigurationMap;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->logKernelTime()V

    const-string v18, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    const-string v18, "/data/misc/wifi/wpa_supplicant.conf.tmp"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    sget-object v18, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    :cond_f
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "config$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiEnterpriseConfig;->setTls12Enable(Z)V

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    goto :goto_6

    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_10
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;Z)V

    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    .prologue
    if-eqz p2, :cond_0

    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public makeChannelList(Landroid/net/wifi/WifiConfiguration;IZ)Ljava/util/HashSet;
    .locals 18
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "restrict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "IZ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const/4 v14, 0x0

    return-object v14

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, "now_ms":J
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-nez v14, :cond_1

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v14, :cond_1

    const/4 v14, 0x0

    return-object v14

    :cond_1
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v14, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "dbg":Ljava/lang/StringBuilder;
    const-string v14, "makeChannelList age="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " max="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_2

    const-string v14, " bssids="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v14, :cond_3

    const-string v14, " linked="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .end local v3    # "dbg":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v7, 0x0

    .local v7, "numChannels":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    .local v11, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v10

    .local v10, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-le v7, v14, :cond_a

    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v14, :cond_d

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .local v6, "linked":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    .restart local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v10

    .restart local v10    # "result":Landroid/net/wifi/ScanResult;
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v14, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has link: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " freq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-gt v7, v14, :cond_7

    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_8

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "linked":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v14, :cond_b

    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_c

    const/4 v13, 0x1

    .local v13, "test":Z
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " freq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ?="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .end local v13    # "test":Z
    :cond_b
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "test":Z
    goto :goto_2

    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    .end local v13    # "test":Z
    :cond_d
    return-object v2
.end method

.method migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x3f2

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "netId"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "private_key"

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "oldPrivateKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    const-string v2, "engine"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "engine_id"

    const-string v3, "keystore"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "keystore://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/String;

    const-string v2, "keystore://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v0, "keyName":Ljava/lang/String;
    :goto_0
    const-string v2, "key_id"

    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine"

    const-string v4, "engine"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine_id"

    const-string v4, "engine_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "key_id"

    const-string v4, "key_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "private_key"

    const-string v4, "NULL"

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x1

    return v2

    .end local v0    # "keyName":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .restart local v0    # "keyName":Ljava/lang/String;
    goto :goto_0
.end method

.method needsUnlockedKeyStore()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    :cond_1
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    return-void
.end method

.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->notifyANQPDone(Ljava/lang/Long;Z)V

    return-void
.end method

.method public notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    move-result-object v0

    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pass 2 matches: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    return-void
.end method

.method readPasspointConfig()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->loadAllSPs()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wifi/ConfigurationMap;->populatePasspointData(Ljava/util/Collection;Lcom/android/server/wifi/WifiNative;)V

    return-void

    .end local v1    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read /data/misc/wifi/PerProviderSubscription.conf : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    return-void
.end method

.method removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/16 v5, 0x3f2

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WifiConfigStore"

    const-string v3, "removing client private key and user cert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WifiConfigStore"

    const-string v3, "removing CA cert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method removeNetwork(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v2, :cond_0

    const-string v2, "removeNetwork"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v1

    .local v1, "ret":Z
    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    :cond_1
    return v1
.end method

.method removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x1

    .local v2, "success":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v1

    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v5, v6, :cond_3

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", application \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" uninstalled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_2
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v5

    and-int/2addr v2, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    return v2
.end method

.method removeNetworksForUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .local v2, "success":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v1

    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq p1, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v5

    and-int/2addr v2, v5

    .local v2, "success":Z
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "success":Z
    :cond_2
    return v2
.end method

.method resetSimNetworks()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v4, "identity"

    const-string v5, "NULL"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v4, "anonymous_identity"

    const-string v5, "NULL"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method retrievePnoNetworkPriorityList(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "enablePno"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "pnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;>;"
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v5}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v4, "wifiConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz p1, :cond_0

    sget-object v5, Lcom/android/server/wifi/WifiConfigStore;->sPnoListSortComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "priority":I
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrieve network priorities before PNO. Max priority: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {v5, v6, v3}, Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v3    # "priority":I
    :cond_0
    const-string v5, "WifiConfigStore"

    const-string v6, "Retrieve network priorities after PNO."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {v5, v6, v7}, Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-object v2
.end method

.method saveConfig()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    move-result v0

    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_1

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v4, v8}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v4

    :cond_1
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "WifiConfigStore: saveNetwork netId"

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_2
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore saveNetwork, size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: removed from ephemeral blacklist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_4
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_b

    const/4 v2, 0x1

    .local v2, "newNetwork":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v3

    .local v3, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    .local v1, "netId":I
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiConfigStore: saveNetwork got it back netId="

    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_5
    if-eqz v2, :cond_7

    if-eq v1, v8, :cond_7

    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_6

    const-string v6, "WifiConfigStore: will enable netId="

    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6, v1, v4}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6, v1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_7

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6, v1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_a

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-eqz v6, :cond_9

    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: re-enabling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6, v4}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    :cond_9
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: saveNetwork got config back netId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    return-object v3

    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "netId":I
    .end local v2    # "newNetwork":Z
    .end local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "newNetwork":Z
    goto/16 :goto_0

    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "netId":I
    .restart local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_c
    move v4, v5

    goto :goto_1
.end method

.method saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v1, "any"

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveWifiConfigBSSID Setting BSSID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v2, "bssid"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to set BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    const-string v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_0
.end method

.method selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z
    .locals 11
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "updatePriorities"    # Z
    .param p3, "uid"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    sget-boolean v7, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v7, :cond_0

    const-string v7, "selectNetwork"

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    :cond_0
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, v10, :cond_1

    return v9

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->isAutoConfigPriorities()Z

    move-result v0

    .local v0, "autoConfigure":Z
    if-eqz v0, :cond_4

    iget v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    if-eq v7, v10, :cond_2

    iget v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const v8, 0xf4240

    if-le v7, v8, :cond_6

    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config2$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "config2":Landroid/net/wifi/WifiConfiguration;
    if-eqz p2, :cond_3

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v7, v10, :cond_3

    iput v9, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    goto :goto_0

    .end local v1    # "config2":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "config2$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "wifiConfiguration$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .local v5, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v5, :cond_5

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    if-le v7, v8, :cond_5

    iget v7, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    goto :goto_1

    .end local v5    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "wifiConfiguration$iterator":Ljava/util/Iterator;
    :cond_6
    if-eqz v0, :cond_9

    if-eqz p2, :cond_7

    iget v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->buildPnoList()V

    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetailCache;->getFirst()Lcom/android/server/wifi/ScanDetail;

    move-result-object v4

    .local v4, "result":Lcom/android/server/wifi/ScanDetail;
    if-nez v4, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find scan result for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .end local v4    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiNative;->setHs20(Z)V

    if-eqz p2, :cond_c

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    :goto_4
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v7, v0}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    const/4 v7, 0x1

    return v7

    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .local v3, "lastKnown":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_7

    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v7, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_2

    .end local v3    # "lastKnown":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting SSID for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/WifiConfigStore;->setSSIDNative(ILjava/lang/String;)Z

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_3

    .end local v4    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find bssid for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v8, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiNative;->selectNetwork(I)Z

    goto :goto_4
.end method

.method public setConfiguredBand(I)V
    .locals 0
    .param p1, "band"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredBand:I

    return-void
.end method

.method setDefaultGwMacAddress(ILjava/lang/String;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLastSelectedConfiguration(I)V
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setStaticIpConfiguration(ILandroid/net/StaticIpConfiguration;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    :cond_0
    return-void
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Failed to start WPS push button configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method public trimANQPCache(Z)V
    .locals 2
    .param p1, "all"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->clear(ZZ)V

    return-void
.end method

.method unblackListDriverRoamedBSSID(Ljava/lang/String;)V
    .locals 7
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    .local v3, "result":Landroid/net/wifi/ScanResult;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unblacklisted driver roamed BSSID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto :goto_0

    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-void
.end method

.method updateConfiguration(Landroid/net/wifi/WifiInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v5

    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-wide v2, v4, Landroid/net/wifi/ScanResult;->seen:J

    .local v2, "previousSeen":J
    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    .local v1, "previousRssi":I
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->level:I

    sget v6, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-virtual {v4, v1, v2, v3, v6}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConfiguration freq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " BSSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RSSI="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .end local v1    # "previousRssi":I
    .end local v2    # "previousSeen":J
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    return-void
.end method

.method public updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    if-eq v0, p2, :cond_0

    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateSavedNetworkHistory(Lcom/android/server/wifi/ScanDetail;)Z
    .locals 14
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v5

    .local v5, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    const/4 v6, 0x0

    .local v6, "numConfigFound":I
    if-nez v7, :cond_0

    return v10

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "SSID":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;

    move-result-object v4

    .local v4, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v11

    if-eqz v11, :cond_1

    :goto_0
    return v9

    :cond_1
    move v9, v10

    goto :goto_0

    .end local v4    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_2
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v11}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x0

    .local v3, "found":Z
    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSavedNetworkHistory(): try "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SSID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ajst="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_4
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "WEP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "WEP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v3, 0x1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v1, p1, v13}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    :cond_6
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v11, :cond_3

    if-eqz v3, :cond_3

    const-string v8, ""

    .local v8, "status":Ljava/lang/String;
    iget v11, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-lez v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "        got known scan result "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " key : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " num: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " rssi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " freq="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v8    # "status":Ljava/lang/String;
    :cond_8
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSavedNetworkHistory(): SSID mismatch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SSID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_a
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "EAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "EAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_b
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "WEP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "EAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "WEP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "EAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v3, 0x1

    goto/16 :goto_2

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "found":Z
    :cond_c
    if-eqz v6, :cond_d

    :goto_3
    return v9

    :cond_d
    move v9, v10

    goto :goto_3
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .local v1, "result":Landroid/net/wifi/ScanResult;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiConfiguration from scan results "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    :cond_1
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    :cond_2
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    :cond_3
    return-object v0
.end method

.method public writeKnownNetworkHistory(Z)V
    .locals 14
    .param p1, "force"    # Z

    .prologue
    move v6, p1

    .local v6, "needUpdate":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v10}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v6    # "needUpdate":Z
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v10, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v10, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " rewrite network history for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    const/4 v6, 0x1

    .local v6, "needUpdate":Z
    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "needUpdate":Z
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "deletedSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "csum$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .local v2, "csum":Ljava/lang/Long;
    new-instance v10, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "csum":Ljava/lang/Long;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "deletedEphemeralSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "ssid$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "ssid":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v8    # "ssid":Ljava/lang/String;
    :cond_3
    sget-boolean v10, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " writeKnownNetworkHistory() num networks:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v11}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " needWrite="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    :cond_4
    if-nez v6, :cond_5

    return-void

    :cond_5
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    sget-object v11, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    new-instance v12, Lcom/android/server/wifi/WifiConfigStore$4;

    invoke-direct {v12, p0, v7, v5, v4}, Lcom/android/server/wifi/WifiConfigStore$4;-><init>(Lcom/android/server/wifi/WifiConfigStore;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v11, v12}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    return-void
.end method

.method public writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 4
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    const-string v1, "/data/misc/wifi/PerProviderSubscription.conf"

    new-instance v2, Lcom/android/server/wifi/WifiConfigStore$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/wifi/WifiConfigStore$3;-><init>(Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    return-void
.end method
