.class public abstract Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;
.super Ljava/lang/Object;
.source "LocaleDigit.java"


# instance fields
.field protected pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract convert(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public isDigit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "r":Z
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/digit/LocaleDigit;->pattern:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 29
    :cond_0
    return v0
.end method
