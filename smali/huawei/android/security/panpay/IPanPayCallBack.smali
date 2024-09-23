.class public interface abstract Lhuawei/android/security/panpay/IPanPayCallBack;
.super Ljava/lang/Object;
.source "IPanPayCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/panpay/IPanPayCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallBack(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
