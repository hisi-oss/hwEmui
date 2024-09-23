.class public Lcom/huawei/g11n/tmr/datetime/detect/Rules;
.super Ljava/lang/Object;
.source "Rules.java"


# instance fields
.field private filterRegex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pastRegex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private subRules:Ljava/util/HashMap;
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$1;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/Rules;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->subRules:Ljava/util/HashMap;

    .line 33
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$2;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/Rules;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->rules:Ljava/util/HashMap;

    .line 165
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/Rules$3;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$3;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/Rules;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->filterRegex:Ljava/util/HashMap;

    .line 185
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/Rules$4;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$4;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/Rules;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->pastRegex:Ljava/util/HashMap;

    .line 5
    return-void
.end method


# virtual methods
.method public getFilterRegex()Ljava/util/HashMap;
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

    .line 207
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->filterRegex:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPastRegex()Ljava/util/HashMap;
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

    .line 211
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->pastRegex:Ljava/util/HashMap;

    return-object v0
.end method

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

    .line 202
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->rules:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSubRules()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules;->subRules:Ljava/util/HashMap;

    return-object v0
.end method
