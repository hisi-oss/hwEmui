.class public Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;
.super Lcom/huawei/device/connectivitychrlog/Cenum;
.source "ENCDHCP_FAILED.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/Cenum;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "IFC_ENABLE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "IFC_DISABLE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "IFC_RESET_CONNECTIONS"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "DHCPCD_TO_START"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "DHCP_TO_FINISH"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "PROPERTY_WAS_NOT_SET"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "RESULT_WAS"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "DHCP_RENEW_TO_FINISH"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "RENEW_RESULT_PROPERTY_WAS_NOT_SET"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "RENEW_RESULT_WAS"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "CLIENT_CONFIG_IP_FAILED"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "CLIENT_INIT_FAILED"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "STOP_ERROR_WLAN"

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "STOP_ERROR_P2P"

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->map:Ljava/util/Map;

    const-string v1, "CHR_WIFI_DRV_ERROR_DHCP_TX_FAIL"

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, v2}, Lcom/huawei/device/connectivitychrlog/ENCDHCP_FAILED;->setLength(I)V

    .line 22
    return-void
.end method
