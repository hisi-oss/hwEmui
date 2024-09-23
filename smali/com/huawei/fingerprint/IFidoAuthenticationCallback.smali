.class public interface abstract Lcom/huawei/fingerprint/IFidoAuthenticationCallback;
.super Ljava/lang/Object;
.source "IFidoAuthenticationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUserVerificationResult(IJ[B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
