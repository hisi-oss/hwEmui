.class public Landroid/net/wifi/p2p/WifiP2pManagerUtils;
.super Lcom/huawei/utils/reflect/EasyInvokeUtils;
.source "WifiP2pManagerUtils.java"


# instance fields
.field putListener:Lcom/huawei/utils/reflect/MethodObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/huawei/utils/reflect/EasyInvokeUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public putListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I
    .locals 3
    .param p1, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Ljava/lang/Object;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/InvokeMethod;
        methodObject = "putListener"
    .end annotation

    .line 19
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManagerUtils;->putListener:Lcom/huawei/utils/reflect/MethodObject;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pManagerUtils;->invokeMethod(Lcom/huawei/utils/reflect/MethodObject;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
