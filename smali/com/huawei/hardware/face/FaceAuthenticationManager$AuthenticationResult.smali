.class public Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "FaceAuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hardware/face/FaceAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

.field private mFace:Lcom/huawei/hardware/face/Face;

.field private mUserId:I


# direct methods
.method public constructor <init>(Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;Lcom/huawei/hardware/face/Face;I)V
    .locals 0
    .param p1, "crypto"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;
    .param p2, "face"    # Lcom/huawei/hardware/face/Face;
    .param p3, "userId"    # I

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;->mCryptoObject:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    .line 756
    iput-object p2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;->mFace:Lcom/huawei/hardware/face/Face;

    .line 757
    iput p3, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;->mUserId:I

    .line 758
    return-void
.end method


# virtual methods
.method public getCryptoObject()Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;->mCryptoObject:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    return-object v0
.end method

.method public getFace()Lcom/huawei/hardware/face/Face;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;->mFace:Lcom/huawei/hardware/face/Face;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 787
    iget v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;->mUserId:I

    return v0
.end method
