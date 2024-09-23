.class public Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubAssoc_Chr_Event.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public enWifiConnectAssocFailedReason:Lcom/huawei/device/connectivitychrlog/ENCWifiConnectAssocFailedReason;

.field public iAP_RSSI:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public tmTimeStamp:Lcom/huawei/device/connectivitychrlog/LogDate;

.field public ucIsOnScreen:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public usAP_channel:Lcom/huawei/device/connectivitychrlog/LogShort;

.field public usSubErrorCode:Lcom/huawei/device/connectivitychrlog/LogShort;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 13
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogDate;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogDate;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->tmTimeStamp:Lcom/huawei/device/connectivitychrlog/LogDate;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCWifiConnectAssocFailedReason;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCWifiConnectAssocFailedReason;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->enWifiConnectAssocFailedReason:Lcom/huawei/device/connectivitychrlog/ENCWifiConnectAssocFailedReason;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->usSubErrorCode:Lcom/huawei/device/connectivitychrlog/LogShort;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->usAP_channel:Lcom/huawei/device/connectivitychrlog/LogShort;

    .line 10
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->iAP_RSSI:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 11
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->ucIsOnScreen:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->lengthMap:Ljava/util/Map;

    const-string v2, "enSubEventId"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->fieldMap:Ljava/util/Map;

    const-string v2, "enSubEventId"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->lengthMap:Ljava/util/Map;

    const-string v2, "tmTimeStamp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->fieldMap:Ljava/util/Map;

    const-string v1, "tmTimeStamp"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->tmTimeStamp:Lcom/huawei/device/connectivitychrlog/LogDate;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->lengthMap:Ljava/util/Map;

    const-string v1, "enWifiConnectAssocFailedReason"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->fieldMap:Ljava/util/Map;

    const-string v1, "enWifiConnectAssocFailedReason"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->enWifiConnectAssocFailedReason:Lcom/huawei/device/connectivitychrlog/ENCWifiConnectAssocFailedReason;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->lengthMap:Ljava/util/Map;

    const-string v1, "usSubErrorCode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->fieldMap:Ljava/util/Map;

    const-string v1, "usSubErrorCode"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->usSubErrorCode:Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->lengthMap:Ljava/util/Map;

    const-string v1, "usAP_channel"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->fieldMap:Ljava/util/Map;

    const-string v1, "usAP_channel"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->usAP_channel:Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->lengthMap:Ljava/util/Map;

    const-string v1, "iAP_RSSI"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->fieldMap:Ljava/util/Map;

    const-string v1, "iAP_RSSI"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->iAP_RSSI:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->lengthMap:Ljava/util/Map;

    const-string v1, "ucIsOnScreen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->fieldMap:Ljava/util/Map;

    const-string v1, "ucIsOnScreen"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->ucIsOnScreen:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubAssoc_Chr_Event;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "Assoc_Chr_Event"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 30
    return-void
.end method
