.class public Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;
.super Ljava/lang/Object;
.source "RuleLevel.java"


# instance fields
.field private levels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "locale"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel$1;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->levels:Ljava/util/HashMap;

    .line 15
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;

    invoke-direct {v0, p1}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;-><init>(Ljava/lang/String;)V

    const-string v1, "mark_ShortDateLevel"

    invoke-virtual {v0, v1}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->getWithoutB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "shortDateMark":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    const-string v1, "ymd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x4e2f

    const/4 v4, 0x3

    const/16 v5, 0x4e2e

    const/4 v6, 0x1

    const/16 v7, 0x4e30

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->levels:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->levels:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->levels:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_0

    :cond_0
    const-string v1, "mdy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->levels:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->levels:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->levels:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public compare(II)I
    .locals 4
    .param p1, "l1"    # I
    .param p2, "l2"    # I

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "r":I
    invoke-virtual {p0, p1}, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->getLevels(I)I

    move-result v1

    .line 48
    .local v1, "a":I
    invoke-virtual {p0, p2}, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->getLevels(I)I

    move-result v2

    .line 49
    .local v2, "b":I
    sub-int v3, v2, v1

    .line 50
    .local v3, "c":I
    if-lez v3, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 52
    :cond_0
    if-gez v3, :cond_1

    .line 53
    const/4 v0, -0x1

    .line 54
    :cond_1
    return v0
.end method

.method public getLevels(I)I
    .locals 3
    .param p1, "name"    # I

    .line 59
    const/16 v0, 0x270f

    if-le p1, v0, :cond_0

    const/16 v0, 0x4e20

    if-ge p1, v0, :cond_0

    .line 60
    const/16 v0, 0xa

    .local v0, "baseLevel":I
    :goto_0
    goto :goto_1

    .line 62
    .end local v0    # "baseLevel":I
    :cond_0
    const/16 v0, 0x4e1f

    if-le p1, v0, :cond_1

    const/16 v0, 0x7530

    if-lt p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x752f

    if-le p1, v0, :cond_3

    const v0, 0x9c40

    if-ge p1, v0, :cond_3

    .line 63
    :cond_2
    const/16 v0, 0x14

    goto :goto_0

    .line 65
    :cond_3
    const/16 v0, 0x1e

    .line 67
    .restart local v0    # "baseLevel":I
    :goto_1
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->levels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/detect/RuleLevel;->levels:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    .line 69
    .local v1, "addLevels":I
    :goto_2
    add-int v2, v0, v1

    .line 70
    .local v2, "l1":I
    return v2
.end method
