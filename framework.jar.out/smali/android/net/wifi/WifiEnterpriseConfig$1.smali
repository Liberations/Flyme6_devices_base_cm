.class final Landroid/net/wifi/WifiEnterpriseConfig$1;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiEnterpriseConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_0

    :try_start_0
    new-array v0, v4, [B

    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .local v1, "cFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bytes":[B
    .end local v1    # "cFactory":Ljava/security/cert/CertificateFactory;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/security/cert/CertificateException;
    const/4 v2, 0x0

    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v5, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v5}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .local v5, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->-get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->-set0(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    const/4 v10, 0x0

    .local v10, "userKey":Ljava/security/PrivateKey;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "len":I
    if-lez v9, :cond_1

    :try_start_0
    new-array v1, v9, [B

    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .local v8, "keyFactory":Ljava/security/KeyFactory;
    new-instance v12, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v12, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v8, v12}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    .end local v10    # "userKey":Ljava/security/PrivateKey;
    :cond_1
    :goto_1
    invoke-static {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->-set2(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->-set1(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    :goto_2
    invoke-static {v5, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->-set3(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z

    return-object v5

    .restart local v10    # "userKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/security/spec/InvalidKeySpecException;
    const/4 v10, 0x0

    goto :goto_1

    .end local v4    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v10, 0x0

    goto :goto_1

    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v10    # "userKey":Ljava/security/PrivateKey;
    :cond_2
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/WifiEnterpriseConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method
