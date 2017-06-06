.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$RSA;,
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$EC;
    }
.end annotation


# static fields
.field private static final EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200

.field private static final SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEncryptionAtRestRequired:Z

.field private mEntryAlias:Ljava/lang/String;

.field private mJcaKeyAlgorithm:Ljava/lang/String;

.field private mKeySizeBits:I

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private mKeymasterDigests:[I

.field private mKeymasterEncryptionPaddings:[I

.field private mKeymasterPurposes:[I

.field private mKeymasterSignaturePaddings:[I

.field private final mOriginalKeymasterAlgorithm:I

.field private mRSAPublicExponent:Ljava/math/BigInteger;

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x209

    const/16 v5, 0x180

    const/16 v4, 0xe0

    const/16 v3, 0x100

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string v1, "p-224"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string v1, "secp224r1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string v1, "p-256"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string v1, "secp256r1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string v1, "prime256v1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string v1, "p-384"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string v1, "secp384r1"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string v1, "p-521"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string v1, "secp521r1"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    sget-object v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "keymasterAlgorithm"    # I

    .prologue
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    return-void
.end method

.method private addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    .prologue
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    const v1, 0x500000c8

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static checkValidKeySize(II)V
    .locals 3
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits. Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2000

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v2, v3, v4}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v1

    .local v1, "signatureAlgorithm":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2
.end method

.method private generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 15
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v8, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    .local v8, "tbsGenerator":Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v10, Ljava/security/ProviderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported key algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v10

    :pswitch_1
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .local v4, "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .local v3, "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .local v9, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v5

    .end local v9    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v5, "signature":[B
    :goto_0
    const/4 v11, 0x0

    const/4 v0, 0x0

    .local v0, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface/range {p1 .. p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v1, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v11, :cond_4

    throw v11

    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "signature":[B
    :pswitch_2
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .restart local v4    # "sigAlgOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v10, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .restart local v3    # "sigAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v10, 0x1

    new-array v5, v10, [B

    .restart local v5    # "signature":[B
    goto :goto_0

    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v11

    goto :goto_1

    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_1
    move-exception v10

    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :goto_2
    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_3
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_4
    if-eqz v11, :cond_3

    throw v11

    :catch_2
    move-exception v12

    if-nez v11, :cond_2

    move-object v11, v12

    goto :goto_4

    :cond_2
    if-eq v11, v12, :cond_1

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    throw v10

    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :cond_4
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    new-instance v6, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v10, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    .local v6, "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    invoke-virtual {v8, v3}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v7

    .local v7, "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .local v2, "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v10, v5}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v10

    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "result":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "subject":Lcom/android/org/bouncycastle/jce/X509Principal;
    .end local v7    # "tbsCertificate":Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catchall_1
    move-exception v10

    goto :goto_3

    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v0, "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    goto :goto_3

    .end local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_3
    move-exception v10

    move-object v0, v1

    .end local v1    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v0    # "publicKeyInfoIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "signatureAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .local v0, "certGen":Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method private static getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .param p0, "authorizedKeyDigests"    # [Ljava/lang/String;
    .param p1, "supportedSignatureDigests"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .local v0, "authorizedKeymasterKeyDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget v1, v6, v5

    .local v1, "keymasterDigest":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v1    # "keymasterDigest":I
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, "supportedKeymasterSignatureDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget v1, v5, v4

    .restart local v1    # "keymasterDigest":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "keymasterDigest":I
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method private static getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .locals 12
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keySizeBits"    # I
    .param p2, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_0

    return-object v10

    :cond_0
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v10

    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v8

    if-nez v8, :cond_2

    return-object v10

    :cond_2
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v8, Ljava/security/ProviderException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported algorithm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .local v0, "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .local v2, "bestKeymasterDigest":I
    const/4 v1, -0x1

    .local v1, "bestDigestOutputSizeBits":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "keymasterDigest$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "keymasterDigest":I
    invoke-static {v3}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v6

    .local v6, "outputSizeBits":I
    if-ne v6, p1, :cond_5

    move v2, v3

    move v1, v6

    .end local v3    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_4
    if-ne v2, v11, :cond_8

    return-object v10

    .restart local v3    # "keymasterDigest":I
    .restart local v6    # "outputSizeBits":I
    :cond_5
    if-ne v2, v11, :cond_6

    move v2, v3

    move v1, v6

    goto :goto_0

    :cond_6
    if-ge v1, p1, :cond_7

    if-le v6, v1, :cond_3

    move v2, v3

    move v1, v6

    goto :goto_0

    :cond_7
    if-ge v6, v1, :cond_3

    if-lt v6, p1, :cond_3

    move v2, v3

    move v1, v6

    goto :goto_0

    .end local v3    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "WithECDSA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v0    # "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "bestDigestOutputSizeBits":I
    .end local v2    # "bestKeymasterDigest":I
    .end local v4    # "keymasterDigest$iterator":Ljava/util/Iterator;
    :pswitch_2
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v8

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    .local v7, "pkcs1SignaturePaddingSupported":Z
    if-nez v7, :cond_9

    return-object v10

    :cond_9
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .restart local v0    # "availableKeymasterDigests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    add-int/lit16 v5, p1, -0xf0

    .local v5, "maxDigestOutputSizeBits":I
    const/4 v2, -0x1

    .restart local v2    # "bestKeymasterDigest":I
    const/4 v1, -0x1

    .restart local v1    # "bestDigestOutputSizeBits":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "keymasterDigest$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3    # "keymasterDigest":I
    invoke-static {v3}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v6

    .restart local v6    # "outputSizeBits":I
    if-gt v6, v5, :cond_a

    if-ne v2, v11, :cond_b

    move v2, v3

    move v1, v6

    goto :goto_1

    :cond_b
    if-le v6, v1, :cond_a

    move v2, v3

    move v1, v6

    goto :goto_1

    .end local v3    # "keymasterDigest":I
    .end local v6    # "outputSizeBits":I
    :cond_c
    if-ne v2, v11, :cond_d

    return-object v10

    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "WithRSA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDefaultKeySize(I)I
    .locals 3
    .param p0, "keymasterAlgorithm"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v0, 0x100

    return v0

    :pswitch_2
    const/16 v0, 0x800

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initAlgorithmSpecificParameters()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .local v0, "algSpecificSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v6, Ljava/security/ProviderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    const/4 v4, 0x0

    .local v4, "publicExponent":Ljava/math/BigInteger;
    instance-of v6, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v6, :cond_4

    move-object v5, v0

    check-cast v5, Ljava/security/spec/RSAKeyGenParameterSpec;

    .local v5, "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v6, v8, :cond_3

    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v6

    iput v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    :cond_0
    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    .end local v4    # "publicExponent":Ljava/math/BigInteger;
    .end local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_1
    if-nez v4, :cond_2

    sget-object v4, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    :cond_2
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_5

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RSA public exponent must be positive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .restart local v4    # "publicExponent":Ljava/math/BigInteger;
    .restart local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_3
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v7

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RSA key size must match  between "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v5    # "rsaSpec":Ljava/security/spec/RSAKeyGenParameterSpec;
    :cond_4
    if-eqz v0, :cond_1

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "RSA may only use RSAKeyGenParameterSpec"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v4    # "publicExponent":Ljava/math/BigInteger;
    :cond_5
    sget-object v6, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-lez v6, :cond_6

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported RSA public exponent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Maximum supported value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    :cond_7
    :goto_0
    return-void

    :pswitch_2
    instance-of v6, v0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v6, :cond_a

    move-object v2, v0

    check-cast v2, Ljava/security/spec/ECGenParameterSpec;

    .local v2, "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    invoke-virtual {v2}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "curveName":Ljava/lang/String;
    sget-object v6, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "ecSpecKeySizeBits":Ljava/lang/Integer;
    if-nez v3, :cond_8

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported EC curve name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v6, v8, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    goto :goto_0

    :cond_9
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_7

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EC key size must match  between "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v1    # "curveName":Ljava/lang/String;
    .end local v2    # "ecSpec":Ljava/security/spec/ECGenParameterSpec;
    .end local v3    # "ecSpecKeySizeBits":Ljava/lang/Integer;
    :cond_a
    if-eqz v0, :cond_7

    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "EC may only use ECGenParameterSpec"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private resetAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    iput-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v17, "Not initialized"

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    if-eqz v2, :cond_2

    const/4 v6, 0x1

    .local v6, "flags":I
    :goto_0
    and-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v17, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v17, "Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential"

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v6    # "flags":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "flags":I
    goto :goto_0

    :cond_3
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .local v4, "args":Landroid/security/keymaster/KeymasterArguments;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const v2, 0x30000003

    move-wide/from16 v0, v18

    invoke-virtual {v4, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const v17, 0x10000002

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    const v17, 0x20000001

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    const v17, 0x20000004

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    const v17, 0x20000006

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    const v17, 0x20000006

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    const v17, 0x20000005

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v4, v2, v0}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v2

    const v17, 0x60000190

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v2

    const v17, 0x60000191

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v2

    const v17, 0x60000192

    move/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x7

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v5

    .local v5, "additionalEntropy":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "USRPKEY_"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "privateKeyAlias":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "success":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v7, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v13

    .local v13, "errorCode":I
    const/4 v2, 0x1

    if-eq v13, v2, :cond_5

    new-instance v2, Ljava/security/ProviderException;

    const-string v17, "Failed to generate key pair"

    invoke-static {v13}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v13    # "errorCode":I
    :catchall_0
    move-exception v2

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_4
    throw v2

    .restart local v7    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v13    # "errorCode":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v2, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .local v15, "result":Ljava/security/KeyPair;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/security/ProviderException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Generated key pair algorithm does not match requested algorithm: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " vs "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v15    # "result":Ljava/security/KeyPair;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v17, "Failed to load generated key pair from keystore"

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v11    # "e":Ljava/security/UnrecoverableKeyException;
    .restart local v15    # "result":Ljava/security/KeyPair;
    :cond_6
    :try_start_3
    invoke-virtual {v15}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v15}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .local v8, "cert":Ljava/security/cert/X509Certificate;
    :try_start_4
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .local v9, "certBytes":[B
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "USRCERT_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v9, v1, v6}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v14

    .local v14, "insertErrorCode":I
    const/4 v2, 0x1

    if-eq v14, v2, :cond_7

    new-instance v2, Ljava/security/ProviderException;

    const-string v17, "Failed to store self-signed certificate"

    invoke-static {v14}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "certBytes":[B
    .end local v14    # "insertErrorCode":I
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/ProviderException;

    const-string v17, "Failed to generate self-signed certificate"

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v10}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v12

    .local v12, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v17, "Failed to obtain encoded form of self-signed certificate"

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v12    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v9    # "certBytes":[B
    .restart local v14    # "insertErrorCode":I
    :cond_7
    const/16 v16, 0x1

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_8
    return-object v15
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required to initialize this KeyPairGenerator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 17
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    const/4 v12, 0x0

    .local v12, "success":Z
    if-nez p1, :cond_1

    :try_start_0
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Must supply params of type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-class v15, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-class v15, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v13

    if-nez v12, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    :cond_0
    throw v13

    :cond_1
    const/4 v4, 0x0

    .local v4, "encryptionAtRestRequired":Z
    :try_start_1
    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    .local v6, "keymasterAlgorithm":I
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v13, :cond_3

    move-object/from16 v0, p1

    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    move-object v9, v0

    .end local v4    # "encryptionAtRestRequired":Z
    .local v9, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :goto_0
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    move-object/from16 v0, p0

    iput v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->initAlgorithmSpecificParameters()V

    move-object/from16 v0, p0

    iget v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    invoke-static {v6}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getDefaultKeySize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-static {v6, v13}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->checkValidKeySize(II)V

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_8

    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    const-string v14, "KeyStore entry alias not provided"

    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v13

    .end local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local v4    # "encryptionAtRestRequired":Z
    :cond_3
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/security/KeyPairGeneratorSpec;

    if-eqz v13, :cond_7

    move-object/from16 v0, p1

    check-cast v0, Landroid/security/KeyPairGeneratorSpec;

    move-object v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v8, "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    :try_start_2
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .local v11, "specKeyAlgorithm":Ljava/lang/String;
    if-eqz v11, :cond_4

    :try_start_3
    invoke-static {v11}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    :cond_4
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    :try_start_4
    new-instance v13, Ljava/security/ProviderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported algorithm: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "encryptionAtRestRequired":Z
    .end local v11    # "specKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_5
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v13, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "encryptionAtRestRequired":Z
    .restart local v11    # "specKeyAlgorithm":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    const-string v14, "Invalid key type in parameters"

    invoke-direct {v13, v14, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_1
    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc

    invoke-direct {v10, v13, v14}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .local v10, "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "NONE"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string v14, "SHA-1"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "SHA-224"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const-string v14, "SHA-256"

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string v14, "SHA-384"

    const/4 v15, 0x4

    aput-object v14, v13, v15

    const-string v14, "SHA-512"

    const/4 v15, 0x5

    aput-object v14, v13, v15

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :goto_1
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_5
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_6
    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->isEncryptionRequired()Z

    move-result v4

    .local v4, "encryptionAtRestRequired":Z
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v9

    .restart local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    goto/16 :goto_0

    .end local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v10    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .local v4, "encryptionAtRestRequired":Z
    :pswitch_2
    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v8}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xf

    invoke-direct {v10, v13, v14}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .restart local v10    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/4 v13, 0x7

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "NONE"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string v14, "MD5"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "SHA-1"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const-string v14, "SHA-224"

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string v14, "SHA-256"

    const/4 v15, 0x4

    aput-object v14, v13, v15

    const-string v14, "SHA-384"

    const/4 v15, 0x5

    aput-object v14, v13, v15

    const-string v14, "SHA-512"

    const/4 v15, 0x6

    aput-object v14, v13, v15

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "NoPadding"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string v14, "PKCS1Padding"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "OAEPPadding"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "PKCS1"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string v14, "PSS"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .end local v8    # "legacySpec":Landroid/security/KeyPairGeneratorSpec;
    .end local v10    # "specBuilder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v11    # "specKeyAlgorithm":Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported params class: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Supported: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-class v15, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-class v15, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v4    # "encryptionAtRestRequired":Z
    .restart local v9    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_8
    :try_start_8
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v13

    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_a

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    const/4 v13, 0x0

    array-length v15, v14

    :goto_2
    if-ge v13, v15, :cond_a

    aget v7, v14, v13

    .local v7, "keymasterPadding":I
    invoke-static {v7}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v16

    if-nez v16, :cond_9

    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". See "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-class v15, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " documentation."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v5    # "jcaKeyAlgorithm":Ljava/lang/String;
    .end local v7    # "keymasterPadding":I
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/RuntimeException;
    :try_start_9
    new-instance v13, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v13, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "jcaKeyAlgorithm":Ljava/lang/String;
    .restart local v7    # "keymasterPadding":I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v7    # "keymasterPadding":I
    :cond_a
    :try_start_a
    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v9}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    :goto_3
    new-instance v13, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v13}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v12, 0x1

    if-nez v12, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    :cond_b
    return-void

    :cond_c
    :try_start_c
    sget-object v13, Llibcore/util/EmptyArray;->INT:[I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
