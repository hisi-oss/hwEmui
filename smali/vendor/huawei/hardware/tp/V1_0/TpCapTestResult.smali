.class public final Lvendor/huawei/hardware/tp/V1_0/TpCapTestResult;
.super Ljava/lang/Object;
.source "TpCapTestResult.java"


# static fields
.field public static final TP_INITIAL_FAIL:I = 0x4

.field public static final TP_PANEL_REASON:I = 0x2

.field public static final TP_SOFTWARE_REASON:I = 0x3

.field public static final TP_TEST_FAIL:I = 0x1

.field public static final TP_TEST_PASS:I = 0x0

.field public static final TP_UNKNOWN_FAIL:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 36
    .local v1, "flipped":I
    const-string v2, "TP_TEST_PASS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 38
    const-string v2, "TP_TEST_FAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    or-int/lit8 v1, v1, 0x1

    .line 41
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 42
    const-string v2, "TP_PANEL_REASON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    or-int/lit8 v1, v1, 0x2

    .line 45
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 46
    const-string v2, "TP_SOFTWARE_REASON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v1, v1, 0x3

    .line 49
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 50
    const-string v2, "TP_INITIAL_FAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v1, v1, 0x4

    .line 53
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 54
    const-string v2, "TP_UNKNOWN_FAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0x5

    .line 57
    :cond_4
    if-eq p0, v1, :cond_5

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_5
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 12
    if-nez p0, :cond_0

    .line 13
    const-string v0, "TP_TEST_PASS"

    return-object v0

    .line 15
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 16
    const-string v0, "TP_TEST_FAIL"

    return-object v0

    .line 18
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 19
    const-string v0, "TP_PANEL_REASON"

    return-object v0

    .line 21
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 22
    const-string v0, "TP_SOFTWARE_REASON"

    return-object v0

    .line 24
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 25
    const-string v0, "TP_INITIAL_FAIL"

    return-object v0

    .line 27
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 28
    const-string v0, "TP_UNKNOWN_FAIL"

    return-object v0

    .line 30
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
