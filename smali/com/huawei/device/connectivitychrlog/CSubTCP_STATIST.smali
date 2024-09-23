.class public Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubTCP_STATIST.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public idup_ack:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iest_rst:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iout_rst:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irecv_err_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irecv_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iresend_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irtt_duration:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irtt_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public isend_packets:Lcom/huawei/device/connectivitychrlog/LogInt;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 16
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->isend_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->iresend_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->irecv_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->irecv_err_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 10
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->irtt_duration:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 11
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->irtt_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 12
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->iout_rst:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 13
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->iest_rst:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 14
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->idup_ack:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "isend_packets"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "isend_packets"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->isend_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "iresend_packets"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "iresend_packets"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->iresend_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "irecv_packets"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "irecv_packets"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->irecv_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "irecv_err_packets"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "irecv_err_packets"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->irecv_err_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "irtt_duration"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "irtt_duration"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->irtt_duration:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "irtt_packets"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "irtt_packets"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->irtt_packets:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "iout_rst"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "iout_rst"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->iout_rst:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "iest_rst"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "iest_rst"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->iest_rst:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->lengthMap:Ljava/util/Map;

    const-string v1, "idup_ack"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->fieldMap:Ljava/util/Map;

    const-string v1, "idup_ack"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->idup_ack:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubTCP_STATIST;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "TCP_STATIST"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 39
    return-void
.end method
