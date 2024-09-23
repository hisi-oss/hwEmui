.class Lcom/huawei/fingerprint/Authenticator$MyHandler;
.super Landroid/os/Handler;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/fingerprint/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/fingerprint/Authenticator;


# direct methods
.method private constructor <init>(Lcom/huawei/fingerprint/Authenticator;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 37
    iput-object p1, p0, Lcom/huawei/fingerprint/Authenticator$MyHandler;->this$0:Lcom/huawei/fingerprint/Authenticator;

    .line 38
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/fingerprint/Authenticator;Landroid/os/Looper;Lcom/huawei/fingerprint/Authenticator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/fingerprint/Authenticator;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/huawei/fingerprint/Authenticator$1;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/huawei/fingerprint/Authenticator$MyHandler;-><init>(Lcom/huawei/fingerprint/Authenticator;Landroid/os/Looper;)V

    return-void
.end method

.method private sendAcquiredResult(JI)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .line 81
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$MyHandler;->this$0:Lcom/huawei/fingerprint/Authenticator;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$MyHandler;->this$0:Lcom/huawei/fingerprint/Authenticator;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p3}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 84
    :cond_0
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$MyHandler;->this$0:Lcom/huawei/fingerprint/Authenticator;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$MyHandler;->this$0:Lcom/huawei/fingerprint/Authenticator;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 78
    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I

    .line 68
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$MyHandler;->this$0:Lcom/huawei/fingerprint/Authenticator;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;-><init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 70
    .local v0, "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    iget-object v1, p0, Lcom/huawei/fingerprint/Authenticator$MyHandler;->this$0:Lcom/huawei/fingerprint/Authenticator;

    iget-object v1, v1, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 72
    .end local v0    # "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private sendErrorResult(JI)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "errMsgId"    # I

    .line 62
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$MyHandler;->this$0:Lcom/huawei/fingerprint/Authenticator;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator$MyHandler;->this$0:Lcom/huawei/fingerprint/Authenticator;

    iget-object v0, v0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const-string v1, ""

    invoke-virtual {v0, p3, v1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/fingerprint/Authenticator$MyHandler;->sendErrorResult(JI)V

    .line 56
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/fingerprint/Authenticator$MyHandler;->sendAuthenticatedFailed()V

    .line 53
    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/huawei/fingerprint/Authenticator$MyHandler;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 50
    goto :goto_0

    .line 46
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/fingerprint/Authenticator$MyHandler;->sendAcquiredResult(JI)V

    .line 47
    goto :goto_0

    .line 44
    :pswitch_4
    nop

    .line 59
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
