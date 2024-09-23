.class public interface abstract Lcom/huawei/android/bastet/IBastetListener;
.super Ljava/lang/Object;
.source "IBastetListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/bastet/IBastetListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onProxyIndicateMessage(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
