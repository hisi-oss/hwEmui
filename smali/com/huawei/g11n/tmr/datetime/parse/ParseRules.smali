.class public Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;
.super Ljava/lang/Object;
.source "ParseRules.java"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules$1;-><init>(Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;->rules:Ljava/util/HashMap;

    .line 9
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

    .line 70
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/parse/ParseRules;->rules:Ljava/util/HashMap;

    return-object v0
.end method
