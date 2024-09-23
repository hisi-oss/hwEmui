.class public Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubRSSIGROUP_EVENT.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public iADJACENT_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iSAME_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public ucRSSIGrpIndex:Lcom/huawei/device/connectivitychrlog/LogByte;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 10
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->ucRSSIGrpIndex:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->iSAME_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->iADJACENT_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 11
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->lengthMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->fieldMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->lengthMap:Ljava/util/Map;

    const-string v1, "ucRSSIGrpIndex"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->fieldMap:Ljava/util/Map;

    const-string v1, "ucRSSIGrpIndex"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->ucRSSIGrpIndex:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->lengthMap:Ljava/util/Map;

    const-string v1, "iSAME_FREQ_APS"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->fieldMap:Ljava/util/Map;

    const-string v1, "iSAME_FREQ_APS"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->iSAME_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->lengthMap:Ljava/util/Map;

    const-string v1, "iADJACENT_FREQ_APS"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->fieldMap:Ljava/util/Map;

    const-string v1, "iADJACENT_FREQ_APS"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->iADJACENT_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "RSSIGROUP_EVENT"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 21
    return-void
.end method
