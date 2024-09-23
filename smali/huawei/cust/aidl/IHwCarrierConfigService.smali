.class public interface abstract Lhuawei/cust/aidl/IHwCarrierConfigService;
.super Ljava/lang/Object;
.source "IHwCarrierConfigService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/cust/aidl/IHwCarrierConfigService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getConfigForSlotId(Ljava/lang/String;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getOpKey(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract querySimMatchRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lhuawei/cust/aidl/SimMatchRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateSimFileInfo(Lhuawei/cust/aidl/SimFileInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
