.class public interface abstract Lcom/huawei/permission/IHsmMaliAppInfoListener;
.super Ljava/lang/Object;
.source "IHsmMaliAppInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/permission/IHsmMaliAppInfoListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMaliAppInfoChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
