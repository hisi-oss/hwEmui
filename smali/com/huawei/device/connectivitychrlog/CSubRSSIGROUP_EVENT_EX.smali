.class public Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubRSSIGROUP_EVENT_EX.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public iADJACENT_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iLAN_RTT_Duration:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iLAN_RTT_Failues:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iLAN_RTT_MAX:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iLAN_RTT_MIN:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iLAN_RTT_Packets:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iSAME_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iTcp_RTT_Duration:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iTcp_RTT_Packets:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iTcp_Resend_Packets:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public ucRSSIGrpIndex:Lcom/huawei/device/connectivitychrlog/LogByte;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->ucRSSIGrpIndex:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iSAME_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iADJACENT_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iTcp_RTT_Duration:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 10
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iTcp_RTT_Packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 11
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iTcp_Resend_Packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 12
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_Duration:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 13
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_Packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 14
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_Failues:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 15
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_MAX:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 16
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_MIN:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "ucRSSIGrpIndex"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "ucRSSIGrpIndex"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->ucRSSIGrpIndex:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iSAME_FREQ_APS"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iSAME_FREQ_APS"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iSAME_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iADJACENT_FREQ_APS"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iADJACENT_FREQ_APS"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iADJACENT_FREQ_APS:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iTcp_RTT_Duration"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iTcp_RTT_Duration"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iTcp_RTT_Duration:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iTcp_RTT_Packets"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iTcp_RTT_Packets"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iTcp_RTT_Packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iTcp_Resend_Packets"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iTcp_Resend_Packets"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iTcp_Resend_Packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_Duration"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_Duration"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_Duration:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_Packets"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_Packets"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_Packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_Failues"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_Failues"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_Failues:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_MAX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_MAX"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_MAX:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->lengthMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_MIN"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->fieldMap:Ljava/util/Map;

    const-string v1, "iLAN_RTT_MIN"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->iLAN_RTT_MIN:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubRSSIGROUP_EVENT_EX;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "RSSIGROUP_EVENT_EX"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 45
    return-void
.end method
