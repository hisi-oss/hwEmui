.class public interface abstract Landroid/rms/IProcessStateChangeObserver;
.super Ljava/lang/Object;
.source "IProcessStateChangeObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/IProcessStateChangeObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onProcessDiedOverload(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProcessLauncher(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
