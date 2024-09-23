.class public final Lvendor/huawei/hardware/tp/V1_0/ConstS32;
.super Ljava/lang/Object;
.source "ConstS32.java"


# static fields
.field public static final TP_CAP_TEST_RESULT_LEN:I = 0x64

.field public static final TS_CHIP_INFO_LEN:I = 0x80

.field public static final TS_GESTURE_DATA_LEN:I = 0xc

.field public static final TS_ROI_DATA_LEN:I = 0x2f


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

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 28
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 29
    const-string v2, "TS_ROI_DATA_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    or-int/lit8 v1, v1, 0x2f

    .line 32
    :cond_0
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    .line 33
    const-string v2, "TS_CHIP_INFO_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    or-int/lit16 v1, v1, 0x80

    .line 36
    :cond_1
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 37
    const-string v2, "TS_GESTURE_DATA_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    or-int/lit8 v1, v1, 0xc

    .line 40
    :cond_2
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 41
    const-string v2, "TP_CAP_TEST_RESULT_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v1, v1, 0x64

    .line 44
    :cond_3
    if-eq p0, v1, :cond_4

    .line 45
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

    .line 47
    :cond_4
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 10
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    .line 11
    const-string v0, "TS_ROI_DATA_LEN"

    return-object v0

    .line 13
    :cond_0
    const/16 v0, 0x80

    if-ne p0, v0, :cond_1

    .line 14
    const-string v0, "TS_CHIP_INFO_LEN"

    return-object v0

    .line 16
    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    .line 17
    const-string v0, "TS_GESTURE_DATA_LEN"

    return-object v0

    .line 19
    :cond_2
    const/16 v0, 0x64

    if-ne p0, v0, :cond_3

    .line 20
    const-string v0, "TP_CAP_TEST_RESULT_LEN"

    return-object v0

    .line 22
    :cond_3
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
