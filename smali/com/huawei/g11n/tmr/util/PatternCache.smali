.class public Lcom/huawei/g11n/tmr/util/PatternCache;
.super Ljava/lang/Object;
.source "PatternCache.java"


# static fields
.field private static cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/g11n/tmr/util/PatternCache;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 6
    .param p0, "rName"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;

    const-class v0, Lcom/huawei/g11n/tmr/util/PatternCache;

    monitor-enter v0

    .line 11
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lcom/huawei/g11n/tmr/util/PatternCache;->cache:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 13
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/huawei/g11n/tmr/util/PatternCache;->cache:Ljava/util/HashMap;

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    .local v2, "pattern":Ljava/util/regex/Pattern;
    sget-object v3, Lcom/huawei/g11n/tmr/util/PatternCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    sget-object v3, Lcom/huawei/g11n/tmr/util/PatternCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v3, 0x0

    .line 21
    .local v3, "rs":Lcom/huawei/g11n/tmr/util/Regexs;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/g11n/tmr/util/Regexs;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    .line 22
    goto :goto_0

    :catch_0
    move-exception v4

    .line 23
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {v3, p0}, Lcom/huawei/g11n/tmr/util/Regexs;->getReg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "r":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 28
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    move-object v2, v5

    .line 29
    sget-object v5, Lcom/huawei/g11n/tmr/util/PatternCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .end local v3    # "rs":Lcom/huawei/g11n/tmr/util/Regexs;
    .end local v4    # "r":Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit v0

    return-object v2

    .line 10
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    .end local p0    # "rName":Ljava/lang/String;
    .end local p1    # "regex":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
