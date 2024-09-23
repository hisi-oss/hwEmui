.class public Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
.super Landroid/os/Handler;
.source "PermRecordHandler.java"


# static fields
.field private static final CHINA_RELEASE_VERSION:Z

.field private static final CN_COMMERCIAL_USER:I = 0x1

.field private static final MSG_UPLOAD:I = 0x1

.field private static final MSG_UPLOAD_DELAY:I = 0x3e8

.field private static final SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android.permission.SYSTEM_ALERT_WINDOW"

.field private static final TAG:Ljava/lang/String; = "PermRecordHandler"

.field private static mUserType:I

.field private static sPermHandler:Lcom/huawei/hsm/permission/monitor/PermRecordHandler;


# instance fields
.field private volatile mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const-string v0, "ro.logsystem.usertype"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mUserType:I

    .line 18
    const-string v0, "CN"

    const-string v1, "ro.product.locale.region"

    const-string v2, ""

    .line 19
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->CHINA_RELEASE_VERSION:Z

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 28
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    return-void
.end method

.method private static checkRejectCondition(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 71
    sget-boolean v0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->CHINA_RELEASE_VERSION:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 75
    :cond_0
    sget v0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mUserType:I

    if-ne v0, v1, :cond_1

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {p1}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 79
    :cond_1
    sget v0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mUserType:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static declared-synchronized getHandleInstance()Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    .locals 4

    const-class v0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->sPermHandler:Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PermRecordHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v2, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->sPermHandler:Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    .line 38
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    sget-object v1, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->sPermHandler:Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendPermMessageDelayed(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "delay"    # I

    .line 83
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 84
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;

    invoke-virtual {v1}, Lcom/huawei/hsm/permission/monitor/PermCounter;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 85
    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 86
    return-void
.end method


# virtual methods
.method public declared-synchronized accessPermission(IIILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "permType"    # I
    .param p4, "desStr"    # Ljava/lang/String;

    monitor-enter p0

    .line 55
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p1}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->checkRejectCondition(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 56
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/huawei/hsm/permission/StubController;->handleIncomingUser(I)I

    move-result v0

    .line 60
    .local v0, "validUid":I
    invoke-static {p1, p2}, Lcom/huawei/hsm/permission/StubController;->handleIncomingPid(II)I

    move-result v1

    .line 61
    .local v1, "validPid":I
    iget-object v2, p0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;

    invoke-virtual {v2, v0, v1, p3}, Lcom/huawei/hsm/permission/monitor/PermCounter;->isSamePerm(III)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;

    invoke-virtual {v2}, Lcom/huawei/hsm/permission/monitor/PermCounter;->count()V

    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    new-instance v2, Lcom/huawei/hsm/permission/monitor/PermCounter;

    invoke-direct {v2, p3, p4, v0, v1}, Lcom/huawei/hsm/permission/monitor/PermCounter;-><init>(ILjava/lang/String;II)V

    iput-object v2, p0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;

    .line 63
    const/16 v2, 0x3e8

    invoke-direct {p0, v3, v2}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->sendPermMessageDelayed(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_1
    monitor-exit p0

    return-void

    .line 54
    .end local v0    # "validUid":I
    .end local v1    # "validPid":I
    .end local p1    # "uid":I
    .end local p2    # "pid":I
    .end local p3    # "permType":I
    .end local p4    # "desStr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    throw p1
.end method

.method public declared-synchronized accessPermission(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "isAllow"    # Z
    .param p4, "uid"    # I
    .param p5, "desStr"    # Ljava/lang/String;

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-static {p2, p4}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->checkRejectCondition(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 43
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;

    invoke-virtual {v0, p1, p2, p3, p5}, Lcom/huawei/hsm/permission/monitor/PermCounter;->isSamePerm(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;

    invoke-virtual {v0}, Lcom/huawei/hsm/permission/monitor/PermCounter;->count()V

    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    new-instance v0, Lcom/huawei/hsm/permission/monitor/PermCounter;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/huawei/hsm/permission/monitor/PermCounter;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->mPermCounter:Lcom/huawei/hsm/permission/monitor/PermCounter;

    .line 47
    const/16 v0, 0x3e8

    invoke-direct {p0, v1, v0}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->sendPermMessageDelayed(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_1
    monitor-exit p0

    return-void

    .line 41
    .end local p1    # "pkg":Ljava/lang/String;
    .end local p2    # "permission":Ljava/lang/String;
    .end local p3    # "isAllow":Z
    .end local p4    # "uid":I
    .end local p5    # "desStr":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 90
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, "data":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->recordPermissionUsage(Landroid/os/Bundle;)V

    .line 95
    nop

    .line 99
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_0
    return-void
.end method
