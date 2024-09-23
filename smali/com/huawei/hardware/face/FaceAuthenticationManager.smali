.class public Lcom/huawei/hardware/face/FaceAuthenticationManager;
.super Ljava/lang/Object;
.source "FaceAuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;,
        Lcom/huawei/hardware/face/FaceAuthenticationManager$OnAuthenticationCancelListener;,
        Lcom/huawei/hardware/face/FaceAuthenticationManager$LockoutResetCallback;,
        Lcom/huawei/hardware/face/FaceAuthenticationManager$RemovalCallback;,
        Lcom/huawei/hardware/face/FaceAuthenticationManager$EnrollmentCallback;,
        Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;,
        Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;,
        Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;,
        Lcom/huawei/hardware/face/FaceAuthenticationManager$FaceRecognitionAbility;
    }
.end annotation


# static fields
.field private static final FACERECOGNITION_OFF:I = 0x0

.field private static final FACERECOGNITION_ON:I = 0x1

.field public static final FACE_ACQUIRED_GOOD:I = 0x0

.field public static final FACE_ACQUIRED_INSUFFICIENT:I = 0x1

.field public static final FACE_ACQUIRED_NOT_DETECTED:I = 0xc

.field public static final FACE_ACQUIRED_POOR_GAZE:I = 0xb

.field public static final FACE_ACQUIRED_TOO_BRIGHT:I = 0x2

.field public static final FACE_ACQUIRED_TOO_CLOSE:I = 0x4

.field public static final FACE_ACQUIRED_TOO_DARK:I = 0x3

.field public static final FACE_ACQUIRED_TOO_FAR:I = 0x5

.field public static final FACE_ACQUIRED_TOO_HIGH:I = 0x6

.field public static final FACE_ACQUIRED_TOO_LEFT:I = 0x9

.field public static final FACE_ACQUIRED_TOO_LOW:I = 0x7

.field public static final FACE_ACQUIRED_TOO_MUCH_MOTION:I = 0xa

.field public static final FACE_ACQUIRED_TOO_RIGHT:I = 0x8

.field public static final FACE_ACQUIRED_VENDOR:I = 0xd

.field public static final FACE_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FACE_ERROR_BUSY:I = 0xd

.field public static final FACE_ERROR_CANCELED:I = 0x5

.field public static final FACE_ERROR_HW_NOT_PRESENT:I = 0xc

.field public static final FACE_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FACE_ERROR_LOCKOUT:I = 0x7

.field public static final FACE_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final FACE_ERROR_NOT_ENROLLED:I = 0xb

.field public static final FACE_ERROR_NO_SPACE:I = 0x4

.field public static final FACE_ERROR_TIMEOUT:I = 0x3

.field public static final FACE_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FACE_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FACE_ERROR_USER_CANCELED:I = 0xa

.field public static final FACE_ERROR_VENDOR:I = 0x8

.field public static final FACE_ERROR_VENDOR_BASE:I = 0x3e8

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field private static final TAG:Ljava/lang/String; = "FaceManager"

.field public static final USE_FACE_AUTHENTICATION:Ljava/lang/String; = "android.permission.USE_FACERECOGNITION"

.field private static final mAcquiredCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mErrorCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthenticationCallback:Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

.field private final mAuthenticationLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

