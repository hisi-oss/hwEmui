.class Lhuawei/android/security/facerecognition/FaceCamera$2$1;
.super Ljava/lang/Object;
.source "FaceCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/security/facerecognition/FaceCamera$2;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lhuawei/android/security/facerecognition/FaceCamera$2;

.field final synthetic val$crop:Landroid/graphics/Rect;

.field final synthetic val$pixelStrideArray:[I

.field final synthetic val$planeArray:[Ljava/nio/ByteBuffer;

.field final synthetic val$rowStrideArray:[I


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/FaceCamera$2;Landroid/graphics/Rect;[Ljava/nio/ByteBuffer;[I[I)V
    .locals 0
    .param p1, "this$1"    # Lhuawei/android/security/facerecognition/FaceCamera$2;

    .line 312
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->this$1:Lhuawei/android/security/facerecognition/FaceCamera$2;

    iput-object p2, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->val$crop:Landroid/graphics/Rect;

    iput-object p3, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->val$planeArray:[Ljava/nio/ByteBuffer;

    iput-object p4, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->val$rowStrideArray:[I

    iput-object p5, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->val$pixelStrideArray:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 315
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1100()I

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->this$1:Lhuawei/android/security/facerecognition/FaceCamera$2;

    iget-object v0, v0, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->val$crop:Landroid/graphics/Rect;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->val$planeArray:[Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->val$rowStrideArray:[I

    iget-object v4, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->val$pixelStrideArray:[I

    invoke-static {v0, v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1200(Lhuawei/android/security/facerecognition/FaceCamera;Landroid/graphics/Rect;[Ljava/nio/ByteBuffer;[I[I)[B

    move-result-object v0

    .line 317
    .local v0, "bytes":[B
    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->native_send_image([B)I

    move-result v1

    .line 318
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 319
    const-string v2, "FaceCamera"

    const-string v3, "SendImageData failed"

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v0    # "bytes":[B
    .end local v1    # "result":I
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->this$1:Lhuawei/android/security/facerecognition/FaceCamera$2;

    iget-object v0, v0, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$600(Lhuawei/android/security/facerecognition/FaceCamera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 324
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 4.3. call-back Send First Image Data --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$2$1;->this$1:Lhuawei/android/security/facerecognition/FaceCamera$2;

    iget-object v2, v2, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$602(Lhuawei/android/security/facerecognition/FaceCamera;Z)Z

    .line 327
    .end local v0    # "current":J
    :cond_1
    return-void
.end method
