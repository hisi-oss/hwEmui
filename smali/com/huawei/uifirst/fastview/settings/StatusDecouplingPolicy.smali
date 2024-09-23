.class public Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;
.super Lcom/huawei/uifirst/fastview/common/StatusDecoupling;
.source "StatusDecouplingPolicy.java"

# interfaces
.implements Lcom/huawei/uifirst/fastview/settings/IStatusDecoupling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;
    }
.end annotation


# instance fields
.field public final mCallback:Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;


# direct methods
.method public constructor <init>(Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;ILjava/lang/String;)V
    .locals 0
    .param p1, "cb"    # Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;
    .param p2, "DelayTime"    # I
    .param p3, "modelName"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;

    .line 15
    iput p2, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mDelayTime:I

    .line 16
    iput-object p3, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mModelName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public exitPolicy()V
    .locals 2

    .line 91
    const-string v0, "exitPolicy !!!"

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->locolLog(ILjava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mDesiredState:Z

    .line 93
    invoke-virtual {p0, v0}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->setTaskInProcessing(Z)V

    .line 94
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 95
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mIsTaskAdditionNeeded:Z

    .line 96
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mUserClickEnable:Z

    .line 97
    return-void
.end method

.method public onDeviceStateChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .line 53
    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mUserClickEnable:Z

    if-nez v0, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x2

    const-string v1, "onDeviceStateChanged"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->locolLog(ILjava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "devState":I
    iget-object v1, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;

    invoke-interface {v1, p1}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;->stateTransformation(Ljava/lang/Object;)I

    move-result v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->checkTaskAdditionNeeded(I)V

    .line 60
    iget-boolean v1, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mIsTaskAdditionNeeded:Z

    if-eqz v1, :cond_1

    .line 61
    iget-boolean v1, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mDesiredState:Z

    invoke-virtual {p0, v1}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->taskAddition(Z)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->setTaskInProcessing(Z)V

    .line 64
    :cond_1
    return-void
.end method

.method public onHandleClick(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mUserClickEnable:Z

    .line 29
    iget-object v1, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;

    invoke-interface {v1, p1}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;->stateTransformation(Ljava/lang/Object;)I

    move-result v1

    .line 30
    .local v1, "newState":I
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 44
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 45
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mDesiredState:Z

    goto :goto_0

    .line 40
    :pswitch_0
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 41
    iget-boolean v2, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mDesiredState:Z

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mDesiredState:Z

    .line 42
    goto :goto_0

    .line 36
    :pswitch_1
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 37
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mDesiredState:Z

    .line 38
    goto :goto_0

    .line 32
    :pswitch_2
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 33
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mDesiredState:Z

    .line 34
    nop

    .line 48
    :goto_0
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleClick  newState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mDesiredState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mDesiredState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUserClickSkipped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mUserClickSkipped:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->locolLog(ILjava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->setTaskInProcessing(Z)V

    .line 50
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHandleUpdateState(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleUpdateState arg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->locolLog(ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public taskAddition(Z)V
    .locals 1
    .param p1, "desireState"    # Z

    .line 77
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;

    invoke-interface {v0, p1}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;->taskAddition(Z)V

    .line 78
    return-void
.end method

.method public timeoutHandle()V
    .locals 1

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mIsTaskInProcessing:Z

    .line 86
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;

    invoke-interface {v0}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;->timeoutHandle()V

    .line 87
    return-void
.end method
