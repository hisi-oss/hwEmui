.class public Lcom/huawei/device/connectivitychrlog/CSubBTStatus;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubBTStatus.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public ucBTConnState:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucBTState:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucConnectedDevicesCnt:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucisA2DPPlaying:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucisAudioOn:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucisOPP:Lcom/huawei/device/connectivitychrlog/LogByte;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 13
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucBTState:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucBTConnState:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucConnectedDevicesCnt:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucisAudioOn:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 10
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucisA2DPPlaying:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 11
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucisOPP:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->lengthMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->fieldMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->lengthMap:Ljava/util/Map;

    const-string v1, "ucBTState"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->fieldMap:Ljava/util/Map;

    const-string v1, "ucBTState"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucBTState:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->lengthMap:Ljava/util/Map;

    const-string v1, "ucBTConnState"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->fieldMap:Ljava/util/Map;

    const-string v1, "ucBTConnState"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucBTConnState:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->lengthMap:Ljava/util/Map;

    const-string v1, "ucConnectedDevicesCnt"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->fieldMap:Ljava/util/Map;

    const-string v1, "ucConnectedDevicesCnt"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucConnectedDevicesCnt:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->lengthMap:Ljava/util/Map;

    const-string v1, "ucisAudioOn"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->fieldMap:Ljava/util/Map;

    const-string v1, "ucisAudioOn"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucisAudioOn:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->lengthMap:Ljava/util/Map;

    const-string v1, "ucisA2DPPlaying"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->fieldMap:Ljava/util/Map;

    const-string v1, "ucisA2DPPlaying"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucisA2DPPlaying:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->lengthMap:Ljava/util/Map;

    const-string v1, "ucisOPP"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->fieldMap:Ljava/util/Map;

    const-string v1, "ucisOPP"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->ucisOPP:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubBTStatus;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "BTStatus"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 30
    return-void
.end method
