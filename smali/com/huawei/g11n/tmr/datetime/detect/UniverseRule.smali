.class public Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;
.super Ljava/lang/Object;
.source "UniverseRule.java"


# instance fields
.field private rules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subRulesMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;->subRulesMaps:Ljava/util/HashMap;

    .line 68
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$2;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;->rules:Ljava/util/HashMap;

    .line 5
    return-void
.end method


# virtual methods
.method public getRules()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;->rules:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSubRulesMaps()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;->subRulesMaps:Ljava/util/HashMap;

    return-object v0
.end method
