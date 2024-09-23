.class public interface abstract Lhuawei/android/security/IHwCCModePlugin;
.super Ljava/lang/Object;
.source "IHwCCModePlugin.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/IHwCCModePlugin$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeCCMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openCCMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
