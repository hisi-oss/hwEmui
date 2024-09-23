.class public Lcom/huawei/uifirst/fastview/common/StatusDecoupling;
.super Ljava/lang/Object;
.source "StatusDecoupling.java"


# static fields
.field protected static final DEBUG_ENABLE:Z = false

.field protected static final LOG_DEBUG:I = 0x2

.field protected static final LOG_ERROR:I = 0x4

.field protected static final LOG_INFO:I = 0x1

.field protected static final LOG_WARNING:I = 0x3

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_INTERMEDIATE:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "StatusDecouplingPolicy"


# instance fields
.field protected mDelayTime:I

.field protected mDesiredState:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIsTaskAdditionNeeded:Z

.field protected mIsTaskInProcessing:Z

.field protected mModelName:Ljava/lang/String;

.field protected mTimeOutRunnable:Ljava/lang/Runnable;

.field protected mUserClickEnable:Z

.field protected mUserClickSkipped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mDesiredState:Z

    .line 26
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskInProcessing:Z

    .line 27
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mUserClickSkipped:Z

    .line 28
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskAdditionNeeded:Z

    .line 29
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mUserClickEnable:Z

    .line 34
    const/16 v0, 0x1388

    iput v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mDelayTime:I

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mHandler:Landroid/os/Handler;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mModelName:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling$1;

    invoke-direct {v0, p0}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling$1;-><init>(Lcom/huawei/uifirst/fastview/common/StatusDecoupling;)V

    iput-object v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public checkTaskAdditionNeeded(I)V
    .locals 5
    .param p1, "deviceActualState"    # I

    .line 105
    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskInProcessing:Z

    .line 106
    .local v0, "wasTaskInProcessing":Z
    const/4 v1, 0x0

    .line 107
    .local v1, "mDevActualState":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 121
    invoke-virtual {p0, v3}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->setTaskInProcessing(Z)V

    .line 122
    const/4 v1, 0x0

    goto :goto_0

    .line 117
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->setTaskInProcessing(Z)V

    .line 118
    const/4 v1, 0x0

    .line 119
    goto :goto_0

    .line 113
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->setTaskInProcessing(Z)V

    .line 114
    const/4 v1, 0x1

    .line 115
    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->setTaskInProcessing(Z)V

    .line 110
    const/4 v1, 0x0

    .line 111
    nop

    .line 125
    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskInProcessing:Z

    if-nez v4, :cond_3

    .line 126
    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mUserClickSkipped:Z

    if-eqz v4, :cond_1

    .line 127
    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mDesiredState:Z

    if-ne v4, v1, :cond_0

    .line 128
    iput-boolean v3, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mUserClickSkipped:Z

    .line 129
    iput-boolean v3, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskAdditionNeeded:Z

    .line 130
    iput-boolean v3, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mUserClickEnable:Z

    goto :goto_1

    .line 132
    :cond_0
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskAdditionNeeded:Z

    goto :goto_1

    .line 135
    :cond_1
    iget-boolean v2, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mDesiredState:Z

    if-ne v2, v1, :cond_2

    .line 136
    iput-boolean v3, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mUserClickEnable:Z

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->exitPolicy()V

    .line 141
    :goto_1
    const-string v2, "StatusDecouplingPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTaskAdditionNeeded  mIsTaskNeeded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskAdditionNeeded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",deviceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",ClickSkipped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mUserClickSkipped:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",UserEn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mUserClickEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public exitPolicy()V
    .locals 0

    .line 164
    return-void
.end method

.method public getDesireState()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mDesiredState:Z

    return v0
.end method

.method public getTaskProcessingState()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskInProcessing:Z

    return v0
.end method

.method public locolLog(ILjava/lang/String;)V
    .locals 2
    .param p1, "logLevel"    # I
    .param p2, "logInfo"    # Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "logString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    const-string v1, "StatusDecouplingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    goto :goto_0

    .line 91
    :pswitch_1
    const-string v1, "StatusDecouplingPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto :goto_0

    .line 89
    :pswitch_2
    goto :goto_0

    .line 86
    :pswitch_3
    nop

    .line 99
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceStateChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public onHandleClick(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public onHandleUpdateState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setDesireState(Z)V
    .locals 0
    .param p1, "realState"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mDesiredState:Z

    .line 49
    return-void
.end method

.method public setTaskInProcessing(Z)V
    .locals 4
    .param p1, "isInProcessing"    # Z

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTaskInProcessing isInProcessing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->locolLog(ILjava/lang/String;)V

    .line 57
    iput-boolean p1, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskInProcessing:Z

    .line 58
    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mIsTaskInProcessing:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mTimeOutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mDelayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    :goto_0
    return-void
.end method

.method public taskAddition(Z)V
    .locals 0
    .param p1, "desireState"    # Z

    .line 146
    return-void
.end method

.method public timeoutHandle()V
    .locals 0

    .line 162
    return-void
.end method
