.class public abstract Lcom/huawei/g11n/tmr/util/Regexs;
.super Ljava/lang/Object;
.source "Regexs.java"


# instance fields
.field private regexs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/util/Regexs;->regexs:Ljava/util/HashMap;

    .line 14
    invoke-virtual {p0}, Lcom/huawei/g11n/tmr/util/Regexs;->init()V

    .line 15
    return-void
.end method


# virtual methods
.method public getReg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/Regexs;->regexs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/Regexs;->regexs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract init()V
.end method

.method protected put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/Regexs;->regexs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/util/Regexs;->regexs:Ljava/util/HashMap;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/huawei/g11n/tmr/util/Regexs;->regexs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
