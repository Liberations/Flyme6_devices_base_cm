.class public Lcom/google/android/mms/pdu/PduContentTypes;
.super Ljava/lang/Object;
.source "PduContentTypes.java"


# static fields
.field static final contentTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x53

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*/*"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "text/*"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "text/html"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "text/plain"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "text/x-hdml"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "text/x-ttml"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "text/x-vCalendar"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "text/x-vCard"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "text/vnd.wap.wml"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "text/vnd.wap.wmlscript"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "text/vnd.wap.wta-event"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "multipart/*"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "multipart/mixed"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "multipart/form-data"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "multipart/byterantes"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "multipart/alternative"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "application/*"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "application/java-vm"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "application/x-www-form-urlencoded"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "application/x-hdmlc"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.wmlc"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.wmlscriptc"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.wta-eventc"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.uaprof"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.wtls-ca-certificate"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.wtls-user-certificate"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "application/x-x509-ca-cert"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "application/x-x509-user-cert"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "image/*"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "image/gif"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "image/jpeg"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "image/tiff"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "image/png"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "image/vnd.wap.wbmp"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.multipart.*"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.multipart.mixed"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.multipart.form-data"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.multipart.byteranges"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.multipart.alternative"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "application/xml"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "text/xml"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.wbxml"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "application/x-x968-cross-cert"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "application/x-x968-ca-cert"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "application/x-x968-user-cert"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "text/vnd.wap.si"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.sic"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "text/vnd.wap.sl"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.slc"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "text/vnd.wap.co"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.coc"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.multipart.related"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.sia"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "text/vnd.wap.connectivity-xml"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.connectivity-wbxml"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "application/pkcs7-mime"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.hashed-certificate"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.signed-certificate"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.cert-response"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "application/xhtml+xml"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "application/wml+xml"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "text/css"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.mms-message"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.rollover-certificate"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.locc+wbxml"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.loc+xml"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "application/vnd.syncml.dm+wbxml"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "application/vnd.syncml.dm+xml"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "application/vnd.syncml.notification"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wap.xhtml+xml"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wv.csp.cir"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "application/vnd.oma.dd+xml"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "application/vnd.oma.drm.message"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "application/vnd.oma.drm.content"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "application/vnd.oma.drm.rights+xml"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "application/vnd.oma.drm.rights+wbxml"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wv.csp+xml"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "application/vnd.wv.csp+wbxml"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "application/vnd.syncml.ds.notification"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "audio/*"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "video/*"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "application/vnd.oma.dd2+xml"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "application/mikey"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
