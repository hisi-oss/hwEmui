.class public Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;
.super Lcom/huawei/uifirst/fastview/common/StatusDecoupling;
.source "StatusDecouplingPolicy.java"

# interfaces
.implements Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;
    }
.end annotation


# instance fields
.field public final mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

.field private mListeningSkipped:Z


# direct methods
.method public constructor <init>(Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;ILjava/lang/String;)V
    .locals 1
    .param p1, "cb"    # Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;
    .param p2, "DelayTime"    # I
    .param p3, "modelName"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mListeningSkipped:Z

    .line 14
    iput-object p1, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    .line 15
    iput p2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mDelayTime:I

    .line 16
    iput-object p3, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mModelName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public associationHandle()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    invoke-interface {v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->associationHandle()V

    .line 103
    return-void
.end method

.method public exitPolicy()V
    .locals 2

    .line 89
    const-string v0, "exitPolicy !!!"

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->locolLog(ILjava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mDesiredState:Z

    .line 91
    invoke-virtual {p0, v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->setTaskInProcessing(Z)V

    .line 92
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 93
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mIsTaskAdditionNeeded:Z

    .line 94
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mListeningSkipped:Z

    .line 95
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickEnable:Z

    .line 96
    return-void
.end method

.method public getUIProcessingState()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    invoke-interface {v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->getUIProcessingState()Z

    move-result v0

    return v0
.end method

.method public hasListeningCallbackRemoveSkipped()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mListeningSkipped:Z

    return v0
.end method

.method public isListeningCallbackRemoveSkipNeeded()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickSkipped:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mIsTaskInProcessing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mListeningSkipped:Z

    .line 123
    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mListeningSkipped:Z

    return v0
.end method

.method public onDeviceStateChanged(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .line 52
    iget-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickEnable:Z

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x2

    const-string v1, "onDeviceStateChanged"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->locolLog(ILjava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "devState":I
    iget-object v1, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    invoke-interface {v1, p1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->stateTransformation(Ljava/lang/Object;)I

    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->checkTaskAdditionNeeded(I)V

    .line 59
    iget-boolean v1, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mIsTaskAdditionNeeded:Z

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    iget-boolean v2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mDesiredState:Z

    invoke-interface {v1, v2}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->taskAddition(Z)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->setTaskInProcessing(Z)V

    .line 63
    :cond_1
    return-void
.end method

.method public onHandleClick(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg"    # Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickEnable:Z

    .line 28
    iget-object v1, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    invoke-interface {v1, p1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->stateTransformation(Ljava/lang/Object;)I

    move-result v1

    .line 29
    .local v1, "newState":I
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 43
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 44
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mDesiredState:Z

    goto :goto_0

    .line 39
    :pswitch_0
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 40
    iget-boolean v2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mDesiredState:Z

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mDesiredState:Z

    .line 41
    goto :goto_0

    .line 35
    :pswitch_1
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 36
    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mDesiredState:Z

    .line 37
    goto :goto_0

    .line 31
    :pswitch_2
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickSkipped:Z

    .line 32
    iput-boolean v2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mDesiredState:Z

    .line 33
    nop

    .line 47
    :goto_0
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleClick  newState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mDesiredState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mDesiredState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUserClickSkipped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mUserClickSkipped:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->locolLog(ILjava/lang/String;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->setTaskInProcessing(Z)V

    .line 49
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

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleUpdateState arg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->locolLog(ILjava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    invoke-virtual {p0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->hasListeningCallbackRemoveSkipped()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mIsTaskInProcessing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->dropdownListenHandle(Z)V

    .line 71
    return-void
.end method

.method public refreshUIState(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg_state"    # Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    invoke-interface {v0, p1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->refreshUIState(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public resetListeningCallbackRemoveState()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mListeningSkipped:Z

    .line 131
    return-void
.end method

.method public setUIProcessingState(Z)V
    .locals 1
    .param p1, "uiProcessingState"    # Z

    .line 114
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    invoke-interface {v0, p1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->setUIProcessingState(Z)V

    .line 115
    return-void
.end method

.method public taskAddition(Z)V
    .locals 1
    .param p1, "desireState"    # Z

    .line 76
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    invoke-interface {v0, p1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->taskAddition(Z)V

    .line 77
    return-void
.end method

.method public timeoutHandle()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;->mCallback:Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;

    invoke-interface {v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;->timeoutHandle()V

    .line 85
    return-void
.end method
