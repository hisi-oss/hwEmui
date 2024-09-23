.class public Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubTRAFFIC_GROUND.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public iback_recv_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iback_send_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public ifore_recv_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public ifore_send_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 11
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->iback_send_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->iback_recv_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->ifore_send_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->ifore_recv_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 12
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->lengthMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->fieldMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->lengthMap:Ljava/util/Map;

    const-string v1, "iback_send_bytes"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->fieldMap:Ljava/util/Map;

    const-string v1, "iback_send_bytes"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->iback_send_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->lengthMap:Ljava/util/Map;

    const-string v1, "iback_recv_bytes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->fieldMap:Ljava/util/Map;

    const-string v1, "iback_recv_bytes"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->iback_recv_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->lengthMap:Ljava/util/Map;

    const-string v1, "ifore_send_bytes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->fieldMap:Ljava/util/Map;

    const-string v1, "ifore_send_bytes"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->ifore_send_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->lengthMap:Ljava/util/Map;

    const-string v1, "ifore_recv_bytes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->fieldMap:Ljava/util/Map;

    const-string v1, "ifore_recv_bytes"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->ifore_recv_bytes:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTRAFFIC_GROUND;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "TRAFFIC_GROUND"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 24
    return-void
.end method
