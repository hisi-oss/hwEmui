.class public Lcom/huawei/fingerprint/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;,
        Lcom/huawei/fingerprint/Authenticator$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field public static final SERVICE_NAME:Ljava/lang/String; = "fido_authenticator"


# instance fields
.field public mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mAuthenticatorListener:Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

.field private mFpServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIAuthenticatorListener:Lcom/huawei/fingerprint/IAuthenticatorListener;

.field private mService:Lcom/huawei/fingerprint/IAuthenticator;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/Handler;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "client"    # Landroid/os/IBinder;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/huawei/fingerprint/Authenticator$1;

    invoke-direct {v0, p0}, Lcom/huawei/fingerprint/Authenticator$1;-><init>(Lcom/huawei/fingerprint/Authenticator;)V

    iput-object v0, p0, Lcom/huawei/fingerprint/Authenticator;->mFpServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 124
    new-instance v0, Lcom/huawei/fingerprint/Authenticator$2;

    invoke-direct {v0, p0}, Lcom/huawei/fingerprint/Authenticator$2;-><init>(Lcom/huawei/fingerprint/Authenticator;)V

    iput-object v0, p0, Lcom/huawei/fingerprint/Authenticator;->mIAuthenticatorListener:Lcom/huawei/fingerprint/IAuthenticatorListener;

    .line 158
    invoke-static {p1}, Lcom/huawei/fingerprint/IAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/fingerprint/IAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/fingerprint/Authenticator;->mService:Lcom/huawei/fingerprint/IAuthenticator;

    .line 161
    if-nez p3, :cond_0

    .line 162
    new-instance v0, Lcom/huawei/fingerprint/Authenticator$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/huawei/fingerprint/Authenticator$MyHandler;-><init>(Lcom/huawei/fingerprint/Authenticator;Landroid/os/Looper;Lcom/huawei/fingerprint/Authenticator$1;)V

    move-object p3, v0

    .line 164
    :cond_0
    iput-object p3, p0, Lcom/huawei/fingerprint/Authenticator;->mHandler:Landroid/os/Handler;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/fingerprint/Authenticator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/fingerprint/Authenticator;

    .line 19
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/fingerprint/Authenticator;)Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/fingerprint/Authenticator;

    .line 19
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticatorListener:Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/huawei/fingerprint/Authenticator;Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;)Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/fingerprint/Authenticator;
    .param p1, "x1"    # Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

    .line 19
    iput-object p1, p0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticatorListener:Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

    return-object p1
.end method

.method public static getAuthenticator()Lcom/huawei/fingerprint/Authenticator;
    .locals 4

    .line 146
    const-string v0, "fido_authenticator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 147
    .local v0, "service":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    new-instance v2, Lcom/huawei/fingerprint/Authenticator;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-direct {v2, v0, v3, v1}, Lcom/huawei/fingerprint/Authenticator;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/Handler;)V

    return-object v2

    .line 150
    :cond_0
    return-object v1
.end method


# virtual methods
.method public cancelVerify()I
    .locals 3

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator;->mService:Lcom/huawei/fingerprint/IAuthenticator;

    iget-object v1, p0, Lcom/huawei/fingerprint/Authenticator;->mFpServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/huawei/fingerprint/IAuthenticator;->cancelVerifyUser(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwFingerprintService"

    const-string v2, "RemoteException-cancelVerifyUser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAuthenticationCallback(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;)V
    .locals 0
    .param p1, "callbak"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 154
    iput-object p1, p0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 155
    return-void
.end method

.method public verifyUser(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;[BLjava/lang/String;Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;)I
    .locals 1
    .param p1, "callbak"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p2, "finalChallenge"    # [B
    .param p3, "aaid"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

    .line 168
    iput-object p1, p0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 169
    invoke-virtual {p0, p2, p3, p4}, Lcom/huawei/fingerprint/Authenticator;->verifyUser([BLjava/lang/String;Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;)I

    move-result v0

    return v0
.end method

.method public verifyUser([BLjava/lang/String;Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;)I
    .locals 6
    .param p1, "finalChallenge"    # [B
    .param p2, "aaid"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

    .line 175
    iput-object p3, p0, Lcom/huawei/fingerprint/Authenticator;->mAuthenticatorListener:Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/huawei/fingerprint/Authenticator;->mService:Lcom/huawei/fingerprint/IAuthenticator;

    iget-object v1, p0, Lcom/huawei/fingerprint/Authenticator;->mFpServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/huawei/fingerprint/Authenticator;->mIAuthenticatorListener:Lcom/huawei/fingerprint/IAuthenticatorListener;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/huawei/fingerprint/IAuthenticator;->verifyUser(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Lcom/huawei/fingerprint/IAuthenticatorListener;I[BLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwFingerprintService"

    const-string v2, "RemoteException-verifyUser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
