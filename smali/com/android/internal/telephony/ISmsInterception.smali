.class public interface abstract Lcom/android/internal/telephony/ISmsInterception;
.super Ljava/lang/Object;
.source "ISmsInterception.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsInterception$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerListener(Lcom/android/internal/telephony/ISmsInterceptionListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
