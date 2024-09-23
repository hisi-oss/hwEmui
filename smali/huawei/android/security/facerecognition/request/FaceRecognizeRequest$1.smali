.class Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest$1;
.super Ljava/lang/Object;
.source "FaceRecognizeRequest.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 22
    iput-object p1, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest$1;->this$0:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 3
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 24
    iget-object v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest$1;->this$0:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->access$000(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest$1;->this$0:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->access$000(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest$1;->this$0:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->onRequestEnd(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    goto :goto_0

    .line 28
    :cond_0
    const-string v0, ""

    const-string v1, "null manager"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void
.end method