.field private mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lcom/huawei/hardware/face/FaceAuthenticationManager$1;

    invoke-direct {v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager$1;-><init>()V

    sput-object v0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mErrorCodeMap:Ljava/util/HashMap;

    .line 252
    new-instance v0, Lcom/huawei/hardware/face/FaceAuthenticationManager$2;

    invoke-direct {v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager$2;-><init>()V

    sput-object v0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAcquiredCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAuthenticationLock:Ljava/lang/Object;

    .line 305
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mContext:Landroid/content/Context;

    .line 310
    new-instance v0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;-><init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Landroid/content/Context;Lcom/huawei/hardware/face/FaceAuthenticationManager$1;)V

    iput-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mHandler:Landroid/os/Handler;

    .line 311
    iput-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAuthenticationCallback:Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    .line 313
    new-instance v0, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;

    invoke-direct {v0, p0}, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;-><init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;)V

    .line 364
    .local v0, "faceCallback":Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;
    new-instance v1, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    invoke-direct {v1, p1, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;-><init>(Landroid/content/Context;Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;)V

    iput-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    .line 365
    return-void
.end method

.method static synthetic access$100(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 42
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAuthenticationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 42
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mCryptoObject:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huawei/hardware/face/FaceAuthenticationManager;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 42
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAuthenticationCallback:Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/huawei/hardware/face/FaceAuthenticationManager;Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;
    .param p1, "x1"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    .line 42
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAuthenticationCallback:Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 42
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .line 42
    sget-object v0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mErrorCodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    .line 42
    sget-object v0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAcquiredCodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 42
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/hardware/face/FaceAuthenticationManager;Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;
    .param p1, "x1"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    .line 42
    invoke-direct {p0, p1}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->cancelAuthentication(Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/huawei/hardware/face/FaceAuthenticationManager;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelAuthentication(Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;)V
    .locals 3
    .param p1, "cryptoObject"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    .line 612
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mCryptoObject:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mCryptoObject:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    invoke-virtual {v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->getOpId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 614
    .local v0, "sessionId":J
    :goto_0
    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    invoke-virtual {v2, v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->cancelAuthenticate(J)I

    .line 616
    .end local v0    # "sessionId":J
    :cond_1
    return-void
.end method

.method private getAcquiredString(II)Ljava/lang/String;
    .locals 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 647
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 678
    const-string v1, "FaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid acquired message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-object v0

    .line 675
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face_acquired_vendor: code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 673
    :pswitch_1
    const-string v0, "face_acquired_not_detected"

    return-object v0

    .line 671
    :pswitch_2
    const-string v0, "face_acquired_poor_gaze"

    return-object v0

    .line 669
    :pswitch_3
    const-string v0, "face_acquired_too_much_motion"

    return-object v0

    .line 667
    :pswitch_4
    const-string v0, "face_acquired_too_left"

    return-object v0

    .line 665
    :pswitch_5
    const-string v0, "face_acquired_too_right"

    return-object v0

    .line 663
    :pswitch_6
    const-string v0, "face_acquired_too_low"

    return-object v0

    .line 661
    :pswitch_7
    const-string v0, "face_acquired_too_high"

    return-object v0

    .line 659
    :pswitch_8
    const-string v0, "face_acquired_too_far"

    return-object v0

    .line 657
    :pswitch_9
    const-string v0, "face_acquired_too_close"

    return-object v0

    .line 655
    :pswitch_a
    const-string v0, "face_acquired_too_dark"

    return-object v0

    .line 653
    :pswitch_b
    const-string v0, "face_acquired_too_bright"

    return-object v0

    .line 651
    :pswitch_c
    const-string v0, "face_acquired_insufficient"

    return-object v0

    .line 649
    :pswitch_d
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getErrorString(II)Ljava/lang/String;
    .locals 3
    .param p1, "errMsg"    # I
    .param p2, "vendorCode"    # I

    .line 619
    packed-switch p1, :pswitch_data_0

    .line 642
    :pswitch_0
    const-string v0, "FaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x0

    return-object v0

    .line 637
    :pswitch_1
    const-string v0, "face_error_hw_not_present"

    return-object v0

    .line 635
    :pswitch_2
    const-string v0, "face_error_not_enrolled"

    return-object v0

    .line 633
    :pswitch_3
    const-string v0, "face_error_lockout_permanent"

    return-object v0

    .line 639
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face_error_vendor: code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 631
    :pswitch_5
    const-string v0, "face_error_lockout"

    return-object v0

    .line 629
    :pswitch_6
    const-string v0, "face_error_canceled"

    return-object v0

    .line 627
    :pswitch_7
    const-string v0, "face_error_no_space"

    return-object v0

    .line 625
    :pswitch_8
    const-string v0, "face_error_timeout"

    return-object v0

    .line 623
    :pswitch_9
    const-string v0, "face_error_unable_to_process"

    return-object v0

    .line 621
    :pswitch_a
    const-string v0, "face_error_hw_not_available"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 396
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 397
    new-instance v1, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;-><init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Landroid/os/Looper;Lcom/huawei/hardware/face/FaceAuthenticationManager$1;)V

    iput-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 399
    new-instance v1, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;

    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;-><init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Landroid/os/Looper;Lcom/huawei/hardware/face/FaceAuthenticationManager$1;)V

    iput-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mHandler:Landroid/os/Handler;

    .line 401
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public authenticate(Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "crypto"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 389
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->authenticate(Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 390
    return-void
.end method

.method public authenticate(Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 5
    .param p1, "crypto"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I

    .line 411
    if-eqz p4, :cond_6

    .line 415
    if-eqz p2, :cond_1

    .line 416
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "FaceManager"

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 420
    :cond_0
    new-instance v0, Lcom/huawei/hardware/face/FaceAuthenticationManager$OnAuthenticationCancelListener;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hardware/face/FaceAuthenticationManager$OnAuthenticationCancelListener;-><init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    if-eqz v0, :cond_5

    .line 444
    invoke-direct {p0, p5}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->useHandler(Landroid/os/Handler;)V

    .line 446
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAuthenticationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAuthenticationCallback:Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 448
    const-string v1, "FaceManager"

    const-string v4, "Authentication is in running, do not accept dup request."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    nop

    .line 450
    invoke-direct {p0, v3, v2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-virtual {p4, v3, v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 451
    monitor-exit v0

    return-void

    .line 454
    :cond_2
    iput-object p4, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mAuthenticationCallback:Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    .line 455
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->init()I

    move-result v0

    .line 459
    if-eqz v0, :cond_3

    .line 460
    const-string v1, "FaceManager"

    const-string v4, "Authentication initialization failed."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    nop

    .line 462
    invoke-direct {p0, v3, v2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-virtual {p4, v3, v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 463
    return-void

    .line 466
    :cond_3
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mCryptoObject:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    .line 467
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;->getOpId()J

    move-result-wide v1

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x0

    .line 468
    .local v1, "sessionId":J
    :goto_0
    iget-object v3, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, p3, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->authenticate(JILandroid/view/Surface;)I

    .end local v0    # "ret":I
    .end local v1    # "sessionId":J
    goto :goto_1

    .line 455
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 470
    :cond_5
    :goto_1
    return-void

    .line 412
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnrolledFaceID()I
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->getEnrolledFaceIDs()[I

    move-result-object v0

    .line 526
    .local v0, "faceIds":[I
    array-length v2, v0

    if-nez v2, :cond_0

    .line 527
    return v1

    .line 530
    :cond_0
    aget v1, v0, v1

    return v1

    .line 533
    .end local v0    # "faceIds":[I
    :cond_1
    return v1
.end method

.method public getFaceRecognitionAbility()Lcom/huawei/hardware/face/FaceAuthenticationManager$FaceRecognitionAbility;
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->getFaceRecognitionAbility()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;

    move-result-object v0

    .line 590
    .local v0, "ability":Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;
    if-nez v0, :cond_0

    .line 591
    const/4 v1, 0x0

    return-object v1

    .line 594
    :cond_0
    new-instance v1, Lcom/huawei/hardware/face/FaceAuthenticationManager$FaceRecognitionAbility;

    invoke-direct {v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager$FaceRecognitionAbility;-><init>()V

    .line 595
    .local v1, "faceAbility":Lcom/huawei/hardware/face/FaceAuthenticationManager$FaceRecognitionAbility;
    iget-boolean v2, v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;->isFaceRecognitionSupport:Z

    iput-boolean v2, v1, Lcom/huawei/hardware/face/FaceAuthenticationManager$FaceRecognitionAbility;->isFaceRecognitionSupport:Z

    .line 596
    iget v2, v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;->faceMode:I

    iput v2, v1, Lcom/huawei/hardware/face/FaceAuthenticationManager$FaceRecognitionAbility;->faceMode:I

    .line 597
    iget v2, v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;->secureLevel:I

    iput v2, v1, Lcom/huawei/hardware/face/FaceAuthenticationManager$FaceRecognitionAbility;->secureLevel:I

    .line 598
    iget v2, v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;->reserve:I

    iput v2, v1, Lcom/huawei/hardware/face/FaceAuthenticationManager$FaceRecognitionAbility;->reserve:I

    .line 600
    return-object v1
.end method

.method public hasEnrolledFace()Z
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->getEnrolledFaceIDs()[I

    move-result-object v0

    .line 518
    .local v0, "faceIds":[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 520
    .end local v0    # "faceIds":[I
    :cond_1
    return v1
.end method

.method public isHardwareDetected()Z
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager;->mFaceManagerImpl:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->getHardwareSupportType()I

    move-result v0

    .line 574
    .local v0, "supportType":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 575
    const/4 v1, 0x1

    return v1

    .line 579
    .end local v0    # "supportType":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
