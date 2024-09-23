.class public interface abstract Lcom/huawei/fingerprint/Authenticator$AuthenticatorListener;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/fingerprint/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthenticatorListener"
.end annotation


# virtual methods
.method public abstract onIsUserIDValidResult(Z)V
.end method

.method public abstract onUserVerificationResult(I[B[B)V
.end method
