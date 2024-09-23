.class Landroid/hishow/HwHiShowManager$1;
.super Landroid/util/Singleton;
.source "HwHiShowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hishow/HwHiShowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/hishow/IHwHiShowManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/hishow/IHwHiShowManager;
    .locals 5

    .line 23
    const-string v0, "HwHiShowManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 24
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hishow/IHwHiShowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hishow/IHwHiShowManager;

    move-result-object v1

    .line 25
    .local v1, "hsm":Landroid/hishow/IHwHiShowManager;
    const-string v2, "HwHiShowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GS:create hsm is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-object v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Landroid/hishow/HwHiShowManager$1;->create()Landroid/hishow/IHwHiShowManager;

    move-result-object v0

    return-object v0
.end method
