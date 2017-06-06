.class abstract Landroid/security/keystore/KeyStoreCryptoOperationUtils;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationUtils.java"


# static fields
.field private static volatile sRng:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionForCipherInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/GeneralSecurityException;
    .locals 2
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .param p2, "beginOpResultCode"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-static {p0, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Invalid IV"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Caller-provided IV not permitted"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x37
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .param p2, "beginOpResultCode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;

    move-result-object v0

    .local v0, "e":Ljava/security/InvalidKeyException;
    packed-switch p2, :pswitch_data_0

    :cond_1
    return-object v0

    :pswitch_0
    instance-of v1, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v1, :cond_1

    return-object v2

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method static getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B
    .locals 2
    .param p0, "rng"    # Ljava/security/SecureRandom;
    .param p1, "sizeBytes"    # I

    .prologue
    if-gtz p1, :cond_0

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRng()Ljava/security/SecureRandom;

    move-result-object p0

    :cond_1
    new-array v0, p1, [B

    .local v0, "result":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static getRng()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    sget-object v0, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    :cond_0
    sget-object v0, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->sRng:Ljava/security/SecureRandom;

    return-object v0
.end method
