.class public Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSegFILEHEAD.java"


# instance fields
.field public enChipsetType:Lcom/huawei/device/connectivitychrlog/ENCChipsetType;

.field private strProductName:Lcom/huawei/device/connectivitychrlog/LogString;

.field public strSoftwareVersion:Lcom/huawei/device/connectivitychrlog/LogString;

.field public strnoExplain:Lcom/huawei/device/connectivitychrlog/LogString;

.field public ucDay:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucHour:Lcom/huawei/device/connectivitychrlog/LogByte;

.field private ucLogVersion:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucMinute:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucMonth:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucReportType:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public ucSecond:Lcom/huawei/device/connectivitychrlog/LogByte;

.field public usChecksum:Lcom/huawei/device/connectivitychrlog/LogShort;

.field public usTimeZone:Lcom/huawei/device/connectivitychrlog/LogShort;

.field public usYear:Lcom/huawei/device/connectivitychrlog/LogShort;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 20
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogString;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->strProductName:Lcom/huawei/device/connectivitychrlog/LogString;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucLogVersion:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogString;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Lcom/huawei/device/connectivitychrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->strSoftwareVersion:Lcom/huawei/device/connectivitychrlog/LogString;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCChipsetType;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCChipsetType;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->enChipsetType:Lcom/huawei/device/connectivitychrlog/ENCChipsetType;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->usYear:Lcom/huawei/device/connectivitychrlog/LogShort;

    .line 10
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucMonth:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 11
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucDay:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 12
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucHour:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 13
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucMinute:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 14
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucSecond:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 15
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->usTimeZone:Lcom/huawei/device/connectivitychrlog/LogShort;

    .line 16
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogShort;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->usChecksum:Lcom/huawei/device/connectivitychrlog/LogShort;

    .line 17
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogByte;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucReportType:Lcom/huawei/device/connectivitychrlog/LogByte;

    .line 18
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogString;

    const/16 v3, 0x64

    invoke-direct {v0, v3}, Lcom/huawei/device/connectivitychrlog/LogString;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->strnoExplain:Lcom/huawei/device/connectivitychrlog/LogString;

    .line 21
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v4, "strProductName"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "strProductName"

    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->strProductName:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "ucLogVersion"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "ucLogVersion"

    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucLogVersion:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "strSoftwareVersion"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "strSoftwareVersion"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->strSoftwareVersion:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "enChipsetType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "enChipsetType"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->enChipsetType:Lcom/huawei/device/connectivitychrlog/ENCChipsetType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "usYear"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "usYear"

    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->usYear:Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "ucMonth"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "ucMonth"

    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucMonth:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "ucDay"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "ucDay"

    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucDay:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "ucHour"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "ucHour"

    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucHour:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "ucMinute"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "ucMinute"

    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucMinute:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "ucSecond"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "ucSecond"

    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucSecond:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "usTimeZone"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "usTimeZone"

    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->usTimeZone:Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "usChecksum"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "usChecksum"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->usChecksum:Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "ucReportType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "ucReportType"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucReportType:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->lengthMap:Ljava/util/Map;

    const-string v1, "strnoExplain"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->fieldMap:Ljava/util/Map;

    const-string v1, "strnoExplain"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->strnoExplain:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->strProductName:Lcom/huawei/device/connectivitychrlog/LogString;

    const-string v1, "EMUI51"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucLogVersion:Lcom/huawei/device/connectivitychrlog/LogByte;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/LogByte;->setValue(I)V

    .line 52
    return-void
.end method
