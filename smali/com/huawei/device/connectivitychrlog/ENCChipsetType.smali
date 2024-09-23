.class public Lcom/huawei/device/connectivitychrlog/ENCChipsetType;
.super Lcom/huawei/device/connectivitychrlog/Cenum;
.source "ENCChipsetType.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/Cenum;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCChipsetType;->map:Ljava/util/Map;

    const-string v1, "QUALCOMM"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCChipsetType;->map:Ljava/util/Map;

    const-string v1, "HISILICON"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCChipsetType;->map:Ljava/util/Map;

    const-string v1, "MTK"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCChipsetType;->map:Ljava/util/Map;

    const-string v1, "INFINEON"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCChipsetType;->map:Ljava/util/Map;

    const-string v1, "SPREADTRUM"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v2}, Lcom/huawei/device/connectivitychrlog/ENCChipsetType;->setLength(I)V

    .line 12
    return-void
.end method
