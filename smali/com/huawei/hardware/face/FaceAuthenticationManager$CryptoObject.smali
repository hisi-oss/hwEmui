.class public final Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;
.super Ljava/lang/Object;
.source "FaceAuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hardware/face/FaceAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCrypto:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0
    .param p1, "signature"    # Ljava/security/Signature;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 691
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 695
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 699
    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Cipher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Mac;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOpId()J
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 733
    :goto_0
    return-wide v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
