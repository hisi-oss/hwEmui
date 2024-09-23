.class public interface abstract Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;
.super Ljava/lang/Object;
.source "IVoiceAuthCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onHeadsetStatusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceiveAuthVoice(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceiveUnAuthVoice(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
