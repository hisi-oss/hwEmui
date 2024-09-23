.class public Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
.super Ljava/lang/Object;
.source "VoiceRecognizeManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$HeadsetStatusCallback;,
        Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;,
        Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;,
        Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;,
        Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;
    }
.end annotation


# static fields
.field public static final MSG_AUTH_FAILED:I = 0x6

.field public static final MSG_AUTH_SUCCESS:I = 0x5

.field public static final MSG_ENROLL_ACQUIRE:I = 0x2

.field public static final MSG_ENROLL_CANCEL_RET:I = 0x3

.field public static final MSG_ENROLL_RESULT:I = 0x1

.field public static final MSG_HEADSET_STATUS_CHANGE:I = 0x7

.field public static final MSG_HEADSET_STATUS_CHANGE_TO_CLIENT:I = 0x8

.field public static final MSG_REMOVE_RET:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VoiceRecognizeManager"

.field public static final VOICEID_ENROLL_BUSY:I = 0x1

.field public static final VOICEID_ENROLL_FAILED:I = 0x4

.field public static final VOICEID_ENROLL_NOT_CONNECT:I = 0x2

.field public static final VOICEID_ENROLL_OK:I = 0x0

.field public static final VOICEID_ENROLL_TIMEOUT:I = 0x3

.field public static final VOICEID_TYPE_AUTH_RET:I = 0x5

.field public static final VOICEID_TYPE_ENROLL_ACQUIRE:I = 0x2

.field public static final VOICEID_TYPE_ENROLL_CANCEL_RET:I = 0x3

.field public static final VOICEID_TYPE_ENROLL_RET:I = 0x1

.field public static final VOICEID_TYPE_REMOVE_RET:I = 0x4

.field public static final VOICERECOGNIZE_SERVICE:Ljava/lang/String; = "voicerecognition"


# instance fields
.field private mAuthCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

.field private mContext:Landroid/content/Context;

.field private mEnrollCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetStatusCallback:Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;

.field private mHeadsetStatusCb:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$HeadsetStatusCallback;

.field private mRemoveCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;

.field private mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

.field private mServiceBinder:Landroid/os/IBinder;

