.class public abstract Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
.super Ljava/lang/Object;
.source "HwSecurityTaskBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;,
        Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;,
        Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    }
.end annotation


# static fields
.field public static final E_CAMERA_FAILED:I = 0x7

.field public static final E_CANCEL:I = 0x2

.field public static final E_CONTINUE:I = -0x1

.field public static final E_FAILED:I = 0x5

.field public static final E_OK:I = 0x0

.field public static final E_RES_FAILED:I = 0x6

.field public static final E_TIMEOUT:I = 0x1

.field public static final E_UNEXPECTATION:I = 0x4

.field public static final STATUS_FINISHED:I = 0x2

.field public static final STATUS_STARTED:I = 0x1

.field public static final STATUS_UNSTART:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mParent:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

.field protected mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mParent:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    .line 41
    iput-object p2, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mStatus:I

    .line 43
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->onStart()V

    .line 44
    return-void
.end method


# virtual methods
.method public abstract doAction()I
.end method

.method protected endWithResult(I)V
    .locals 3
    .param p1, "ret"    # I

    .line 77
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endWithResult, task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->onStop()V

    .line 80
    iput v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mStatus:I

    .line 81
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    invoke-interface {v0, p0, p1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;->onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 85
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 3

    .line 51
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mStatus:I

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mStatus:I

    .line 54
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->doAction()I

    move-result v0

    .line 55
    .local v0, "ret":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->endWithResult(I)V

    .line 59
    .end local v0    # "ret":I
    :cond_0
    return-void
.end method

.method public getParent()Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .locals 1

    .line 47
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mParent:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    return-object v0
.end method

.method public getTaskStatus()I
    .locals 1

    .line 73
    iget v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mStatus:I

    return v0
.end method

.method public onStart()V
    .locals 0

    .line 66
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "status":Ljava/lang/String;
    iget v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->mStatus:I

    packed-switch v1, :pswitch_data_0

    .line 101
    const-string v0, "unknown status"

    goto :goto_0

    .line 98
    :pswitch_0
    const-string v0, "finished"

    .line 99
    goto :goto_0

    .line 95
    :pswitch_1
    const-string v0, "started"

    .line 96
    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "unstarted"

    .line 93
    nop

    .line 103
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
