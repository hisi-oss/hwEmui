.class public interface abstract Lcom/huawei/common/service/IDecisionCallback;
.super Ljava/lang/Object;
.source "IDecisionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/common/service/IDecisionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResult(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
