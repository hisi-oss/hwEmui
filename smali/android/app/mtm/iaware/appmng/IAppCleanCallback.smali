.class public interface abstract Landroid/app/mtm/iaware/appmng/IAppCleanCallback;
.super Ljava/lang/Object;
.source "IAppCleanCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/mtm/iaware/appmng/IAppCleanCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCleanFinish(Landroid/app/mtm/iaware/appmng/AppCleanParam;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
