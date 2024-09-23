.class public interface abstract Lcom/huawei/fingerprint/IAuthenticatorListener;
.super Ljava/lang/Object;
.source "IAuthenticatorListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/fingerprint/IAuthenticatorListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUserVerificationResult(I[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