.field private mServiceReceiver:Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field private mVoiceAuthCallback:Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mToken:Landroid/os/IBinder;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceBinder:Landroid/os/IBinder;

    .line 492
    new-instance v1, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;

    invoke-direct {v1, p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;-><init>(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)V

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceReceiver:Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;

    .line 530
    new-instance v1, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;

    invoke-direct {v1, p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;-><init>(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)V

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mVoiceAuthCallback:Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;

    .line 559
    new-instance v1, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$3;

    invoke-direct {v1, p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$3;-><init>(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)V

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mHeadsetStatusCallback:Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;

    .line 52
    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 53
    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mAuthCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

    .line 54
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mContext:Landroid/content/Context;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    new-instance v1, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;

    invoke-direct {v1, p0, p1, v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;-><init>(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;Landroid/content/Context;Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;)V

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 58
    :cond_0
    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mHandler:Landroid/os/Handler;

    .line 60
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 14
    invoke-direct {p0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->sendEnrollResult(II)V

    return-void
.end method

.method static synthetic access$200(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 14
    invoke-direct {p0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->sendEnrollAcquire(II)V

    return-void
.end method

.method static synthetic access$300(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->sendEnrollCancelResult(I)V

    return-void
.end method

.method static synthetic access$400(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->sendRemoveResult(I)V

    return-void
.end method

.method static synthetic access$500(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 14
    invoke-direct {p0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->sendAuthSuccess(II)V

    return-void
.end method

.method static synthetic access$600(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 14
    invoke-direct {p0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->sendAuthFailed(II)V

    return-void
.end method

.method static synthetic access$700(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->sendHeadsetStatusChange(I)V

    return-void
.end method

.method static synthetic access$800(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->sendHeadsetStatusChangedToClient(I)V

    return-void
.end method

.method static synthetic access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    .line 14
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;
    .locals 4

    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-nez v0, :cond_3

    .line 572
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceBinder:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 575
    :cond_0
    const-string v0, "voicerecognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceBinder:Landroid/os/IBinder;

    .line 576
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 577
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "getService binder null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 580
    :cond_1
    :try_start_1
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 581
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-nez v0, :cond_2

    .line 582
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "getService Service null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 585
    :cond_2
    :try_start_2
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceBinder:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService linkToDeath fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    throw v0
.end method

.method private sendAuthFailed(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .line 423
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mAuthCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mAuthCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;->onReceiveUnAuthVoice(III)V

    goto :goto_0

    .line 426
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "auth fail send failed because callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void
.end method

.method private sendAuthSuccess(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .line 397
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mAuthCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mAuthCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

    invoke-virtual {v0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;->onReceiveAuthVoice(II)Z

    move-result v0

    .line 399
    .local v0, "ret":Z
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send auth result returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 401
    invoke-direct {p0, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->startVoiceActivity(I)V

    .line 403
    .end local v0    # "ret":Z
    :cond_0
    goto :goto_0

    .line 404
    :cond_1
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "auth ok send failed because callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    return-void
.end method

.method private sendEnrollAcquire(II)V
    .locals 2
    .param p1, "aquireInfo"    # I
    .param p2, "subInfo"    # I

    .line 373
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mEnrollCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mEnrollCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;

    invoke-virtual {v0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;->onEnrollAcquire(II)V

    goto :goto_0

    .line 376
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "acquire info send failed because callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-void
.end method

.method private sendEnrollCancelResult(I)V
    .locals 2
    .param p1, "ret"    # I

    .line 381
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mEnrollCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mEnrollCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;

    invoke-virtual {v0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;->onEnrollCancelResult(I)V

    goto :goto_0

    .line 384
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "enroll cancel result send failed because callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void
.end method

.method private sendEnrollResult(II)V
    .locals 2
    .param p1, "ret"    # I
    .param p2, "id"    # I

    .line 365
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mEnrollCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mEnrollCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;

    invoke-virtual {v0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;->onEnrollResult(II)V

    goto :goto_0

    .line 368
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "enroll result send failed because callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-void
.end method

.method private sendHeadsetStatusChange(I)V
    .locals 2
    .param p1, "status"    # I

    .line 431
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mAuthCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mAuthCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

    invoke-virtual {v0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;->onHeadsetStatusChange(I)V

    goto :goto_0

    .line 434
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "authCallback send HeadsetStatusChange failed because callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return-void
.end method

.method private sendHeadsetStatusChangedToClient(I)V
    .locals 4
    .param p1, "status"    # I

    .line 440
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mHeadsetStatusCb:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$HeadsetStatusCallback;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mHeadsetStatusCb:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$HeadsetStatusCallback;

    invoke-virtual {v0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$HeadsetStatusCallback;->onHeadsetStatusChange(I)V

    goto :goto_0

    .line 443
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHeadsetStatusChanged to client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    goto :goto_1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendHeadsetStatusChangedToClient fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private sendRemoveResult(I)V
    .locals 2
    .param p1, "ret"    # I

    .line 389
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mRemoveCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mRemoveCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;

    invoke-virtual {v0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;->onRemoveResult(I)V

    goto :goto_0

    .line 392
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "remove result send failed because callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return-void
.end method

.method private startVoiceActivity(I)V
    .locals 4
    .param p1, "type"    # I

    .line 409
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 410
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 412
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0, p1}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->startVoiceActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 415
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceActivity failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 418
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "startVoiceActivity failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 596
    monitor-enter p0

    .line 597
    :try_start_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "service binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceBinder:Landroid/os/IBinder;

    .line 600
    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 601
    monitor-exit p0

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelEnroll()Z
    .locals 4

    .line 119
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 120
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->cancelEnroll(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v0, 0x1

    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 126
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel enroll failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 129
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "cancel enroll failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public continueEnroll()Z
    .locals 4

    .line 135
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 136
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->continueEnroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v0, 0x1

    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 142
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "continueEnroll failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 145
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "continueEnroll failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public enroll([BILhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;)Z
    .locals 9
    .param p1, "authToken"    # [B
    .param p2, "flags"    # I
    .param p3, "callback"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;

    .line 95
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 101
    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v1, :cond_1

    .line 103
    :try_start_0
    const-string v8, ""

    .line 104
    .local v8, "opPackageName":Ljava/lang/String;
    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    iget-object v3, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mToken:Landroid/os/IBinder;

    const/4 v6, 0x0

    iget-object v7, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceReceiver:Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v8}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->enroll(Landroid/os/IBinder;[BIILhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;Ljava/lang/String;)V

    .line 105
    iput-object p3, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mEnrollCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 107
    .end local v8    # "opPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 109
    const-string v2, "VoiceRecognizeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll failed because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 112
    :cond_1
    const-string v1, "VoiceRecognizeManager"

    const-string v2, "enroll failed because get service failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return v0

    .line 96
    :cond_2
    :goto_1
    const-string v1, "VoiceRecognizeManager"

    const-string v2, "enroll failed because invalid parameter"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v0
.end method

.method public getEnrolledVoiceIdList()[I
    .locals 5

    .line 192
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 193
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    const-string v0, ""

    .line 196
    .local v0, "opPackageName":Ljava/lang/String;
    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->getEnrolledVoiceIdList(ILjava/lang/String;)[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 197
    .end local v0    # "opPackageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 199
    const-string v2, "VoiceRecognizeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnrolledVoiceIdList failed because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 202
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v2, "getEnrolledVoiceIdList failed because get service failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-object v1
.end method

.method public getHeadsetStatus()I
    .locals 4

    .line 305
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 306
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->getHeadsetStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 311
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeadsetStatus failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 314
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "getHeadsetStatus failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getHeadsetStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .line 335
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 336
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0, p1}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->getHeadsetStatusByMac(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 341
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeadsetStatusByMac failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 344
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "getHeadsetStatusByMac failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRemainingNum()I
    .locals 4

    .line 260
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 261
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->getRemainingNum()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 266
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemainingNum failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 269
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "getRemainingNum failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRemainingTime()J
    .locals 4

    .line 290
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 291
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 293
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->getRemainingTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 296
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemainingTime failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 299
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "getRemainingTime failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTotalAuthFailedTimes()I
    .locals 4

    .line 275
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 276
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->getTotalAuthFailedTimes()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 281
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTotalAuthFailedTimes failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 284
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "getTotalAuthFailedTimes failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVoiceCommandList()Lhuawei/android/security/voicerecognition/VoiceCommandList;
    .locals 5

    .line 350
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 351
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 353
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->getVoiceCommandList()Lhuawei/android/security/voicerecognition/VoiceCommandList;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 356
    const-string v2, "VoiceRecognizeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceCommandList failed because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 359
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v2, "getVoiceCommandList failed because get service failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    return-object v1
.end method

.method public getVoiceEnrollStringList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 321
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->getVoiceEnrollStringList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 326
    const-string v2, "VoiceRecognizeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceEnrollStringList failed because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 329
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v2, "getVoiceEnrollStringList failed because get service failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-object v1
.end method

.method public postEnroll()Z
    .locals 5

    .line 225
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 226
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 228
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->postEnroll()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 235
    const-string v2, "VoiceRecognizeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postEnroll failed because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "VoiceRecognizeManager"

    const-string v2, "postEnroll failed because get service failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return v1
.end method

.method public preEnroll()J
    .locals 4

    .line 209
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 210
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->preEnroll()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 215
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preEnroll failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 218
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "preEnroll failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public remove(ILhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;)Z
    .locals 5
    .param p1, "voiceId"    # I
    .param p2, "callback"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;

    .line 151
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 152
    return v0

    .line 154
    :cond_0
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 155
    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v1, :cond_1

    .line 157
    :try_start_0
    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceReceiver:Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;

    invoke-interface {v1, v2, p1, v0, v3}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->remove(Landroid/os/IBinder;IILhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;)V

    .line 158
    iput-object p2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mRemoveCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v0, 0x1

    return v0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 162
    const-string v2, "VoiceRecognizeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove failed because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 165
    :cond_1
    const-string v1, "VoiceRecognizeManager"

    const-string v2, "remove failed because get service failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return v0
.end method

.method public removeAll(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;)Z
    .locals 5
    .param p1, "callback"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;

    .line 172
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 173
    return v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 176
    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v1, :cond_1

    .line 178
    :try_start_0
    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mServiceReceiver:Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;

    invoke-interface {v1, v2, v0, v3}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->removeAll(Landroid/os/IBinder;ILhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;)V

    .line 179
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mRemoveCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$RemoveCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v0, 0x1

    return v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 183
    const-string v2, "VoiceRecognizeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove failed because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 186
    :cond_1
    const-string v1, "VoiceRecognizeManager"

    const-string v2, "remove failed because get service failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return v0
.end method

.method public resetTimeout()V
    .locals 4

    .line 246
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 247
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    invoke-interface {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->resetTimeout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 252
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTimeout failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 255
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "resetTimeout failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_1
    return-void
.end method

.method public setAuthCallback(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;)V
    .locals 4
    .param p1, "authCallback"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

    .line 63
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 64
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mAuthCallback:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;

    .line 67
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mVoiceAuthCallback:Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;

    invoke-interface {v0, v1}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->setAuthCallback(Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set authcallback failed, because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 72
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "setAuthCallback failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_1
    return-void
.end method

.method public setHeadsetStatusCallback(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$HeadsetStatusCallback;)Z
    .locals 4
    .param p1, "headsetStatusCallback"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$HeadsetStatusCallback;

    .line 77
    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->getService()Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 78
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    const-string v0, ""

    .line 81
    .local v0, "opPackageName":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mHeadsetStatusCallback:Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;

    invoke-interface {v1, v2}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;->setHeadsetStatusCallback(Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;)V

    .line 82
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mHeadsetStatusCb:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$HeadsetStatusCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const/4 v1, 0x1

    return v1

    .line 84
    .end local v0    # "opPackageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->mService:Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    .line 86
    const-string v1, "VoiceRecognizeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeadsetStatusCallback failed because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 89
    :cond_0
    const-string v0, "VoiceRecognizeManager"

    const-string v1, "setHeadsetStatusCallback failed because get service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
