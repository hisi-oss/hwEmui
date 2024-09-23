.class public Lcom/huawei/uifirst/fastview/common/StatusDecouplingEmpty;
.super Ljava/lang/Object;
.source "StatusDecouplingEmpty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkTaskAdditionNeeded(I)V
    .locals 0
    .param p1, "deviceActualState"    # I

    .line 49
    return-void
.end method

.method public exitPolicy()V
    .locals 0

    .line 64
    return-void
.end method

.method public getDesireState()Z
    .locals 1

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public getTaskProcessingState()Z
    .locals 1

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public onDeviceStateChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public onHandleClick(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public onHandleUpdateState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public setDesireState(Z)V
    .locals 0
    .param p1, "realState"    # Z

    .line 18
    return-void
.end method

.method public setTaskInProcessing(Z)V
    .locals 0
    .param p1, "isInProcessing"    # Z

    .line 26
    return-void
.end method

.method public taskAddition(Z)V
    .locals 0
    .param p1, "desireState"    # Z

    .line 53
    return-void
.end method

.method public timeoutHandle()V
    .locals 0

    .line 60
    return-void
.end method
