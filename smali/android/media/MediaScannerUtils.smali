.class public Landroid/media/MediaScannerUtils;
.super Lcom/huawei/utils/reflect/EasyInvokeUtils;
.source "MediaScannerUtils.java"


# instance fields
.field private prescan:Lcom/huawei/utils/reflect/MethodObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private processDirectory:Lcom/huawei/utils/reflect/MethodObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/huawei/utils/reflect/EasyInvokeUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrescan()Lcom/huawei/utils/reflect/MethodObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Landroid/media/MediaScannerUtils;->prescan:Lcom/huawei/utils/reflect/MethodObject;

    return-object v0
.end method

.method public getProcessDirectory()Lcom/huawei/utils/reflect/MethodObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroid/media/MediaScannerUtils;->processDirectory:Lcom/huawei/utils/reflect/MethodObject;

    return-object v0
.end method

.method public prescan(Landroid/media/MediaScanner;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "scanner"    # Landroid/media/MediaScanner;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "prescanFiles"    # Z
    .annotation runtime Lcom/huawei/utils/reflect/annotation/InvokeMethod;
        methodObject = "prescan"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/media/MediaScannerUtils;->prescan:Lcom/huawei/utils/reflect/MethodObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/MediaScannerUtils;->invokeMethod(Lcom/huawei/utils/reflect/MethodObject;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public processDirectory(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 3
    .param p1, "scanner"    # Landroid/media/MediaScanner;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerClient;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/InvokeMethod;
        methodObject = "processDirectory"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Landroid/media/MediaScannerUtils;->processDirectory:Lcom/huawei/utils/reflect/MethodObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/MediaScannerUtils;->invokeMethod(Lcom/huawei/utils/reflect/MethodObject;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setPrescan(Lcom/huawei/utils/reflect/MethodObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "prescan":Lcom/huawei/utils/reflect/MethodObject;, "Lcom/huawei/utils/reflect/MethodObject<Ljava/lang/Void;>;"
    iput-object p1, p0, Landroid/media/MediaScannerUtils;->prescan:Lcom/huawei/utils/reflect/MethodObject;

    .line 41
    return-void
.end method

.method public setProcessDirectory(Lcom/huawei/utils/reflect/MethodObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "processDirectory":Lcom/huawei/utils/reflect/MethodObject;, "Lcom/huawei/utils/reflect/MethodObject<Ljava/lang/Void;>;"
    iput-object p1, p0, Landroid/media/MediaScannerUtils;->processDirectory:Lcom/huawei/utils/reflect/MethodObject;

    .line 59
    return-void
.end method
