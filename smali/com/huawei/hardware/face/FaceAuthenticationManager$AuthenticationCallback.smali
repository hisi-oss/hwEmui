.class public abstract Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;
.super Ljava/lang/Object;
.source "FaceAuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hardware/face/FaceAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .line 842
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 808
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 833
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 819
    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;

    .line 827
    return-void
.end method
