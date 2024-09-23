.class public Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;
.super Lcom/huawei/device/connectivitychrlog/Cenum;
.source "ENCDeviceIDType2.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/Cenum;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;->map:Ljava/util/Map;

    const-string v1, "IMEI"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;->map:Ljava/util/Map;

    const-string v1, "MEID"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v2}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;->setLength(I)V

    .line 9
    return-void
.end method
