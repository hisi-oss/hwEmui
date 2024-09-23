.class public Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubNET_CFG.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public iIpMask:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public iIp_Type:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public strProxySettingInfo:Lcom/huawei/device/connectivitychrlog/LogString;

.field public ucProxySettings:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucVPN:Lcom/huawei/device/connectivitychrlog/LogByte;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 12
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->ucProxySettings:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogString;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->strProxySettingInfo:Lcom/huawei/device/connectivitychrlog/LogString;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->ucVPN:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->iIpMask:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 10
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->iIp_Type:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 13
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->lengthMap:Ljava/util/Map;

    const-string v2, "enSubEventId"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->fieldMap:Ljava/util/Map;

    const-string v2, "enSubEventId"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->lengthMap:Ljava/util/Map;

    const-string v2, "ucProxySettings"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->fieldMap:Ljava/util/Map;

    const-string v2, "ucProxySettings"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->ucProxySettings:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->lengthMap:Ljava/util/Map;

    const-string v2, "strProxySettingInfo"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->fieldMap:Ljava/util/Map;

    const-string v1, "strProxySettingInfo"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->strProxySettingInfo:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->lengthMap:Ljava/util/Map;

    const-string v1, "ucVPN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->fieldMap:Ljava/util/Map;

    const-string v1, "ucVPN"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->ucVPN:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->lengthMap:Ljava/util/Map;

    const-string v1, "iIpMask"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->fieldMap:Ljava/util/Map;

    const-string v1, "iIpMask"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->iIpMask:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->lengthMap:Ljava/util/Map;

    const-string v1, "iIp_Type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->fieldMap:Ljava/util/Map;

    const-string v1, "iIp_Type"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->iIp_Type:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubNET_CFG;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "NET_CFG"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 27
    return-void
.end method
