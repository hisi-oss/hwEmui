.class Lcom/huawei/fingerprint/Authenticator$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
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

    .line 87
    iput-object p1, p0, Lcom/huawei/fingerprint/Authenticator$1;->this$0:Lcom/huawei/fingerprint/Authenticator;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I
    .param p4, "vendorCode"    # I

    .line 95
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$1;->this$0:Lcom/huawei/fingerprint/Authenticator;

    invoke-static {v0}, Lcom/huawei/fingerprint/Authenticator;->access$000(Lcom/huawei/fingerprint/Authenticator;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2
    .param p1, "deviceId"    # J

    .line 105
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$1;->this$0:Lcom/huawei/fingerprint/Authenticator;

    invoke-static {v0}, Lcom/huawei/fingerprint/Authenticator;->access$000(Lcom/huawei/fingerprint/Authenticator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p4, "userId"    # I

    .line 100
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$1;->this$0:Lcom/huawei/fingerprint/Authenticator;

    invoke-static {v0}, Lcom/huawei/fingerprint/Authenticator;->access$000(Lcom/huawei/fingerprint/Authenticator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 91
    return-void
.end method

.method public onEnumerated(JIII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 121
    return-void
.end method

.method public onError(JII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 110
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$1;->this$0:Lcom/huawei/fingerprint/Authenticator;

    invoke-static {v0}, Lcom/huawei/fingerprint/Authenticator;->access$000(Lcom/huawei/fingerprint/Authenticator;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    return-void
.end method

.method public onRemoved(JIII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 116
    return-void
.end method
