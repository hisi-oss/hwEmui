.class public interface abstract Lcom/huawei/permission/IHoldNotifier;
.super Ljava/lang/Object;
.source "IHoldNotifier.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/permission/IHoldNotifier$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyResult(Ljava/lang/String;Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
