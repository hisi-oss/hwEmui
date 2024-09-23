.class public Lcom/huawei/device/connectivitychrlog/ENCWifiConnectAssocFailedReason;
.super Lcom/huawei/device/connectivitychrlog/Cenum;
.source "ENCWifiConnectAssocFailedReason.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/Cenum;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCWifiConnectAssocFailedReason;->map:Ljava/util/Map;

    const-string v1, "CHR_WIFI_DRV_ERROR_ASSOC_TIMEOUT"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v2}, Lcom/huawei/device/connectivitychrlog/ENCWifiConnectAssocFailedReason;->setLength(I)V

    .line 8
    return-void
.end method
