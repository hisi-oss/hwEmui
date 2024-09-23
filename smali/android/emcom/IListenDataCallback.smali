.class public interface abstract Landroid/emcom/IListenDataCallback;
.super Ljava/lang/Object;
.source "IListenDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emcom/IListenDataCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onListenHiComDataChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
