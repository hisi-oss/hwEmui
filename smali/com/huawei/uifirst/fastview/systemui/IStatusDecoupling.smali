.class public interface abstract Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;
.super Ljava/lang/Object;
.source "IStatusDecoupling.java"


# virtual methods
.method public abstract associationHandle()V
.end method

.method public abstract checkTaskAdditionNeeded(I)V
.end method

.method public abstract exitPolicy()V
.end method

.method public abstract getDesireState()Z
.end method

.method public abstract getTaskProcessingState()Z
.end method

.method public abstract getUIProcessingState()Z
.end method

.method public abstract hasListeningCallbackRemoveSkipped()Z
.end method

.method public abstract isListeningCallbackRemoveSkipNeeded()Z
.end method

.method public abstract onDeviceStateChanged(Ljava/lang/Object;)V
.end method

.method public abstract onHandleClick(Ljava/lang/Object;)V
.end method

.method public abstract onHandleUpdateState(Ljava/lang/Object;)V
.end method

.method public abstract refreshUIState(Ljava/lang/Object;)V
.end method

.method public abstract resetListeningCallbackRemoveState()V
.end method

.method public abstract setDesireState(Z)V
.end method

.method public abstract setTaskInProcessing(Z)V
.end method

.method public abstract setUIProcessingState(Z)V
.end method

.method public abstract taskAddition(Z)V
.end method

.method public abstract timeoutHandle()V
.end method
