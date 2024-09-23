.class Lhuawei/android/security/facerecognition/FaceCamera$2;
.super Ljava/lang/Object;
.source "FaceCamera.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/FaceCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/FaceCamera;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/FaceCamera;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 263
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 16
    .param p1, "reader"    # Landroid/media/ImageReader;

    move-object/from16 v7, p0

    .line 267
    const-string v0, "DebugImage"

    const-string v1, "OnImageAvailable."

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$200(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 269
    if-nez p1, :cond_0

    .line 270
    :try_start_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 272
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v0

    .line 273
    .local v9, "image":Landroid/media/Image;
    if-eqz v9, :cond_9

    .line 274
    :try_start_2
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$300(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/os/Handler;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_2

    .line 335
    if-eqz v9, :cond_1

    :try_start_3
    invoke-virtual {v9}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    return-void

    .line 277
    :cond_2
    :try_start_5
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$400(Lhuawei/android/security/facerecognition/FaceCamera;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$500(Lhuawei/android/security/facerecognition/FaceCamera;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 335
    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v9}, Landroid/media/Image;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 279
    return-void

    .line 281
    :cond_4
    :try_start_8
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$600(Lhuawei/android/security/facerecognition/FaceCamera;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 283
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 4.2. call-back get First Image --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v0    # "current":J
    :cond_5
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$700(Lhuawei/android/security/facerecognition/FaceCamera;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    const-string v0, "com.android.systemui"

    iget-object v2, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v2}, Lhuawei/android/security/facerecognition/FaceCamera;->access$800(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 287
    const-string v0, "FaceCamera"

    const-string v2, "Big data report image"

    invoke-static {v0, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 289
    .local v2, "now":J
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$800(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x1f6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"capture_picture_cost_ms\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v6}, Lhuawei/android/security/facerecognition/FaceCamera;->access$900(Lhuawei/android/security/facerecognition/FaceCamera;)J

    move-result-wide v11

    sub-long v11, v2, v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/util/Flog;->bdReport(Landroid/content/Context;ILjava/lang/String;)Z

    .line 290
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0, v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$902(Lhuawei/android/security/facerecognition/FaceCamera;J)J

    .line 291
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$702(Lhuawei/android/security/facerecognition/FaceCamera;Z)Z

    .line 292
    .end local v2    # "now":J
    goto :goto_0

    :cond_6
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$700(Lhuawei/android/security/facerecognition/FaceCamera;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 293
    const-string v0, "FaceCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need report? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$700(Lhuawei/android/security/facerecognition/FaceCamera;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", OP pkg name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$800(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$702(Lhuawei/android/security/facerecognition/FaceCamera;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 298
    :cond_7
    :goto_0
    :try_start_9
    const-string v0, "DebugImage"

    const-string v1, "Extract image"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v9}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 300
    .local v3, "crop":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 301
    .local v0, "planes":[Landroid/media/Image$Plane;
    array-length v1, v0

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    move-object v11, v1

    .line 302
    .local v11, "planeArray":[Ljava/nio/ByteBuffer;
    array-length v1, v0

    new-array v1, v1, [I

    move-object v12, v1

    .line 303
    .local v12, "rowStrideArray":[I
    array-length v1, v0

    new-array v1, v1, [I

    move-object v13, v1

    .line 304
    .local v13, "pixelStrideArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 305
    aget-object v2, v0, v1

    .line 306
    .local v2, "plane":Landroid/media/Image$Plane;
    iget-object v4, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1000(Lhuawei/android/security/facerecognition/FaceCamera;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v11, v1

    .line 307
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    aput v4, v12, v1

    .line 308
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    aput v4, v13, v1

    .line 304
    .end local v2    # "plane":Landroid/media/Image$Plane;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    .end local v1    # "i":I
    :cond_8
    const-string v1, "DebugImage"

    const-string v2, "Extract image end"

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, v7, Lhuawei/android/security/facerecognition/FaceCamera$2;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$300(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/os/Handler;

    move-result-object v14

    new-instance v6, Lhuawei/android/security/facerecognition/FaceCamera$2$1;

    move-object v1, v6

    move-object v2, v7

    move-object v4, v11

    move-object v5, v12

    move-object v10, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lhuawei/android/security/facerecognition/FaceCamera$2$1;-><init>(Lhuawei/android/security/facerecognition/FaceCamera$2;Landroid/graphics/Rect;[Ljava/nio/ByteBuffer;[I[I)V

    invoke-virtual {v14, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v0    # "planes":[Landroid/media/Image$Plane;
    .end local v3    # "crop":Landroid/graphics/Rect;
    .end local v11    # "planeArray":[Ljava/nio/ByteBuffer;
    .end local v12    # "rowStrideArray":[I
    .end local v13    # "pixelStrideArray":[I
    goto :goto_2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_a
    const-string v1, "FaceCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Catch un-handle exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 335
    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    goto :goto_5

    .line 272
    :catch_1
    move-exception v0

    move-object v10, v0

    goto :goto_4

    .line 333
    :cond_9
    const-string v0, "FaceCamera"

    const-string v1, "Image is null."

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 335
    :goto_3
    if-eqz v9, :cond_a

    :try_start_b
    invoke-virtual {v9}, Landroid/media/Image;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 337
    .end local v9    # "image":Landroid/media/Image;
    :cond_a
    goto :goto_7

    .line 272
    .restart local v9    # "image":Landroid/media/Image;
    :goto_4
    :try_start_c
    throw v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 335
    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_5
    if-eqz v9, :cond_c

    if-eqz v10, :cond_b

    :try_start_d
    invoke-virtual {v9}, Landroid/media/Image;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    :try_start_e
    invoke-virtual {v10, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v9}, Landroid/media/Image;->close()V

    :cond_c
    :goto_6
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .end local v9    # "image":Landroid/media/Image;
    :catch_3
    move-exception v0

    .line 336
    .restart local v0    # "ex":Ljava/lang/Exception;
    :try_start_f
    const-string v1, "FaceCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Catch un-handle image exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_7
    monitor-exit v8

    .line 339
    return-void

    .line 338
    :goto_8
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0
.end method
