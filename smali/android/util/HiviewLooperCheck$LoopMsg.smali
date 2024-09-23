.class public final Landroid/util/HiviewLooperCheck$LoopMsg;
.super Ljava/lang/Object;
.source "HiviewLooperCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HiviewLooperCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoopMsg"
.end annotation


# instance fields
.field private cnt:J

.field private max:J

.field private token:Ljava/lang/String;

.field private total:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->cnt:J

    .line 48
    iput-wide v0, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->max:J

    .line 49
    iput-wide v0, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->total:J

    .line 50
    iput-object p1, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->token:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 4
    .param p1, "time"    # J

    .line 54
    iget-wide v0, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->max:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 55
    iput-wide p1, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->max:J

    .line 57
    :cond_0
    iget-wide v0, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->cnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->cnt:J

    .line 58
    iget-wide v0, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->total:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->total:J

    .line 59
    return-void
.end method

.method public dumpJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v0, "jsonMsg":Lorg/json/JSONObject;
    const-string v1, "msg"

    iget-object v2, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "cnt"

    iget-wide v2, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->cnt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    const-string v1, "total"

    iget-wide v2, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->total:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    const-string v1, "max"

    iget-wide v2, p0, Landroid/util/HiviewLooperCheck$LoopMsg;->max:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 67
    return-object v0
.end method

.method public dumpString()Ljava/lang/String;
    .locals 5

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/HiviewLooperCheck$LoopMsg;->dumpJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 74
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 77
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "HiviewLooperCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpString, JSONException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method
