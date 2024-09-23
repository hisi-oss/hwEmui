.class public interface abstract Lcom/huawei/fingerprint/IAuthenticator;
.super Ljava/lang/Object;
.source "IAuthenticator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/fingerprint/IAuthenticator$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelVerifyUser(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract verifyUser(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Lcom/huawei/fingerprint/IAuthenticatorListener;I[BLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
