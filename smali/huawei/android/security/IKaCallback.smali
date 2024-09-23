.class public interface abstract Lhuawei/android/security/IKaCallback;
.super Ljava/lang/Object;
.source "IKaCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/IKaCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onKaError(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onKaResult(JI[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
