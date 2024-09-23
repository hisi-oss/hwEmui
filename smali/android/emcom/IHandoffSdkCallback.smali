.class public interface abstract Landroid/emcom/IHandoffSdkCallback;
.super Ljava/lang/Object;
.source "IHandoffSdkCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emcom/IHandoffSdkCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract handoffDataEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handoffStateChg(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
