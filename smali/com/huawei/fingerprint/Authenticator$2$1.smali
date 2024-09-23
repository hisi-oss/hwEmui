.class Lcom/huawei/fingerprint/Authenticator$2$1;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/fingerprint/Authenticator$2;->onUserVerificationResult(I[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/fingerprint/Authenticator$2;

.field final synthetic val$result:I

.field final synthetic val$userid:[B

.field final synthetic val$uvt:[B


# direct methods
.method constructor <init>(Lcom/huawei/fingerprint/Authenticator$2;I[B[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/huawei/fingerprint/Authenticator$2;

    .line 130
    iput-object p1, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->this$1:Lcom/huawei/fingerprint/Authenticator$2;

    iput p2, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->val$result:I

    iput-object p3, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->val$userid:[B

    iput-object p4, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->val$uvt:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 133
    const-string v0, "HwFingerprintService"

    const-string v1, "Authenticator-onUserVerificationResult-run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->this$1:Lcom/huawei/fingerprint/Authenticator$2;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator$2;->this$0:Lcom/huawei/fingerprint/Authenticator;

    invoke-static {v0}, Lcom/huawei/fingerprint/Authenticator;->access$100(Lcom/huawei/fingerprint/Authenticator;)Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "HwFingerprintService"

    const-string v1, "Authenticator-mAuthenticatorListener != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->this$1:Lcom/huawei/fingerprint/Authenticator$2;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator$2;->this$0:Lcom/huawei/fingerprint/Authenticator;

    invoke-static {v0}, Lcom/huawei/fingerprint/Authenticator;->access$100(Lcom/huawei/fingerprint/Authenticator;)Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

    move-result-object v0

    iget v1, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->val$result:I

    iget-object v2, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->val$userid:[B

    iget-object v3, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->val$uvt:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;->onUserVerificationResult(I[B[B)V

    .line 138
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$2$1;->this$1:Lcom/huawei/fingerprint/Authenticator$2;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator$2;->this$0:Lcom/huawei/fingerprint/Authenticator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/fingerprint/Authenticator;->access$102(Lcom/huawei/fingerprint/Authenticator;Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;)Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

    .line 140
    :cond_0
    return-void
.end method
