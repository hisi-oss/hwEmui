.class public Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingDummy;
.super Lcom/huawei/uifirst/fastview/common/StatusDecouplingEmpty;
.source "StatusDecouplingDummy.java"

# interfaces
.implements Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/huawei/uifirst/fastview/common/StatusDecouplingEmpty;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public associationHandle()V
    .locals 0

    .line 36
    return-void
.end method

.method public getUIProcessingState()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public hasListeningCallbackRemoveSkipped()Z
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isListeningCallbackRemoveSkipNeeded()Z
    .locals 1

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public refreshUIState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg_state"    # Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public resetListeningCallbackRemoveState()V
    .locals 0

    .line 29
    return-void
.end method

.method public setUIProcessingState(Z)V
    .locals 0
    .param p1, "uiProcessingState"    # Z

    .line 48
    return-void
.end method
