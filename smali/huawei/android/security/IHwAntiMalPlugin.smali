.class public interface abstract Lhuawei/android/security/IHwAntiMalPlugin;
.super Ljava/lang/Object;
.source "IHwAntiMalPlugin.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/IHwAntiMalPlugin$Stub;
    }
.end annotation


# virtual methods
.method public abstract isAntiMalProtectionOn(Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
