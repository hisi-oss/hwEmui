.class public interface abstract Lhuawei/android/hwsmartdisplay/IHwSmartDisplayService;
.super Ljava/lang/Object;
.source "IHwSmartDisplayService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hwsmartdisplay/IHwSmartDisplayService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDisplayEffectSupported(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isFeatureSupported(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDisplayEffectParam(I[II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
