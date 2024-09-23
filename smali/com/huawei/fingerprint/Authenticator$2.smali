.class Lcom/huawei/fingerprint/Authenticator$2;
.super Lcom/huawei/fingerprint/IAuthenticatorListener$Stub;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/fingerprint/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/fingerprint/Authenticator;


# direct methods
.method constructor <init>(Lcom/huawei/fingerprint/Authenticator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/fingerprint/Authenticator;

    .line 124
    iput-object p1, p0, Lcom/huawei/fingerprint/Authenticator$2;->this$0:Lcom/huawei/fingerprint/Authenticator;

    invoke-direct {p0}, Lcom/huawei/fingerprint/IAuthenticatorListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserVerificationResult(I[B[B)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "userid"    # [B
    .param p3, "uvt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$2;->this$0:Lcom/huawei/fingerprint/Authenticator;

    invoke-static {v0}, Lcom/huawei/fingerprint/Authenticator;->access$000(Lcom/huawei/fingerprint/Authenticator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huawei/fingerprint/Authenticator$2$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/huawei/fingerprint/Authenticator$2$1;-><init>(Lcom/huawei/fingerprint/Authenticator$2;I[B[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method
