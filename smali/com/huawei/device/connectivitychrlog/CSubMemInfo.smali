.class public Lcom/huawei/device/connectivitychrlog/CSubMemInfo;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubMemInfo.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public iMemLoad:Lcom/huawei/device/connectivitychrlog/LogInt;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubMemInfo;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubMemInfo;->iMemLoad:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 9
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubMemInfo;->lengthMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubMemInfo;->fieldMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubMemInfo;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubMemInfo;->lengthMap:Ljava/util/Map;

    const-string v1, "iMemLoad"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubMemInfo;->fieldMap:Ljava/util/Map;

    const-string v1, "iMemLoad"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubMemInfo;->iMemLoad:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubMemInfo;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "MemInfo"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 15
    return-void
.end method
