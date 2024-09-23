.class public Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSegCOMHEAD.java"


# instance fields
.field public enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

.field public enDeviceIDType2:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;

.field public strIMEIorMEID1:Lcom/huawei/device/connectivitychrlog/LogString;

.field public strIMEIorMEID2:Lcom/huawei/device/connectivitychrlog/LogString;

.field public strSerialNum:Lcom/huawei/device/connectivitychrlog/LogString;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 11
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogString;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID1:Lcom/huawei/device/connectivitychrlog/LogString;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType2:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-direct {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID2:Lcom/huawei/device/connectivitychrlog/LogString;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-direct {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strSerialNum:Lcom/huawei/device/connectivitychrlog/LogString;

    .line 12
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->lengthMap:Ljava/util/Map;

    const-string v2, "enDeviceIDType1"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->fieldMap:Ljava/util/Map;

    const-string v2, "enDeviceIDType1"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->lengthMap:Ljava/util/Map;

    const-string v2, "strIMEIorMEID1"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->fieldMap:Ljava/util/Map;

    const-string v2, "strIMEIorMEID1"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID1:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->lengthMap:Ljava/util/Map;

    const-string v2, "enDeviceIDType2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->fieldMap:Ljava/util/Map;

    const-string v2, "enDeviceIDType2"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType2:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->lengthMap:Ljava/util/Map;

    const-string v2, "strIMEIorMEID2"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->fieldMap:Ljava/util/Map;

    const-string v2, "strIMEIorMEID2"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID2:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->lengthMap:Ljava/util/Map;

    const-string v2, "strSerialNum"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "strSerialNum"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strSerialNum:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method
