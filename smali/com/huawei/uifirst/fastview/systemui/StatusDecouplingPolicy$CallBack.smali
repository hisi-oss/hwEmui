.class public interface abstract Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;
.super Ljava/lang/Object;
.source "StatusDecouplingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallBack"
.end annotation


# virtual methods
.method public abstract associationHandle()V
.end method

.method public abstract dropdownListenHandle(Z)V
.end method

.method public abstract getUIProcessingState()Z
.end method

.method public abstract refreshUIState(Ljava/lang/Object;)V
.end method

.method public abstract setUIProcessingState(Z)V
.end method

.method public abstract stateTransformation(Ljava/lang/Object;)I
.end method

.method public abstract taskAddition(Z)V
.end method

.method public abstract timeoutHandle()V
.end method
