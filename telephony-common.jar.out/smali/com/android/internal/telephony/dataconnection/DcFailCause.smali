.class public final enum Lcom/android/internal/telephony/dataconnection/DcFailCause;
.super Ljava/lang/Enum;
.source "DcFailCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PDP_FAIL_IPV4_CALL_THROTTLED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PDP_FAIL_IPV6_CALL_THROTTLED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private static final sErrorCodeToFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I

.field private final mRestartRadioOnRegularDeactivation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x1c

    const/16 v8, 0x1b

    const/16 v7, 0x1a

    const/16 v6, 0x8

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "NONE"

    invoke-direct {v2, v3, v1, v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "OPERATOR_BARRED"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "INSUFFICIENT_RESOURCES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "MISSING_UNKNOWN_APN"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "UNKNOWN_PDP_ADDRESS_TYPE"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "USER_AUTHENTICATION"

    const/4 v4, 0x5

    const/16 v5, 0x1d

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "ACTIVATION_REJECT_GGSN"

    const/4 v4, 0x6

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "ACTIVATION_REJECT_UNSPECIFIED"

    const/4 v4, 0x7

    const/16 v5, 0x1f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v4, 0x20

    invoke-direct {v2, v3, v6, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v4, 0x9

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v4, 0xa

    const/16 v5, 0x22

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "NSAPI_IN_USE"

    const/16 v4, 0xb

    const/16 v5, 0x23

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "REGULAR_DEACTIVATION"

    const/16 v4, 0xc

    const/16 v5, 0x24

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "ONLY_IPV4_ALLOWED"

    const/16 v4, 0xd

    const/16 v5, 0x32

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "ONLY_IPV6_ALLOWED"

    const/16 v4, 0xe

    const/16 v5, 0x33

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "ONLY_SINGLE_BEARER_ALLOWED"

    const/16 v4, 0xf

    const/16 v5, 0x34

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "PROTOCOL_ERRORS"

    const/16 v4, 0x10

    const/16 v5, 0x6f

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "REGISTRATION_FAIL"

    const/16 v4, 0x11

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "GPRS_REGISTRATION_FAIL"

    const/16 v4, 0x12

    const/4 v5, -0x2

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "SIGNAL_LOST"

    const/16 v4, 0x13

    const/4 v5, -0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "PREF_RADIO_TECH_CHANGED"

    const/16 v4, 0x14

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "RADIO_POWER_OFF"

    const/16 v4, 0x15

    const/4 v5, -0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "TETHERED_CALL_ACTIVE"

    const/16 v4, 0x16

    const/4 v5, -0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "ERROR_UNSPECIFIED"

    const/16 v4, 0x17

    const v5, 0xffff

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "PDP_FAIL_IPV4_CALL_THROTTLED"

    const/16 v4, 0x18

    const/4 v5, -0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_IPV4_CALL_THROTTLED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "PDP_FAIL_IPV6_CALL_THROTTLED"

    const/16 v4, 0x19

    const/4 v5, -0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_IPV6_CALL_THROTTLED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "UNKNOWN"

    const/high16 v4, 0x10000

    invoke-direct {v2, v3, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "RADIO_NOT_AVAILABLE"

    const v4, 0x10001

    invoke-direct {v2, v3, v8, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "UNACCEPTABLE_NETWORK_PARAMETER"

    const v4, 0x10002

    invoke-direct {v2, v3, v9, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "CONNECTION_TO_DATACONNECTIONAC_BROKEN"

    const/16 v4, 0x1d

    const v5, 0x10003

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "LOST_CONNECTION"

    const/16 v4, 0x1e

    const v5, 0x10004

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v3, "RESET_BY_FRAMEWORK"

    const/16 v4, 0x1f

    const v5, 0x10005

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v2, 0x20

    new-array v2, v2, [Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v1

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v6

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x9

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xa

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xb

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xc

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xd

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xe

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0xf

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x10

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x11

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x12

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x13

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x14

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x15

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x16

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x17

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_IPV4_CALL_THROTTLED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x18

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_IPV6_CALL_THROTTLED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x19

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v7

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v8

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    aput-object v3, v2, v9

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x1e

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    array-length v3, v2

    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "errorCode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    return v0
.end method

.method public isEventLoggable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentFail(Landroid/content/Context;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    const/4 v0, 0x1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v1, :cond_1

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestartRadioFail()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p0, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
