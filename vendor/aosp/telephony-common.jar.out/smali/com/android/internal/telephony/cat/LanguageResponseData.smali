.class Lcom/android/internal/telephony/cat/LanguageResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v2, v4, 0x80

    .local v2, "tag":I
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->mLang:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "data":[B
    :goto_0
    array-length v4, v1

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_2

    aget-byte v0, v1, v3

    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "b":B
    .end local v1    # "data":[B
    :cond_1
    new-array v1, v3, [B

    .restart local v1    # "data":[B
    goto :goto_0

    :cond_2
    return-void
.end method
