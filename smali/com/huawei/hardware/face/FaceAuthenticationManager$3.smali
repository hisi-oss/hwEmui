.class Lcom/huawei/hardware/face/FaceAuthenticationManager$3;
.super Ljava/lang/Object;
.source "FaceAuthenticationManager.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hardware/face/FaceAuthenticationManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;


# direct methods
.method constructor <init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 313
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackEvent(IIII)V
    .locals 10
    .param p1, "reqId"    # I
    .param p2, "type"    # I
    .param p3, "code"    # I
    .param p4, "errorCode"    # I

    .line 317
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 318
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$100(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 323
    const/4 v1, 0x3

    if-ne v2, p3, :cond_4

    .line 324
    if-nez p4, :cond_1

    .line 325
    const-wide/16 v3, 0x0

    .line 327
    .local v3, "deviceId":J
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 328
    .local v1, "userId":I
    iget-object v5, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v5}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$300(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x66

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 329
    .end local v1    # "userId":I
    .end local v3    # "deviceId":J
    goto/16 :goto_0

    :cond_1
    if-ne v1, p4, :cond_2

    .line 330
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$300(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x67

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 332
    :cond_2
    const-wide/16 v3, 0x0

    .line 333
    .restart local v3    # "deviceId":J
    move v1, p4

    .line 334
    .local v1, "vendorCode":I
    const/16 v5, 0x8

    .line 335
    .local v5, "error":I
    invoke-static {}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$400()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 336
    .local v6, "result":Ljava/lang/Integer;
    if-eqz v6, :cond_3

    .line 337
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v5, v7

    .line 339
    :cond_3
    iget-object v7, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v7}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$300(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x68

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v5, v1, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 340
    .end local v1    # "vendorCode":I
    .end local v3    # "deviceId":J
    .end local v5    # "error":I
    .end local v6    # "result":Ljava/lang/Integer;
    goto :goto_0

    .line 341
    :cond_4
    if-ne v1, p3, :cond_6

    .line 342
    const-wide/16 v3, 0x0

    .line 343
    .restart local v3    # "deviceId":J
    move v1, p4

    .line 344
    .restart local v1    # "vendorCode":I
    const/16 v5, 0xd

    .line 345
    .local v5, "acquireInfo":I
    invoke-static {}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$500()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 346
    .restart local v6    # "result":Ljava/lang/Integer;
    if-eqz v6, :cond_5

    .line 347
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v5, v7

    .line 349
    :cond_5
    iget-object v7, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v7}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$300(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x65

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v5, v1, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 352
    .end local v1    # "vendorCode":I
    .end local v3    # "deviceId":J
    .end local v5    # "acquireInfo":I
    .end local v6    # "result":Ljava/lang/Integer;
    :cond_6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    if-ne v2, p3, :cond_7

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$3;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$600(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->release()I

    move-result v0

    .line 357
    if-eqz v0, :cond_7

    .line 358
    const-string v1, "FaceManager"

    const-string v2, "Authentication release failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v0    # "ret":I
    :cond_7
    return-void

    .line 352
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
