.class public Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;
.super Ljava/lang/Object;
.source "ConstantsUtils.java"


# static fields
.field public static final AI:Ljava/lang/String; = "aite"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DATE1:Ljava/lang/String; = "date1"

.field public static final DATE2:Ljava/lang/String; = "date2"

.field public static final DP:Ljava/lang/String; = "dateperiod"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final EXP:Ljava/lang/String; = "exp"

.field public static final FLOAT_1:Ljava/lang/String; = "float_1"

.field public static final FLOAT_2:Ljava/lang/String; = "float_2"

.field public static final SAME_NUM:Ljava/lang/String; = "samenum"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final YEAR_PERIOD:Ljava/lang/String; = "yearperiod"


# instance fields
.field private map:Ljava/util/HashMap;
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
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 1

    .line 31
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils$1;-><init>(Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->map:Ljava/util/HashMap;

    .line 69
    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/ConstantsUtils;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 75
    :cond_0
    const-string v0, ""

    return-object v0
.end method
