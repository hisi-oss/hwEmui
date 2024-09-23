.class public interface abstract Landroid/emcom/IHandoffServiceCallback;
.super Ljava/lang/Object;
.source "IHandoffServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emcom/IHandoffServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract batchRegisterHandoff(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract realRegisterHandoff(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
