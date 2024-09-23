.class public Lcom/huawei/device/connectivitychrlog/CSubCellID;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubCellID.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public iCID:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iEARFCN:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iLAC:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iRSSI:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public strMCC:Lcom/huawei/device/connectivitychrlog/LogString;

.field public strMNC:Lcom/huawei/device/connectivitychrlog/LogString;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 13
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->iCID:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->iLAC:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogString;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->strMCC:Lcom/huawei/device/connectivitychrlog/LogString;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-direct {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->strMNC:Lcom/huawei/device/connectivitychrlog/LogString;

    .line 10
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->iEARFCN:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 11
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->iRSSI:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->lengthMap:Ljava/util/Map;

    const-string v2, "enSubEventId"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->fieldMap:Ljava/util/Map;

    const-string v2, "enSubEventId"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->lengthMap:Ljava/util/Map;

    const-string v2, "iCID"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->fieldMap:Ljava/util/Map;

    const-string v2, "iCID"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->iCID:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->lengthMap:Ljava/util/Map;

    const-string v2, "iLAC"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->fieldMap:Ljava/util/Map;

    const-string v2, "iLAC"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->iLAC:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->lengthMap:Ljava/util/Map;

    const-string v2, "strMCC"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->fieldMap:Ljava/util/Map;

    const-string v2, "strMCC"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->strMCC:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->lengthMap:Ljava/util/Map;

    const-string v2, "strMNC"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->fieldMap:Ljava/util/Map;

    const-string v1, "strMNC"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->strMNC:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->lengthMap:Ljava/util/Map;

    const-string v1, "iEARFCN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->fieldMap:Ljava/util/Map;

    const-string v1, "iEARFCN"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->iEARFCN:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->lengthMap:Ljava/util/Map;

    const-string v1, "iRSSI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->fieldMap:Ljava/util/Map;

    const-string v1, "iRSSI"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->iRSSI:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubCellID;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "CellID"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 30
    return-void
.end method
