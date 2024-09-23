.class public Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;
.super Ljava/lang/Object;
.source "FaceRecognizeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder$SingletonInstance;
    }
.end annotation


# instance fields
.field private mCallback:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;
    .locals 1

    .line 660
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder$SingletonInstance;->access$400()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;)V
    .locals 0
    .param p1, "callback"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;

    .line 664
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->mCallback:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;

    .line 665
    return-void
.end method

.method public onCallbackEvent(IIII)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "type"    # I
    .param p3, "code"    # I
    .param p4, "errorCode"    # I

    .line 668
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), code("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-static {p3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->getCodeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {p3, p4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->getErrorCodeString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->mCallback:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;

    if-eqz v0, :cond_1

    .line 672
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    .line 673
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 674
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 6. Authenticate Success --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    .end local v0    # "current":J
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->mCallback:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;->onCallbackEvent(IIII)V

    goto :goto_0

    .line 679
    :cond_1
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback is null, construct FaceRecognizeManager with correct Callback!"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :goto_0
    return-void
.end method
