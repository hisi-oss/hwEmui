.class public interface abstract Landroid/cover/ICoverViewDelegate;
.super Ljava/lang/Object;
.source "ICoverViewDelegate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/cover/ICoverViewDelegate$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCoverScreenWindow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeCoverScreenWindow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
