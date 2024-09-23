.class public Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;
.super Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.source "CSubWL_COUNTERS.java"


# instance fields
.field public enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

.field public imonitorDuration:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public ireset:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxbadcm:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxbadds:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxbadfcs:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxbadplcp:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxbadproto:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxbeaconmbss:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxbeaconobss:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxbyte:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxcfrmmcast:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxcfrmocast:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxcfrmucast:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxcrsglitch:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxdfrmmcast:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxdfrmocast:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxdfrmucastmbss:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxdfrmucastobss:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxfrag:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxframe:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxmfrmmcast:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxmfrmocast:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxmfrmucastmbss:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxmulti:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxnobuf:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxnondata:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public irxstrt:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxallfrm:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxbyte:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxctl:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxerror:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxfail:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxfrag:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxframe:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxfrmsnt:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxnoack:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxnoassoc:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxnobuf:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxnocts:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxphyerr:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxphyerror:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxretrans:Lcom/huawei/device/connectivitychrlog/LogInt;

.field public itxrts:Lcom/huawei/device/connectivitychrlog/LogInt;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    .line 6
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->imonitorDuration:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 7
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxframe:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 8
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxbyte:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 9
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxfail:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 10
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxfrag:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 11
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxfrmsnt:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 12
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxnoack:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 13
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxphyerr:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 14
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxnobuf:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 15
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxnocts:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 16
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxrts:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 17
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxphyerror:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 18
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxnoassoc:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 19
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxctl:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 20
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxallfrm:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 21
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxerror:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 22
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxretrans:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 23
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxframe:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 24
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbyte:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 25
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxfrag:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 26
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadfcs:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 27
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxnobuf:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 28
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadcm:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 29
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadplcp:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 30
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxcrsglitch:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 31
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadproto:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 32
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxmulti:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 33
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxnondata:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 34
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadds:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 35
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->ireset:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 36
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxdfrmocast:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 37
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxmfrmocast:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 38
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxdfrmucastmbss:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 39
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxmfrmucastmbss:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 40
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbeaconmbss:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 41
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxdfrmucastobss:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 42
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbeaconobss:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 43
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxstrt:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 44
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxcfrmocast:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 45
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxcfrmucast:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 46
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxdfrmmcast:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 47
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxmfrmmcast:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 48
    new-instance v0, Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/LogInt;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxcfrmmcast:Lcom/huawei/device/connectivitychrlog/LogInt;

    .line 51
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "enSubEventId"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "imonitorDuration"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "imonitorDuration"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->imonitorDuration:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxframe"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxframe"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxframe:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxbyte"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxbyte"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxbyte:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxfail"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxfail"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxfail:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxfrag"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxfrag"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxfrag:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxfrmsnt"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxfrmsnt"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxfrmsnt:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxnoack"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxnoack"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxnoack:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxphyerr"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxphyerr"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxphyerr:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxnobuf"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxnobuf"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxnobuf:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxnocts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxnocts"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxnocts:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxrts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxrts"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxrts:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxphyerror"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxphyerror"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxphyerror:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxnoassoc"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxnoassoc"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxnoassoc:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxctl"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxctl"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxctl:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxallfrm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxallfrm"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxallfrm:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxerror"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxerror"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxerror:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "itxretrans"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "itxretrans"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->itxretrans:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxframe"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxframe"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxframe:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxbyte"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxbyte"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbyte:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxfrag"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxfrag"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxfrag:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxbadfcs"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxbadfcs"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadfcs:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxnobuf"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxnobuf"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxnobuf:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxbadcm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxbadcm"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadcm:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxbadplcp"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxbadplcp"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadplcp:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxcrsglitch"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxcrsglitch"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxcrsglitch:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxbadproto"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxbadproto"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadproto:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxmulti"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxmulti"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxmulti:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxnondata"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxnondata"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxnondata:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxbadds"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxbadds"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbadds:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "ireset"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "ireset"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->ireset:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxdfrmocast"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxdfrmocast"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxdfrmocast:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxmfrmocast"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxmfrmocast"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxmfrmocast:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxdfrmucastmbss"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxdfrmucastmbss"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxdfrmucastmbss:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxmfrmucastmbss"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxmfrmucastmbss"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxmfrmucastmbss:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxbeaconmbss"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxbeaconmbss"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbeaconmbss:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxdfrmucastobss"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxdfrmucastobss"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxdfrmucastobss:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxbeaconobss"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxbeaconobss"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxbeaconobss:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxstrt"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxstrt"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxstrt:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxcfrmocast"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxcfrmocast"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxcfrmocast:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxcfrmucast"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxcfrmucast"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxcfrmucast:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxdfrmmcast"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxdfrmmcast"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxdfrmmcast:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxmfrmmcast"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxmfrmmcast"

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxmfrmmcast:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->lengthMap:Ljava/util/Map;

    const-string v1, "irxcfrmmcast"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->fieldMap:Ljava/util/Map;

    const-string v1, "irxcfrmmcast"

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->irxcfrmmcast:Lcom/huawei/device/connectivitychrlog/LogInt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/CSubWL_COUNTERS;->enSubEventId:Lcom/huawei/device/connectivitychrlog/ENCSubEventId;

    const-string v1, "WL_COUNTERS"

    invoke-virtual {v0, v1}, Lcom/huawei/device/connectivitychrlog/ENCSubEventId;->setValue(Ljava/lang/String;)V

    .line 141
    return-void
.end method
