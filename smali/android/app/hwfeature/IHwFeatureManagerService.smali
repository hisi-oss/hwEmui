.class public interface abstract Landroid/app/hwfeature/IHwFeatureManagerService;
.super Ljava/lang/Object;
.source "IHwFeatureManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/hwfeature/IHwFeatureManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestPermission(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
