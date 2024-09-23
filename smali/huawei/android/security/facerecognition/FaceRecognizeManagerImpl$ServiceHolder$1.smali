.class Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;
.super Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;
.source "FaceRecognizeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    .line 213
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;->this$0:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver$Stub;-><init>()V

    return-void
.end method

.method private sendEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V
    .locals 2
    .param p1, "event"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 261
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    invoke-direct {v0, p1}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 263
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 267
    return-object p0
.end method

.method public onAuthenticationAcquired(I)V
    .locals 5
    .param p1, "acquiredInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    const/4 v1, 0x1

    new-array v1, v1, [J

    int-to-long v2, p1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    .line 252
    .local v0, "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    invoke-direct {p0, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;->sendEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    .line 253
    return-void
.end method

.method public onAuthenticationCancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    const/4 v1, 0x0

    new-array v1, v1, [J

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    .line 245
    .local v0, "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    invoke-direct {p0, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;->sendEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    .line 246
    return-void
.end method

.method public onAuthenticationResult(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    const/4 v1, 0x2

    new-array v1, v1, [J

    int-to-long v2, p2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    int-to-long v2, p1

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    .line 239
    .local v0, "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    invoke-direct {p0, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;->sendEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    .line 240
    return-void
.end method

.method public onEnrollAcquired(II)V
    .locals 5
    .param p1, "acquiredInfo"    # I
    .param p2, "process"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    const/4 v1, 0x2

    new-array v1, v1, [J

    int-to-long v2, p1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    int-to-long v2, p2

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    .line 232
    .local v0, "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    invoke-direct {p0, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;->sendEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    .line 233
    return-void
.end method

.method public onEnrollCancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    const/4 v1, 0x0

    new-array v1, v1, [J

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    .line 225
    .local v0, "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    invoke-direct {p0, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;->sendEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    .line 226
    return-void
.end method

.method public onEnrollResult(III)V
    .locals 5
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    const/4 v1, 0x3

    new-array v1, v1, [J

    int-to-long v2, p3

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    int-to-long v2, p1

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    int-to-long v2, p2

    const/4 v4, 0x2

    aput-wide v2, v1, v4

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    .line 219
    .local v0, "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    invoke-direct {p0, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;->sendEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    .line 220
    return-void
.end method

.method public onRemovedResult(II)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    const/4 v1, 0x2

    new-array v1, v1, [J

    int-to-long v2, p2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    int-to-long v2, p1

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    .line 257
    .local v0, "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    invoke-direct {p0, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;->sendEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    .line 258
    return-void
.end method
