.class Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx$1;
.super Landroid/util/Singleton;
.source "HwDisplayManagerGlobalEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/huawei/android/hardware/display/IHwDisplayManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;


# direct methods
.method constructor <init>(Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;

    .line 28
    iput-object p1, p0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx$1;->this$0:Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/huawei/android/hardware/display/IHwDisplayManager;
    .locals 3

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx$1;->this$0:Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;

    iget-object v0, v0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->mDmg:Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;

    invoke-interface {v0}, Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;->getService()Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    .line 33
    .local v0, "idm":Landroid/hardware/display/IDisplayManager;
    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getHwInnerService()Landroid/os/IBinder;

    move-result-object v1

    .line 34
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/huawei/android/hardware/display/IHwDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/hardware/display/IHwDisplayManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 35
    .end local v0    # "idm":Landroid/hardware/display/IDisplayManager;
    .end local v1    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx$1;->create()Lcom/huawei/android/hardware/display/IHwDisplayManager;

    move-result-object v0

    return-object v0
.end method
