.class Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;
.super Landroid/os/Handler;
.source "FaceAuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hardware/face/FaceAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;


# direct methods
.method private constructor <init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 947
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 948
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 949
    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Landroid/content/Context;Lcom/huawei/hardware/face/FaceAuthenticationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$1;

    .line 946
    invoke-direct {p0, p1, p2}, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;-><init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 951
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 952
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 953
    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Landroid/os/Looper;Lcom/huawei/hardware/face/FaceAuthenticationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/hardware/face/FaceAuthenticationManager;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$1;

    .line 946
    invoke-direct {p0, p1, p2}, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;-><init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Landroid/os/Looper;)V

    return-void
.end method

.method private sendAcquiredResult(JII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I
    .param p4, "vendorCode"    # I

    .line 1043
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v0, p3, p4}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$1100(Lcom/huawei/hardware/face/FaceAuthenticationManager;II)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1045
    return-void

    .line 1047
    :cond_0
    const/16 v1, 0xd

    if-ne p3, v1, :cond_1

    .line 1048
    add-int/lit16 v1, p4, 0x3e8

    goto :goto_0

    :cond_1
    move v1, p3

    .line 1052
    .local v1, "clientInfo":I
    :goto_0
    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$100(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1053
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v3}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1054
    iget-object v3, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v3}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 1055
    iget-object v3, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v3}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 1057
    :cond_2
    monitor-exit v2

    .line 1058
    return-void

    .line 1057
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private sendAuthenticatedFailed()V
    .locals 3

    .line 1034
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$100(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1035
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 1037
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$202(Lcom/huawei/hardware/face/FaceAuthenticationManager;Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    .line 1039
    :cond_0
    monitor-exit v0

    .line 1040
    return-void

    .line 1039
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendAuthenticatedSucceeded(Lcom/huawei/hardware/face/Face;I)V
    .locals 4
    .param p1, "face"    # Lcom/huawei/hardware/face/Face;
    .param p2, "userId"    # I

    .line 1023
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$100(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1024
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1025
    new-instance v1, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;

    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 1026
    invoke-static {v2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$1000(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;-><init>(Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;Lcom/huawei/hardware/face/Face;I)V

    .line 1027
    .local v1, "result":Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;
    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;)V

    .line 1028
    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$202(Lcom/huawei/hardware/face/FaceAuthenticationManager;Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    .line 1030
    .end local v1    # "result":Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationResult;
    :cond_0
    monitor-exit v0

    .line 1031
    return-void

    .line 1030
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendErrorResult(JII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "errMsgId"    # I
    .param p4, "vendorCode"    # I

    .line 995
    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 996
    add-int/lit16 v0, p4, 0x3e8

    goto :goto_0

    :cond_0
    move v0, p3

    .line 1001
    .local v0, "clientErrMsgId":I
    :goto_0
    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$100(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1002
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1003
    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-static {v2}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$200(Lcom/huawei/hardware/face/FaceAuthenticationManager;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    .line 1004
    invoke-static {v3, p3, p4}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$900(Lcom/huawei/hardware/face/FaceAuthenticationManager;II)Ljava/lang/String;

    move-result-object v3

    .line 1003
    invoke-virtual {v2, v0, v3}, Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 1005
    iget-object v2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$202(Lcom/huawei/hardware/face/FaceAuthenticationManager;Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;)Lcom/huawei/hardware/face/FaceAuthenticationManager$AuthenticationCallback;

    .line 1007
    :cond_1
    monitor-exit v1

    .line 1012
    return-void

    .line 1007
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 957
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 972
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->sendErrorResult(JII)V

    .line 974
    goto :goto_0

    .line 969
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->sendAuthenticatedFailed()V

    .line 970
    goto :goto_0

    .line 966
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/hardware/face/Face;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->sendAuthenticatedSucceeded(Lcom/huawei/hardware/face/Face;I)V

    .line 967
    goto :goto_0

    .line 962
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/huawei/hardware/face/FaceAuthenticationManager$MyHandler;->sendAcquiredResult(JII)V

    .line 964
    goto :goto_0

    .line 960
    :pswitch_4
    nop

    .line 979
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
