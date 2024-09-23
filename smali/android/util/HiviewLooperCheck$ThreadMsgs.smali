.class public final Landroid/util/HiviewLooperCheck$ThreadMsgs;
.super Ljava/lang/Object;
.source "HiviewLooperCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HiviewLooperCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadMsgs"
.end annotation


# instance fields
.field private looperMsgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/HiviewLooperCheck$LoopMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/HiviewLooperCheck$ThreadMsgs;->looperMsgs:Ljava/util/Map;

    .line 87
    iput-object p1, p0, Landroid/util/HiviewLooperCheck$ThreadMsgs;->mThreadName:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public dumpJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v0, "jsonThread":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 101
    .local v1, "jsonMsgArray":Lorg/json/JSONArray;
    const-string v2, "thread"

    iget-object v3, p0, Landroid/util/HiviewLooperCheck$ThreadMsgs;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget-object v2, p0, Landroid/util/HiviewLooperCheck$ThreadMsgs;->looperMsgs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 103
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/HiviewLooperCheck$LoopMsg;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/HiviewLooperCheck$LoopMsg;

    .line 104
    .local v4, "msg":Landroid/util/HiviewLooperCheck$LoopMsg;
    invoke-virtual {v4}, Landroid/util/HiviewLooperCheck$LoopMsg;->dumpJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 105
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/HiviewLooperCheck$LoopMsg;>;"
    .end local v4    # "msg":Landroid/util/HiviewLooperCheck$LoopMsg;
    goto :goto_0

    .line 106
    :cond_0
    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    return-object v0
.end method

.method public dumpString()Ljava/lang/String;
    .locals 5

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/HiviewLooperCheck$ThreadMsgs;->dumpJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 114
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 117
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
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

    .line 118
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/util/HiviewLooperCheck$LoopMsg;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Landroid/util/HiviewLooperCheck$ThreadMsgs;->looperMsgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/HiviewLooperCheck$LoopMsg;

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/util/HiviewLooperCheck$LoopMsg;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/util/HiviewLooperCheck$LoopMsg;

    .line 95
    iget-object v0, p0, Landroid/util/HiviewLooperCheck$ThreadMsgs;->looperMsgs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method
