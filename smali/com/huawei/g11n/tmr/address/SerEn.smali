.class Lcom/huawei/g11n/tmr/address/SerEn;
.super Ljava/lang/Object;
.source "SerEn.java"


# static fields
.field private static final TYPE_BUILDING:I = 0x1

.field private static final TYPE_BUILDING2:I = 0x2

.field private static final TYPE_CITY:I


# instance fields
.field private location:Ljava/lang/String;

.field match_index_2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private not:Ljava/lang/String;

.field private p1346:Ljava/util/regex/Pattern;

.field private p28:Ljava/util/regex/Pattern;

.field private p2s:Ljava/util/regex/Pattern;

.field private p52:Ljava/util/regex/Pattern;

.field private p52_sub:Ljava/util/regex/Pattern;

.field private p52s:Ljava/util/regex/Pattern;

.field private pCode_a:Ljava/util/regex/Pattern;

.field pComma:Ljava/util/regex/Pattern;

.field pCut:Ljava/util/regex/Pattern;

.field private pDir:Ljava/util/regex/Pattern;

.field pLocation:Ljava/util/regex/Pattern;

.field pNo:Ljava/util/regex/Pattern;

.field pNot_1:Ljava/util/regex/Pattern;

.field pNot_2:Ljava/util/regex/Pattern;

.field private pNum:Ljava/util/regex/Pattern;

.field pPre_city:Ljava/util/regex/Pattern;

.field pPre_uni:Ljava/util/regex/Pattern;

.field private pRoad:Ljava/util/regex/Pattern;

.field pSingle:Ljava/util/regex/Pattern;

.field private p_box:Ljava/util/regex/Pattern;

.field private p_resultclean:Ljava/util/regex/Pattern;

.field private reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

.field private road_suf:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/huawei/g11n/tmr/address/ReguEx;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/address/ReguEx;-><init>()V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

    .line 21
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

    iget-object v0, v0, Lcom/huawei/g11n/tmr/address/ReguEx;->location:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->location:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

    iget-object v0, v0, Lcom/huawei/g11n/tmr/address/ReguEx;->p28:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->p28:Ljava/util/regex/Pattern;

    .line 23
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

    iget-object v0, v0, Lcom/huawei/g11n/tmr/address/ReguEx;->p1346:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->p1346:Ljava/util/regex/Pattern;

    .line 24
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

    iget-object v0, v0, Lcom/huawei/g11n/tmr/address/ReguEx;->p52:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->p52:Ljava/util/regex/Pattern;

    .line 25
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

    iget-object v0, v0, Lcom/huawei/g11n/tmr/address/ReguEx;->p2s:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->p2s:Ljava/util/regex/Pattern;

    .line 26
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

    iget-object v0, v0, Lcom/huawei/g11n/tmr/address/ReguEx;->p52s:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->p52s:Ljava/util/regex/Pattern;

    .line 27
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

    iget-object v0, v0, Lcom/huawei/g11n/tmr/address/ReguEx;->p52_sub:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->p52_sub:Ljava/util/regex/Pattern;

    .line 28
    nop

    .line 29
    const-string v0, "(?i)(?:\\s*(?:(in|on|at)\\s+)?(?:the\\s+)?(boulevard|avenue|street|freeway|road|circle|lane|drive|court|ally|parkway|Ave|AV|Blvd|Cir|Ct|Dr|Ln|Pkwy|Rd|Sq|St|Way|Fwy|Crescent|Highway))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pRoad:Ljava/util/regex/Pattern;

    .line 32
    nop

    .line 33
    const-string v0, "(?<!\\d)(?:\\d{5}(?:\\s*-\\s*\\d{4})?)(?!\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pCode_a:Ljava/util/regex/Pattern;

    .line 36
    nop

    .line 37
    const-string v0, "(?:(?:[^0-9a-zA-Z]*)(?i)(?:(?:in|at|on|from|to|of|and)\\s+)?(?:(?:the)\\s+)?)(?:([\\s\\S]*)?,|([\\s\\S]*))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->reguEx:Lcom/huawei/g11n/tmr/address/ReguEx;

    iget-object v0, v0, Lcom/huawei/g11n/tmr/address/ReguEx;->post_box:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->p_box:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "(?:boulevard|avenue|street|freeway|road|circle|way|lane|drive|court|ally|parkway|Crescent|Highway|(?:Ave|AV|Blvd|Cir|Ct|Dr|Ln|Pkwy|Rd|Sq|St|Fwy)(?:\\.|\\b))"

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->road_suf:Ljava/lang/String;

    .line 42
    const-string v0, "\\s*(south|north|west|east)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pDir:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "(?i)(?:my|your|his|her|its|their|our|this|that|the|a|an|what|which|whose)"

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->not:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "([\\s\\S]*?)(?<![a-zA-Z])"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/g11n/tmr/address/SerEn;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "(?![a-zA-Z])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pNot_1:Ljava/util/regex/Pattern;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\\s\\S]*(?<![a-zA-Z])"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/g11n/tmr/address/SerEn;->not:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pNot_2:Ljava/util/regex/Pattern;

    .line 48
    nop

    .line 49
    const-string v0, "(?:(?:\\s*[:,\\.\"-]\\s*|\\s*)\\d+(?:\\s*[,\\.\":-]\\s*|\\s+))+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pNum:Ljava/util/regex/Pattern;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?:([\\s\\S]*?)(?<![a-zA-Z])((?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/huawei/g11n/tmr/address/SerEn;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")((?:\\s+|\\s*&\\s*)(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/g11n/tmr/address/SerEn;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "))?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")(?![a-zA-Z]))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pLocation:Ljava/util/regex/Pattern;

    .line 55
    nop

    .line 56
    const-string v0, "(?:(?:[\\s\\S]*)(?:,|\\.)([\\s\\S]*))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pComma:Ljava/util/regex/Pattern;

    .line 57
    nop

    .line 58
    const-string v0, "(?<![a-zA-Z])(?:\\s*[,.]*\\s*)*(?:(?i)in)(?![a-zA-Z])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pPre_city:Ljava/util/regex/Pattern;

    .line 59
    nop

    .line 60
    const-string v0, "(?:\\b(?i)(in|at|from|near|to|of|for)\\b([\\s\\S]*))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pPre_uni:Ljava/util/regex/Pattern;

    .line 61
    nop

    .line 62
    const-string v0, "(?:[\\s\\S]*(?<![a-zA-Z])(?i)(the|in|on|at|from|to|of|for)(?:(?:(?:\\s*[,.-:\'\"()]\\s*)+)|\\s+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pNo:Ljava/util/regex/Pattern;

    .line 64
    nop

    .line 65
    const-string v0, "(\\s*[,.]?\\s*(?:(?i)(?:in|on|at|from|of)\\s+)?(?:(?i)(uptown|downtown)\\s+)?)?[\\s\\S]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pCut:Ljava/util/regex/Pattern;

    .line 67
    nop

    .line 68
    const-string v0, "(?:\\.)?\\s*,\\s*[A-Z][a-z]+(?:\\s*(?:[,.)\"\'])\\s*)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/address/SerEn;->pSingle:Ljava/util/regex/Pattern;

    .line 14
    return-void
.end method

.method private createAddressResultData([ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "addrArray"    # [I
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/g11n/tmr/address/Match;",
            ">;"
        }
    .end annotation

    .line 774
    array-length v0, p1

    if-nez v0, :cond_0

    .line 775
    const/4 v0, 0x0

    return-object v0

    .line 777
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v0, "matchedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/g11n/tmr/address/Match;>;"
    const/4 v1, 0x0

    aget v1, p1, v1

    .line 780
    .local v1, "count":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_1

    .line 788
    .end local v2    # "i":I
    invoke-direct {p0, v0, p2}, Lcom/huawei/g11n/tmr/address/SerEn;->sortAndMergePosList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 781
    .restart local v2    # "i":I
    :cond_1
    new-instance v3, Lcom/huawei/g11n/tmr/address/Match;

    invoke-direct {v3}, Lcom/huawei/g11n/tmr/address/Match;-><init>()V

    .line 782
    .local v3, "mu":Lcom/huawei/g11n/tmr/address/Match;
    aget v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/g11n/tmr/address/Match;->setMatchedAddr(Ljava/lang/String;)V

    .line 783
    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/g11n/tmr/address/Match;->setStartPos(Ljava/lang/Integer;)V

    .line 784
    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/g11n/tmr/address/Match;->setEndPos(Ljava/lang/Integer;)V

    .line 785
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    .end local v3    # "mu":Lcom/huawei/g11n/tmr/address/Match;
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method private divStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .line 1847
    const/16 v0, 0x96

    new-array v1, v0, [Ljava/lang/String;

    .line 1848
    .local v1, "strs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1849
    .local v2, "length":I
    const/4 v3, 0x0

    .line 1850
    .local v3, "pr":I
    const-string v4, ""

    aput-object v4, v1, v3

    .line 1852
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-lt v4, v2, :cond_3

    .line 1870
    .end local v4    # "index":I
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1871
    add-int/lit8 v3, v3, 0x1

    .line 1872
    :cond_0
    if-ge v3, v0, :cond_2

    .line 1873
    new-array v0, v3, [Ljava/lang/String;

    .line 1874
    .local v0, "re":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "index":I
    :goto_1
    if-lt v4, v3, :cond_1

    .line 1877
    .end local v4    # "index":I
    return-object v0

    .line 1875
    .restart local v4    # "index":I
    :cond_1
    aget-object v5, v1, v4

    aput-object v5, v0, v4

    .line 1874
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1879
    .end local v0    # "re":[Ljava/lang/String;
    .end local v4    # "index":I
    :cond_2
    return-object v1

    .line 1853
    .restart local v4    # "index":I
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1854
    .local v5, "letter":C
    const/16 v6, 0x7a

    if-gt v5, v6, :cond_4

    const/16 v6, 0x61

    if-ge v5, v6, :cond_6

    .line 1855
    :cond_4
    const/16 v6, 0x5a

    if-gt v5, v6, :cond_5

    const/16 v6, 0x41

    if-ge v5, v6, :cond_6

    .line 1856
    :cond_5
    const/16 v6, 0x39

    if-gt v5, v6, :cond_7

    const/16 v6, 0x30

    if-lt v5, v6, :cond_7

    .line 1857
    :cond_6
    aget-object v6, v1, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 1858
    goto :goto_2

    .line 1859
    :cond_7
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 1860
    aget-object v6, v1, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 1861
    add-int/lit8 v3, v3, 0x1

    .line 1862
    const-string v6, ""

    aput-object v6, v1, v3

    .line 1863
    goto :goto_2

    .line 1864
    :cond_8
    if-lez v3, :cond_9

    .line 1865
    add-int/lit8 v6, v3, -0x1

    aget-object v7, v1, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 1852
    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .end local v5    # "letter":C
    goto/16 :goto_0
.end method

.method private max(II)I
    .locals 0
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 1001
    if-le p1, p2, :cond_0

    .line 1002
    return p1

    .line 1003
    :cond_0
    return p2
.end method

.method private noBlank(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 1824
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1825
    .local v0, "n":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1826
    const/4 v1, 0x1

    .line 1827
    .local v1, "flag":Z
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-eqz v1, :cond_4

    if-lt v2, v0, :cond_0

    .end local v2    # "index":I
    goto :goto_1

    .line 1828
    .restart local v2    # "index":I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-ge v3, v4, :cond_2

    .line 1829
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    .line 1830
    :cond_2
    const/4 v1, 0x0

    .line 1827
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1833
    .end local v2    # "index":I
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    :goto_2
    return v2
.end method

.method private searBuilding_dic(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 48
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "head"    # I

    move-object/from16 v0, p0

    .line 1587
    const/4 v1, 0x0

    .line 1588
    .local v1, "count":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1589
    .local v2, "length":I
    const/4 v3, 0x0

    .line 1590
    .local v3, "length_bracket":I
    move/from16 v4, p2

    .line 1591
    .local v4, "head_0":I
    const-string v5, ""

    .line 1592
    .local v5, "city":Ljava/lang/String;
    const/16 v6, 0x8

    new-array v7, v6, [Ljava/lang/String;

    .line 1593
    .local v7, "results":[Ljava/lang/String;
    const-string v8, ""

    .line 1594
    .local v8, "s_left":Ljava/lang/String;
    const-string v9, ""

    .line 1595
    .local v9, "s_right":Ljava/lang/String;
    const-string v10, ""

    .line 1596
    .local v10, "building":Ljava/lang/String;
    move-object/from16 v11, p1

    .line 1597
    .local v11, "str":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1599
    .local v12, "position":I
    const-string v13, "[\\s\\S]*(?<![a-zA-Z])((?i)(in|at|from|near|to|reach))\\b(\\s+(?i)the\\b)?(?:(?:(?:\\s*[,.-:\'\"()]\\s*)+)|\\s+)?"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 1598
    nop

    .line 1604
    .local v13, "pPre_building":Ljava/util/regex/Pattern;
    const-string v14, "(\\s*[,.]?\\s*(?:(?i)(?:in|on|at|from|of)\\s+)?(?:(?i)(uptown|downtown)\\s+)?)?[\\s\\S]*"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 1603
    nop

    .line 1608
    .local v14, "pCut":Ljava/util/regex/Pattern;
    const-string v15, "(?:\\.)?\\s*,\\s*[A-Z][a-z]+(?:\\s*(?:[,.)\"\'])\\s*)*"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 1607
    nop

    .line 1611
    .local v15, "pSingle":Ljava/util/regex/Pattern;
    const-string v6, "(?:\\s*(?:,|\\.){0,2}\\s*\\b(?i)(?:in)\\b(.*))"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1610
    nop

    .line 1613
    .local v6, "pPre_city":Ljava/util/regex/Pattern;
    const-string v17, ""

    .line 1614
    .local v17, "cut":Ljava/lang/String;
    const/16 v18, 0x1

    .line 1615
    .local v18, "flag":Z
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    .line 1616
    .local v19, "full":I
    const/16 v20, 0x0

    .local v20, "index":I
    move/from16 v21, v3

    move/from16 v22, v18

    move v3, v1

    move-object/from16 v18, v10

    move/from16 v1, v20

    move-object v10, v5

    move-object/from16 v20, v17

    move/from16 v5, p2

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, p1

    .end local p1    # "string":Ljava/lang/String;
    .end local p2    # "head":I
    .local v1, "index":I
    .local v3, "count":I
    .local v5, "head":I
    .local v8, "string":Ljava/lang/String;
    .local v9, "s_left":Ljava/lang/String;
    .local v10, "city":Ljava/lang/String;
    .local v17, "s_right":Ljava/lang/String;
    .local v18, "building":Ljava/lang/String;
    .local v20, "cut":Ljava/lang/String;
    .local v21, "length_bracket":I
    .local v22, "flag":Z
    :goto_0
    if-lt v1, v2, :cond_2

    .line 1813
    .end local v1    # "index":I
    const/16 v1, 0x8

    if-ge v3, v1, :cond_1

    .line 1814
    new-array v1, v3, [Ljava/lang/String;

    .line 1815
    .local v1, "re":[Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "index":I
    move/from16 v23, v5

    move/from16 v5, v16

    .end local v16    # "index":I
    .local v5, "index":I
    .local v23, "head":I
    :goto_1
    if-lt v5, v3, :cond_0

    .line 1818
    .end local v5    # "index":I
    return-object v1

    .line 1816
    .restart local v5    # "index":I
    :cond_0
    aget-object v16, v7, v5

    aput-object v16, v1, v5

    .line 1815
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1820
    .end local v1    # "re":[Ljava/lang/String;
    .end local v23    # "head":I
    .local v5, "head":I
    :cond_1
    move/from16 v23, v5

    .end local v5    # "head":I
    .restart local v23    # "head":I
    return-object v7

    .line 1617
    .end local v23    # "head":I
    .local v1, "index":I
    .restart local v5    # "head":I
    :cond_2
    move/from16 v23, v5

    .end local v5    # "head":I
    .restart local v23    # "head":I
    invoke-virtual {v11, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1618
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v19, v5

    add-int/2addr v5, v4

    .line 1619
    .end local v23    # "head":I
    .restart local v5    # "head":I
    sub-int/2addr v2, v1

    .line 1620
    const/4 v1, 0x0

    .line 1621
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v24, v4

    sub-int v4, v23, v2

    .end local v4    # "head_0":I
    .local v24, "head_0":I
    move-object/from16 v25, v9

    const/4 v9, 0x0

    .end local v9    # "s_left":Ljava/lang/String;
    .local v25, "s_left":Ljava/lang/String;
    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1623
    .end local v25    # "s_left":Ljava/lang/String;
    .local v4, "s_left":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v26, v8

    const/4 v8, 0x1

    .end local v8    # "string":Ljava/lang/String;
    .local v26, "string":Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/huawei/g11n/tmr/address/jni/DicSearch;->dicsearch(ILjava/lang/String;)I

    move-result v12

    .line 1624
    if-nez v12, :cond_7

    .line 1625
    :goto_2
    if-ge v1, v2, :cond_6

    .line 1626
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x61

    if-lt v9, v8, :cond_3

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7a

    if-le v8, v9, :cond_5

    .line 1627
    :cond_3
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x41

    if-lt v8, v9, :cond_4

    .line 1628
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5a

    if-le v8, v9, :cond_5

    .line 1629
    :cond_4
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_6

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    .line 1625
    if-le v8, v9, :cond_5

    .line 1632
    goto :goto_3

    .line 1630
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 1625
    const/4 v8, 0x1

    goto :goto_2

    .line 1616
    :cond_6
    :goto_3
    move/from16 v27, v2

    move v9, v3

    move-object v3, v11

    move/from16 v29, v12

    move-object/from16 v45, v14

    move-object/from16 v8, v26

    .end local v2    # "length":I
    .end local v11    # "str":Ljava/lang/String;
    .end local v12    # "position":I
    .end local v14    # "pCut":Ljava/util/regex/Pattern;
    .end local v26    # "string":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    .restart local v8    # "string":Ljava/lang/String;
    .local v9, "count":I
    .local v27, "length":I
    .local v29, "position":I
    .local v45, "pCut":Ljava/util/regex/Pattern;
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_10

    .line 1633
    .end local v8    # "string":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v27    # "length":I
    .end local v29    # "position":I
    .end local v45    # "pCut":Ljava/util/regex/Pattern;
    .restart local v2    # "length":I
    .local v3, "count":I
    .restart local v11    # "str":Ljava/lang/String;
    .restart local v12    # "position":I
    .restart local v14    # "pCut":Ljava/util/regex/Pattern;
    .restart local v26    # "string":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1634
    .end local v18    # "building":Ljava/lang/String;
    .local v9, "building":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1635
    .end local v17    # "s_right":Ljava/lang/String;
    .local v8, "s_right":Ljava/lang/String;
    move/from16 v27, v2

    invoke-virtual {v0, v8}, Lcom/huawei/g11n/tmr/address/SerEn;->searchBracket(Ljava/lang/String;)I

    move-result v2

    .line 1636
    .end local v21    # "length_bracket":I
    .local v2, "length_bracket":I
    .restart local v27    # "length":I
    if-lez v2, :cond_8

    .line 1637
    move-object/from16 v28, v10

    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "city":Ljava/lang/String;
    .local v28, "city":Ljava/lang/String;
    move/from16 v29, v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .end local v12    # "position":I
    .restart local v29    # "position":I
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1638
    nop

    .line 1639
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    .line 1638
    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 1642
    .end local v28    # "city":Ljava/lang/String;
    .end local v29    # "position":I
    .restart local v10    # "city":Ljava/lang/String;
    .restart local v12    # "position":I
    :cond_8
    move-object/from16 v28, v10

    move/from16 v29, v12

    .end local v10    # "city":Ljava/lang/String;
    .end local v12    # "position":I
    .restart local v28    # "city":Ljava/lang/String;
    .restart local v29    # "position":I
    :goto_5
    const-string v10, ""

    .line 1643
    .end local v28    # "city":Ljava/lang/String;
    .restart local v10    # "city":Ljava/lang/String;
    const-string v12, ""

    .line 1644
    .end local v20    # "cut":Ljava/lang/String;
    .local v12, "cut":Ljava/lang/String;
    move/from16 v30, v2

    iget-object v2, v0, Lcom/huawei/g11n/tmr/address/SerEn;->p52s:Ljava/util/regex/Pattern;

    .end local v2    # "length_bracket":I
    .local v30, "length_bracket":I
    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1645
    .local v2, "m52s":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v17

    move-object/from16 v31, v10

    .end local v10    # "city":Ljava/lang/String;
    .local v31, "city":Ljava/lang/String;
    const/4 v10, 0x6

    if-eqz v17, :cond_13

    .line 1646
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_9

    .line 1647
    add-int/lit8 v10, v3, 0x1

    .local v10, "count":I
    move/from16 v32, v10

    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "count":I
    .local v32, "count":I
    move-object/from16 v33, v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .end local v12    # "cut":Ljava/lang/String;
    .local v33, "cut":Ljava/lang/String;
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v3

    .line 1648
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    nop

    .line 1802
    move/from16 v37, v1

    move-object/from16 v43, v2

    move-object/from16 v44, v8

    move-object/from16 v36, v11

    move-object/from16 v45, v14

    move/from16 v8, v32

    goto/16 :goto_f

    .line 1650
    .end local v32    # "count":I
    .end local v33    # "cut":Ljava/lang/String;
    .restart local v3    # "count":I
    .restart local v12    # "cut":Ljava/lang/String;
    :cond_9
    move-object/from16 v33, v12

    .end local v12    # "cut":Ljava/lang/String;
    .restart local v33    # "cut":Ljava/lang/String;
    const/4 v12, 0x7

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 1651
    add-int/lit8 v10, v3, 0x1

    .restart local v10    # "count":I
    new-instance v12, Ljava/lang/StringBuilder;

    move/from16 v34, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "count":I
    .local v34, "count":I
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v3

    .line 1652
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    nop

    .line 1802
    move/from16 v37, v1

    move-object/from16 v43, v2

    move-object/from16 v44, v8

    move-object/from16 v36, v11

    move-object/from16 v45, v14

    move/from16 v8, v34

    goto/16 :goto_f

    .line 1655
    .end local v34    # "count":I
    .restart local v3    # "count":I
    :cond_a
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1656
    .local v12, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1657
    const/4 v10, 0x1

    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 1658
    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 1659
    .end local v33    # "cut":Ljava/lang/String;
    .local v17, "cut":Ljava/lang/String;
    nop

    .line 1664
    move-object/from16 v10, v17

    goto :goto_6

    .line 1660
    .end local v17    # "cut":Ljava/lang/String;
    .restart local v33    # "cut":Ljava/lang/String;
    :cond_b
    const-string v10, ""

    .line 1661
    .end local v33    # "cut":Ljava/lang/String;
    .local v10, "cut":Ljava/lang/String;
    goto :goto_6

    .line 1662
    .end local v10    # "cut":Ljava/lang/String;
    .restart local v33    # "cut":Ljava/lang/String;
    :cond_c
    const-string v10, ""

    .line 1664
    .end local v33    # "cut":Ljava/lang/String;
    .restart local v10    # "cut":Ljava/lang/String;
    :goto_6
    nop

    .line 1665
    move-object/from16 v36, v11

    move-object/from16 v35, v12

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .end local v11    # "str":Ljava/lang/String;
    .end local v12    # "mCut":Ljava/util/regex/Matcher;
    .local v35, "mCut":Ljava/util/regex/Matcher;
    .local v36, "str":Ljava/lang/String;
    move/from16 v37, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 1666
    .end local v1    # "index":I
    .local v37, "index":I
    move-object/from16 v38, v14

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .end local v14    # "pCut":Ljava/util/regex/Pattern;
    .local v38, "pCut":Ljava/util/regex/Pattern;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    .line 1665
    invoke-virtual {v11, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1666
    nop

    .line 1664
    const/4 v11, 0x2

    invoke-virtual {v0, v1, v11}, Lcom/huawei/g11n/tmr/address/SerEn;->searCity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1667
    .end local v31    # "city":Ljava/lang/String;
    .local v1, "city":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 1669
    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 1670
    .local v11, "mPre_city":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1671
    add-int/lit8 v12, v3, 0x1

    .local v12, "count":I
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v39, v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .end local v11    # "mPre_city":Ljava/util/regex/Matcher;
    .local v39, "mPre_city":Ljava/util/regex/Matcher;
    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v3

    .line 1672
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    nop

    .line 1802
    .end local v1    # "city":Ljava/lang/String;
    .end local v2    # "m52s":Ljava/util/regex/Matcher;
    .end local v10    # "cut":Ljava/lang/String;
    .end local v12    # "count":I
    .end local v35    # "mCut":Ljava/util/regex/Matcher;
    .end local v38    # "pCut":Ljava/util/regex/Pattern;
    .end local v39    # "mPre_city":Ljava/util/regex/Matcher;
    .local v8, "count":I
    .restart local v31    # "city":Ljava/lang/String;
    .restart local v33    # "cut":Ljava/lang/String;
    .local v43, "m52s":Ljava/util/regex/Matcher;
    .local v44, "s_right":Ljava/lang/String;
    .restart local v45    # "pCut":Ljava/util/regex/Pattern;
    :goto_7
    move-object/from16 v31, v1

    move-object/from16 v43, v2

    move-object/from16 v44, v8

    move-object/from16 v33, v10

    move v8, v12

    goto/16 :goto_a

    .line 1674
    .end local v31    # "city":Ljava/lang/String;
    .end local v33    # "cut":Ljava/lang/String;
    .end local v43    # "m52s":Ljava/util/regex/Matcher;
    .end local v44    # "s_right":Ljava/lang/String;
    .end local v45    # "pCut":Ljava/util/regex/Pattern;
    .restart local v1    # "city":Ljava/lang/String;
    .restart local v2    # "m52s":Ljava/util/regex/Matcher;
    .restart local v3    # "count":I
    .local v8, "s_right":Ljava/lang/String;
    .restart local v10    # "cut":Ljava/lang/String;
    .restart local v11    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v35    # "mCut":Ljava/util/regex/Matcher;
    .restart local v38    # "pCut":Ljava/util/regex/Pattern;
    :cond_d
    move-object/from16 v39, v11

    .end local v11    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v39    # "mPre_city":Ljava/util/regex/Matcher;
    const/4 v11, 0x3

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 1675
    .local v11, "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1677
    add-int/lit8 v12, v3, 0x1

    .restart local v12    # "count":I
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v40, v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .end local v11    # "mSingle":Ljava/util/regex/Matcher;
    .local v40, "mSingle":Ljava/util/regex/Matcher;
    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1677
    aput-object v11, v7, v3

    .line 1679
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    goto :goto_7

    .line 1681
    .end local v12    # "count":I
    .end local v40    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v3    # "count":I
    .restart local v11    # "mSingle":Ljava/util/regex/Matcher;
    :cond_e
    move-object/from16 v40, v11

    .end local v11    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v40    # "mSingle":Ljava/util/regex/Matcher;
    add-int/lit8 v11, v3, 0x1

    .local v11, "count":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1682
    move/from16 v41, v11

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .end local v11    # "count":I
    .local v41, "count":I
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1681
    aput-object v11, v7, v3

    .line 1683
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    .end local v40    # "mSingle":Ljava/util/regex/Matcher;
    nop

    .line 1802
    move-object/from16 v31, v1

    move-object/from16 v43, v2

    move-object/from16 v44, v8

    move-object/from16 v33, v10

    move-object/from16 v45, v38

    move/from16 v8, v41

    goto/16 :goto_f

    .line 1687
    .end local v39    # "mPre_city":Ljava/util/regex/Matcher;
    .end local v41    # "count":I
    .restart local v3    # "count":I
    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1689
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_11

    .line 1690
    const/4 v11, 0x5

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10

    .line 1691
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1692
    nop

    .line 1701
    :cond_10
    :goto_8
    const/16 v12, 0x8

    goto :goto_9

    .line 1693
    :cond_11
    const/4 v11, 0x5

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_12

    .line 1694
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1696
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x5

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1701
    :goto_9
    add-int/lit8 v11, v3, 0x1

    .restart local v11    # "count":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v42, v10

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "cut":Ljava/lang/String;
    .local v42, "cut":Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1701
    aput-object v10, v7, v3

    .line 1703
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    .end local v35    # "mCut":Ljava/util/regex/Matcher;
    nop

    .line 1802
    move-object/from16 v31, v1

    move-object/from16 v43, v2

    move-object/from16 v44, v8

    move v8, v11

    move-object/from16 v45, v38

    move-object/from16 v33, v42

    goto/16 :goto_f

    .line 1708
    .end local v36    # "str":Ljava/lang/String;
    .end local v37    # "index":I
    .end local v38    # "pCut":Ljava/util/regex/Pattern;
    .end local v42    # "cut":Ljava/lang/String;
    .local v1, "index":I
    .restart local v3    # "count":I
    .local v11, "str":Ljava/lang/String;
    .local v12, "cut":Ljava/lang/String;
    .restart local v14    # "pCut":Ljava/util/regex/Pattern;
    .restart local v31    # "city":Ljava/lang/String;
    :cond_13
    move/from16 v37, v1

    move-object/from16 v36, v11

    move-object/from16 v33, v12

    move-object/from16 v38, v14

    .end local v1    # "index":I
    .end local v11    # "str":Ljava/lang/String;
    .end local v12    # "cut":Ljava/lang/String;
    .end local v14    # "pCut":Ljava/util/regex/Pattern;
    .restart local v33    # "cut":Ljava/lang/String;
    .restart local v36    # "str":Ljava/lang/String;
    .restart local v37    # "index":I
    .restart local v38    # "pCut":Ljava/util/regex/Pattern;
    iget-object v1, v0, Lcom/huawei/g11n/tmr/address/SerEn;->p2s:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1709
    .local v1, "m2s":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1710
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_15

    .line 1713
    invoke-virtual {v13, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1714
    .local v10, "mPre_building":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 1715
    add-int/lit8 v11, v3, 0x1

    .local v11, "count":I
    aput-object v9, v7, v3

    .line 1716
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    nop

    .line 1802
    move-object/from16 v43, v2

    move-object/from16 v44, v8

    move v8, v11

    .end local v1    # "m2s":Ljava/util/regex/Matcher;
    .end local v2    # "m52s":Ljava/util/regex/Matcher;
    .end local v10    # "mPre_building":Ljava/util/regex/Matcher;
    .end local v11    # "count":I
    .end local v38    # "pCut":Ljava/util/regex/Pattern;
    .local v8, "count":I
    .restart local v43    # "m52s":Ljava/util/regex/Matcher;
    .restart local v44    # "s_right":Ljava/lang/String;
    .restart local v45    # "pCut":Ljava/util/regex/Pattern;
    :goto_a
    move-object/from16 v45, v38

    goto/16 :goto_f

    .line 1718
    .end local v43    # "m52s":Ljava/util/regex/Matcher;
    .end local v44    # "s_right":Ljava/lang/String;
    .end local v45    # "pCut":Ljava/util/regex/Pattern;
    .restart local v1    # "m2s":Ljava/util/regex/Matcher;
    .restart local v2    # "m52s":Ljava/util/regex/Matcher;
    .restart local v3    # "count":I
    .local v8, "s_right":Ljava/lang/String;
    .restart local v10    # "mPre_building":Ljava/util/regex/Matcher;
    .restart local v38    # "pCut":Ljava/util/regex/Pattern;
    :cond_14
    const/16 v22, 0x0

    .line 1720
    nop

    .line 1802
    move-object/from16 v43, v2

    move-object/from16 v44, v8

    move-object/from16 v45, v38

    goto/16 :goto_e

    .line 1726
    .end local v10    # "mPre_building":Ljava/util/regex/Matcher;
    :cond_15
    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 1727
    add-int/lit8 v10, v3, 0x1

    .local v10, "count":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v3

    .line 1728
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    nop

    .line 1802
    move-object/from16 v43, v2

    move-object/from16 v44, v8

    move v8, v10

    goto :goto_a

    .line 1731
    .end local v10    # "count":I
    .restart local v3    # "count":I
    :cond_16
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v10, v38

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 1732
    .end local v38    # "pCut":Ljava/util/regex/Pattern;
    .local v10, "pCut":Ljava/util/regex/Pattern;
    .local v11, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1733
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_17

    .line 1734
    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 1735
    .end local v33    # "cut":Ljava/lang/String;
    .local v14, "cut":Ljava/lang/String;
    nop

    .line 1740
    move-object v12, v14

    goto :goto_b

    .line 1736
    .end local v14    # "cut":Ljava/lang/String;
    .restart local v33    # "cut":Ljava/lang/String;
    :cond_17
    const-string v12, ""

    .line 1737
    .end local v33    # "cut":Ljava/lang/String;
    .restart local v12    # "cut":Ljava/lang/String;
    goto :goto_b

    .line 1738
    .end local v12    # "cut":Ljava/lang/String;
    .restart local v33    # "cut":Ljava/lang/String;
    :cond_18
    const-string v12, ""

    .line 1740
    .end local v33    # "cut":Ljava/lang/String;
    .restart local v12    # "cut":Ljava/lang/String;
    :goto_b
    nop

    .line 1741
    move-object/from16 v43, v2

    const/4 v14, 0x3

    invoke-virtual {v1, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "m52s":Ljava/util/regex/Matcher;
    .restart local v43    # "m52s":Ljava/util/regex/Matcher;
    move-object/from16 v44, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    .line 1742
    .end local v8    # "s_right":Ljava/lang/String;
    .restart local v44    # "s_right":Ljava/lang/String;
    move-object/from16 v45, v10

    invoke-virtual {v1, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "pCut":Ljava/util/regex/Pattern;
    .restart local v45    # "pCut":Ljava/util/regex/Pattern;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 1741
    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1742
    nop

    .line 1740
    const/4 v8, 0x2

    invoke-virtual {v0, v2, v8}, Lcom/huawei/g11n/tmr/address/SerEn;->searCity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 1743
    .end local v31    # "city":Ljava/lang/String;
    .local v10, "city":Ljava/lang/String;
    if-eqz v10, :cond_1c

    .line 1744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1746
    .end local v10    # "city":Ljava/lang/String;
    .local v2, "city":Ljava/lang/String;
    const/4 v8, 0x6

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_19

    .line 1747
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1b

    .line 1748
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1749
    goto :goto_c

    .line 1750
    :cond_19
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1a

    .line 1751
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    const/4 v10, 0x6

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1752
    goto :goto_c

    .line 1754
    :cond_1a
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    const/4 v10, 0x6

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1759
    :cond_1b
    :goto_c
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1760
    .end local v2    # "city":Ljava/lang/String;
    .restart local v10    # "city":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .local v2, "count":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1761
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1762
    nop

    .line 1802
    move v8, v2

    goto :goto_d

    .line 1764
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_1c
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1765
    .local v2, "mPre_city":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1766
    add-int/lit8 v8, v3, 0x1

    .local v8, "count":I
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v46, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "mPre_city":Ljava/util/regex/Matcher;
    .local v46, "mPre_city":Ljava/util/regex/Matcher;
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1766
    aput-object v2, v7, v3

    .line 1768
    .end local v3    # "count":I
    iget-object v2, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    nop

    .line 1802
    .end local v1    # "m2s":Ljava/util/regex/Matcher;
    .end local v10    # "city":Ljava/lang/String;
    .end local v11    # "mCut":Ljava/util/regex/Matcher;
    .end local v12    # "cut":Ljava/lang/String;
    .end local v46    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v31    # "city":Ljava/lang/String;
    .restart local v33    # "cut":Ljava/lang/String;
    :goto_d
    move-object/from16 v31, v10

    move-object/from16 v33, v12

    goto/16 :goto_f

    .line 1770
    .end local v8    # "count":I
    .end local v31    # "city":Ljava/lang/String;
    .end local v33    # "cut":Ljava/lang/String;
    .restart local v1    # "m2s":Ljava/util/regex/Matcher;
    .restart local v2    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v3    # "count":I
    .restart local v10    # "city":Ljava/lang/String;
    .restart local v11    # "mCut":Ljava/util/regex/Matcher;
    .restart local v12    # "cut":Ljava/lang/String;
    :cond_1d
    move-object/from16 v46, v2

    .end local v2    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v46    # "mPre_city":Ljava/util/regex/Matcher;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1771
    .local v2, "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1773
    add-int/lit8 v8, v3, 0x1

    .restart local v8    # "count":I
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v47, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "mSingle":Ljava/util/regex/Matcher;
    .local v47, "mSingle":Ljava/util/regex/Matcher;
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1774
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1773
    aput-object v2, v7, v3

    .line 1775
    .end local v3    # "count":I
    iget-object v2, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    goto :goto_d

    .line 1778
    .end local v8    # "count":I
    .end local v47    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v2    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v3    # "count":I
    :cond_1e
    move-object/from16 v47, v2

    .line 1779
    .end local v2    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v47    # "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v13, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1778
    nop

    .line 1780
    .local v2, "mPre_building":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1781
    add-int/lit8 v8, v3, 0x1

    .restart local v8    # "count":I
    aput-object v9, v7, v3

    .line 1782
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    goto :goto_d

    .line 1784
    .end local v8    # "count":I
    .restart local v3    # "count":I
    :cond_1f
    const/16 v22, 0x0

    .line 1791
    .end local v2    # "mPre_building":Ljava/util/regex/Matcher;
    .end local v11    # "mCut":Ljava/util/regex/Matcher;
    .end local v46    # "mPre_city":Ljava/util/regex/Matcher;
    .end local v47    # "mSingle":Ljava/util/regex/Matcher;
    nop

    .line 1802
    move v8, v3

    goto :goto_d

    .line 1793
    .end local v10    # "city":Ljava/lang/String;
    .end local v12    # "cut":Ljava/lang/String;
    .end local v43    # "m52s":Ljava/util/regex/Matcher;
    .end local v44    # "s_right":Ljava/lang/String;
    .end local v45    # "pCut":Ljava/util/regex/Pattern;
    .local v2, "m52s":Ljava/util/regex/Matcher;
    .local v8, "s_right":Ljava/lang/String;
    .restart local v31    # "city":Ljava/lang/String;
    .restart local v33    # "cut":Ljava/lang/String;
    .restart local v38    # "pCut":Ljava/util/regex/Pattern;
    :cond_20
    move-object/from16 v43, v2

    move-object/from16 v44, v8

    move-object/from16 v45, v38

    .end local v2    # "m52s":Ljava/util/regex/Matcher;
    .end local v8    # "s_right":Ljava/lang/String;
    .end local v38    # "pCut":Ljava/util/regex/Pattern;
    .restart local v43    # "m52s":Ljava/util/regex/Matcher;
    .restart local v44    # "s_right":Ljava/lang/String;
    .restart local v45    # "pCut":Ljava/util/regex/Pattern;
    invoke-virtual {v13, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1794
    .local v2, "mPre_building":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1795
    add-int/lit8 v8, v3, 0x1

    .local v8, "count":I
    aput-object v9, v7, v3

    .line 1796
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    goto :goto_f

    .line 1798
    .end local v8    # "count":I
    .restart local v3    # "count":I
    :cond_21
    const/16 v22, 0x0

    .line 1802
    .end local v1    # "m2s":Ljava/util/regex/Matcher;
    .end local v2    # "mPre_building":Ljava/util/regex/Matcher;
    .end local v3    # "count":I
    .restart local v8    # "count":I
    :goto_e
    move v8, v3

    :goto_f
    if-eqz v22, :cond_22

    .line 1803
    add-int/lit8 v1, v8, -0x1

    aget-object v1, v7, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v1, v37, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1804
    .end local v37    # "index":I
    .local v1, "index":I
    add-int/lit8 v2, v8, -0x1

    aget-object v2, v7, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1805
    move-object/from16 v3, v36

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    .line 1804
    .end local v36    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1806
    .end local v26    # "string":Ljava/lang/String;
    .local v2, "string":Ljava/lang/String;
    nop

    .line 1616
    move-object/from16 v18, v9

    move/from16 v21, v30

    move-object/from16 v10, v31

    move-object/from16 v20, v33

    move-object/from16 v17, v44

    move v9, v8

    move-object v8, v2

    goto/16 :goto_4

    .line 1807
    .end local v1    # "index":I
    .end local v2    # "string":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/String;
    .restart local v26    # "string":Ljava/lang/String;
    .restart local v36    # "str":Ljava/lang/String;
    .restart local v37    # "index":I
    :cond_22
    move-object/from16 v3, v36

    .end local v36    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int v1, v37, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1808
    .end local v37    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1809
    .end local v26    # "string":Ljava/lang/String;
    .local v10, "string":Ljava/lang/String;
    const/4 v11, 0x1

    .line 1616
    .end local v22    # "flag":Z
    .end local v43    # "m52s":Ljava/util/regex/Matcher;
    .local v11, "flag":Z
    move-object/from16 v18, v9

    move/from16 v22, v11

    move/from16 v21, v30

    move-object/from16 v20, v33

    move-object/from16 v17, v44

    move v9, v8

    move-object v8, v10

    move-object/from16 v10, v31

    .end local v11    # "flag":Z
    .end local v30    # "length_bracket":I
    .end local v31    # "city":Ljava/lang/String;
    .end local v33    # "cut":Ljava/lang/String;
    .end local v44    # "s_right":Ljava/lang/String;
    .local v8, "string":Ljava/lang/String;
    .local v9, "count":I
    .local v10, "city":Ljava/lang/String;
    .local v17, "s_right":Ljava/lang/String;
    .restart local v18    # "building":Ljava/lang/String;
    .restart local v20    # "cut":Ljava/lang/String;
    .restart local v21    # "length_bracket":I
    .restart local v22    # "flag":Z
    :goto_10
    add-int/2addr v1, v2

    move-object v11, v3

    move v3, v9

    move/from16 v2, v27

    move/from16 v12, v29

    move-object/from16 v14, v45

    move-object v9, v4

    move/from16 v4, v24

    goto/16 :goto_0
.end method

.method private searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;
    .locals 46
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "sub_left"    # Ljava/lang/String;
    .param p3, "left_state"    # I
    .param p4, "flag"    # Z
    .param p5, "head"    # I

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 1063
    const-string v7, ""

    .line 1065
    .local v7, "cut":Ljava/lang/String;
    const/16 v8, 0x8

    new-array v9, v8, [Ljava/lang/String;

    .line 1066
    .local v9, "results":[Ljava/lang/String;
    const/4 v2, 0x0

    new-array v10, v2, [Ljava/lang/String;

    .line 1067
    .local v10, "results_2":[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    .line 1068
    .local v11, "results_3":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1069
    .local v12, "count":I
    const-string v3, ""

    .line 1070
    .local v3, "sub1":Ljava/lang/String;
    const-string v13, ""

    .line 1071
    .local v13, "sub2":Ljava/lang/String;
    const-string v14, ""

    .line 1072
    .local v14, "sub_right":Ljava/lang/String;
    const-string v15, ""

    .line 1073
    .local v15, "building":Ljava/lang/String;
    const-string v16, ""

    .line 1077
    .local v16, "city":Ljava/lang/String;
    iget-object v4, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pNot_1:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1078
    .local v4, "mLocation":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    .line 1079
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1080
    .local v5, "s1":Ljava/lang/String;
    iget-object v2, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pNot_2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1081
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1082
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1083
    .local v2, "n":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .end local p1    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    add-int v2, p5, v2

    .line 1088
    .end local v5    # "s1":Ljava/lang/String;
    .end local p5    # "head":I
    .local v2, "head":I
    move-object v8, v0

    move v5, v2

    goto :goto_0

    .end local v0    # "str":Ljava/lang/String;
    .end local v2    # "head":I
    .restart local p1    # "str":Ljava/lang/String;
    .restart local p5    # "head":I
    :cond_0
    move/from16 v5, p5

    move-object v8, v0

    .end local p1    # "str":Ljava/lang/String;
    .end local p5    # "head":I
    .local v5, "head":I
    .local v8, "str":Ljava/lang/String;
    :goto_0
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pLocation:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1089
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1091
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1092
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pNo:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1094
    .local v2, "mNo":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    invoke-direct {v6, v3}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1095
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    move-object/from16 v19, v2

    const/4 v2, 0x3

    .end local v2    # "mNo":Ljava/util/regex/Matcher;
    .local v19, "mNo":Ljava/util/regex/Matcher;
    if-eqz v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1097
    move-object/from16 v21, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v7, v3

    move-object v10, v4

    move v11, v5

    goto/16 :goto_1

    .line 1537
    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 1538
    .end local p2    # "sub_left":Ljava/lang/String;
    .local v2, "sub_left":Ljava/lang/String;
    const/16 v17, 0x1

    .line 1539
    .end local p3    # "left_state":I
    .local v17, "left_state":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1540
    invoke-direct {v6, v14}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1541
    nop

    .line 1542
    nop

    .line 1543
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v18, v5, v0

    .line 1541
    move-object v0, v6

    move-object v1, v14

    move-object/from16 v20, v2

    .end local v2    # "sub_left":Ljava/lang/String;
    .local v20, "sub_left":Ljava/lang/String;
    move-object/from16 v21, v7

    move-object v7, v3

    move/from16 v3, v17

    .end local v3    # "sub1":Ljava/lang/String;
    .local v7, "sub1":Ljava/lang/String;
    .local v21, "cut":Ljava/lang/String;
    move-object/from16 v22, v10

    move-object v10, v4

    move/from16 v4, p4

    .end local v4    # "mLocation":Ljava/util/regex/Matcher;
    .local v10, "mLocation":Ljava/util/regex/Matcher;
    .local v22, "results_2":[Ljava/lang/String;
    move-object/from16 v23, v11

    move v11, v5

    move/from16 v5, v18

    .end local v5    # "head":I
    .local v11, "head":I
    .local v23, "results_3":[Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1547
    .end local v22    # "results_2":[Ljava/lang/String;
    .local v0, "results_2":[Ljava/lang/String;
    nop

    .line 1565
    move-object v1, v0

    move-object/from16 v43, v7

    move-object/from16 v42, v13

    move-object/from16 v34, v14

    move-object/from16 v0, v23

    move/from16 v23, v17

    move-object/from16 v17, v20

    goto/16 :goto_1d

    .end local v0    # "results_2":[Ljava/lang/String;
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v20    # "sub_left":Ljava/lang/String;
    .end local v21    # "cut":Ljava/lang/String;
    .end local v23    # "results_3":[Ljava/lang/String;
    .restart local v2    # "sub_left":Ljava/lang/String;
    .restart local v3    # "sub1":Ljava/lang/String;
    .restart local v4    # "mLocation":Ljava/util/regex/Matcher;
    .restart local v5    # "head":I
    .local v7, "cut":Ljava/lang/String;
    .local v10, "results_2":[Ljava/lang/String;
    .local v11, "results_3":[Ljava/lang/String;
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v7, v3

    move-object v10, v4

    move v11, v5

    move-object/from16 v43, v7

    move-object/from16 v42, v13

    move-object/from16 v34, v14

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    move/from16 v23, v17

    move-object/from16 v17, v20

    .end local v2    # "sub_left":Ljava/lang/String;
    .end local v3    # "sub1":Ljava/lang/String;
    .end local v4    # "mLocation":Ljava/util/regex/Matcher;
    .end local v5    # "head":I
    .local v7, "sub1":Ljava/lang/String;
    .local v10, "mLocation":Ljava/util/regex/Matcher;
    .local v11, "head":I
    .restart local v20    # "sub_left":Ljava/lang/String;
    .restart local v21    # "cut":Ljava/lang/String;
    .restart local v22    # "results_2":[Ljava/lang/String;
    .restart local v23    # "results_3":[Ljava/lang/String;
    goto/16 :goto_1d

    .line 1097
    .end local v17    # "left_state":I
    .end local v20    # "sub_left":Ljava/lang/String;
    .end local v21    # "cut":Ljava/lang/String;
    .end local v22    # "results_2":[Ljava/lang/String;
    .end local v23    # "results_3":[Ljava/lang/String;
    .restart local v3    # "sub1":Ljava/lang/String;
    .restart local v4    # "mLocation":Ljava/util/regex/Matcher;
    .restart local v5    # "head":I
    .local v7, "cut":Ljava/lang/String;
    .local v10, "results_2":[Ljava/lang/String;
    .local v11, "results_3":[Ljava/lang/String;
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local p2    # "sub_left":Ljava/lang/String;
    .restart local p3    # "left_state":I
    :cond_3
    move-object/from16 v21, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v7, v3

    move-object v10, v4

    move v11, v5

    .end local v3    # "sub1":Ljava/lang/String;
    .end local v4    # "mLocation":Ljava/util/regex/Matcher;
    .end local v5    # "head":I
    .local v7, "sub1":Ljava/lang/String;
    .local v10, "mLocation":Ljava/util/regex/Matcher;
    .local v11, "head":I
    .restart local v21    # "cut":Ljava/lang/String;
    .restart local v22    # "results_2":[Ljava/lang/String;
    .restart local v23    # "results_3":[Ljava/lang/String;
    :goto_1
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pComma:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1098
    .local v5, "mComma":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v0, :cond_d

    .line 1100
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 1101
    if-eqz v13, :cond_4

    invoke-direct {v6, v13}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1103
    invoke-direct {v6, v13}, Lcom/huawei/g11n/tmr/address/SerEn;->divStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "temp":[Ljava/lang/String;
    array-length v2, v0

    if-gt v2, v3, :cond_4

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1106
    iget-object v2, v6, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v20

    add-int v3, v11, v20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    .end local v0    # "temp":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 1113
    if-eqz p4, :cond_c

    .line 1115
    move-object v0, v7

    .line 1116
    .local v0, "sub1_temp":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1117
    .local v2, "sub1_undone":Z
    :goto_2
    if-nez v2, :cond_8

    .line 1142
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 1144
    invoke-direct {v6, v7}, Lcom/huawei/g11n/tmr/address/SerEn;->divStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, "temp":[Ljava/lang/String;
    array-length v4, v3

    .line 1146
    .local v4, "length":I
    move/from16 v25, v2

    const/4 v2, 0x4

    if-le v4, v2, :cond_5

    .line 1147
    .end local v2    # "sub1_undone":Z
    .local v25, "sub1_undone":Z
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v26, v4, -0x4

    move-object/from16 v27, v5

    aget-object v5, v3, v26

    .end local v5    # "mComma":Ljava/util/regex/Matcher;
    .local v27, "mComma":Ljava/util/regex/Matcher;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    add-int/lit8 v5, v4, -0x3

    aget-object v5, v3, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    add-int/lit8 v5, v4, -0x2

    aget-object v5, v3, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    add-int/lit8 v5, v4, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    move-object/from16 v28, v3

    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "temp":[Ljava/lang/String;
    .local v28, "temp":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1152
    iget-object v2, v6, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    .line 1153
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 1154
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    .line 1155
    move-object/from16 v29, v13

    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .end local v13    # "sub2":Ljava/lang/String;
    .local v29, "sub2":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v26, v26, v5

    .line 1153
    sub-int v3, v3, v26

    add-int v5, v11, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1152
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    nop

    .line 1220
    .end local v0    # "sub1_temp":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v14    # "sub_right":Ljava/lang/String;
    .end local v25    # "sub1_undone":Z
    .end local v28    # "temp":[Ljava/lang/String;
    .end local v29    # "sub2":Ljava/lang/String;
    .restart local v13    # "sub2":Ljava/lang/String;
    .local v34, "sub_right":Ljava/lang/String;
    :goto_3
    move-object/from16 v34, v14

    move-object/from16 v13, v29

    goto/16 :goto_8

    .line 1158
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .end local v34    # "sub_right":Ljava/lang/String;
    .restart local v0    # "sub1_temp":Ljava/lang/String;
    .restart local v3    # "temp":[Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "mComma":Ljava/util/regex/Matcher;
    .restart local v14    # "sub_right":Ljava/lang/String;
    .restart local v25    # "sub1_undone":Z
    :cond_5
    move-object/from16 v28, v3

    move-object/from16 v27, v5

    move-object/from16 v29, v13

    .end local v3    # "temp":[Ljava/lang/String;
    .end local v5    # "mComma":Ljava/util/regex/Matcher;
    .end local v13    # "sub2":Ljava/lang/String;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local v28    # "temp":[Ljava/lang/String;
    .restart local v29    # "sub2":Ljava/lang/String;
    if-lez v4, :cond_6

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1160
    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1161
    .end local v15    # "building":Ljava/lang/String;
    .local v2, "building":Ljava/lang/String;
    move-object v15, v2

    .end local v2    # "building":Ljava/lang/String;
    .restart local v15    # "building":Ljava/lang/String;
    :cond_6
    iget-object v2, v6, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    .end local v0    # "sub1_temp":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v25    # "sub1_undone":Z
    .end local v28    # "temp":[Ljava/lang/String;
    goto :goto_3

    .line 1220
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .end local v29    # "sub2":Ljava/lang/String;
    .restart local v5    # "mComma":Ljava/util/regex/Matcher;
    .restart local v13    # "sub2":Ljava/lang/String;
    :cond_7
    move-object/from16 v27, v5

    move-object/from16 v29, v13

    move-object/from16 v34, v14

    .end local v5    # "mComma":Ljava/util/regex/Matcher;
    .end local v13    # "sub2":Ljava/lang/String;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local v29    # "sub2":Ljava/lang/String;
    goto/16 :goto_8

    .line 1118
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .end local v29    # "sub2":Ljava/lang/String;
    .restart local v0    # "sub1_temp":Ljava/lang/String;
    .local v2, "sub1_undone":Z
    .restart local v5    # "mComma":Ljava/util/regex/Matcher;
    .restart local v13    # "sub2":Ljava/lang/String;
    :cond_8
    move/from16 v25, v2

    move-object/from16 v27, v5

    move-object/from16 v29, v13

    .end local v2    # "sub1_undone":Z
    .end local v5    # "mComma":Ljava/util/regex/Matcher;
    .end local v13    # "sub2":Ljava/lang/String;
    .restart local v25    # "sub1_undone":Z
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local v29    # "sub2":Ljava/lang/String;
    iget-object v2, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pPre_uni:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1119
    .local v2, "mPre_uni":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1121
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 1122
    .end local v29    # "sub2":Ljava/lang/String;
    .restart local v13    # "sub2":Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 1123
    invoke-direct {v6, v13}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1125
    invoke-direct {v6, v13}, Lcom/huawei/g11n/tmr/address/SerEn;->divStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1126
    .restart local v3    # "temp":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x4

    if-gt v4, v5, :cond_9

    .line 1127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    move-object/from16 v30, v0

    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "sub1_temp":Ljava/lang/String;
    .local v30, "sub1_temp":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1129
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    .line 1130
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 1131
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    .line 1130
    sub-int/2addr v4, v5

    add-int v5, v11, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1129
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    const/4 v0, 0x0

    .line 1133
    .end local v25    # "sub1_undone":Z
    .local v0, "sub1_undone":Z
    goto :goto_4

    .line 1134
    .end local v30    # "sub1_temp":Ljava/lang/String;
    .local v0, "sub1_temp":Ljava/lang/String;
    .restart local v25    # "sub1_undone":Z
    :cond_9
    move-object/from16 v30, v0

    .end local v0    # "sub1_temp":Ljava/lang/String;
    .restart local v30    # "sub1_temp":Ljava/lang/String;
    move-object v0, v13

    .line 1135
    .end local v30    # "sub1_temp":Ljava/lang/String;
    .restart local v0    # "sub1_temp":Ljava/lang/String;
    nop

    .line 1117
    move/from16 v2, v25

    move-object/from16 v5, v27

    goto :goto_5

    .line 1136
    .end local v3    # "temp":[Ljava/lang/String;
    :cond_a
    move-object/from16 v30, v0

    .end local v0    # "sub1_temp":Ljava/lang/String;
    .restart local v30    # "sub1_temp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1139
    .end local v25    # "sub1_undone":Z
    .local v0, "sub1_undone":Z
    nop

    .line 1117
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .end local v30    # "sub1_temp":Ljava/lang/String;
    .local v0, "sub1_temp":Ljava/lang/String;
    .local v2, "sub1_undone":Z
    .restart local v5    # "mComma":Ljava/util/regex/Matcher;
    :goto_4
    move v2, v0

    move-object/from16 v5, v27

    move-object/from16 v0, v30

    goto :goto_5

    .line 1140
    .end local v5    # "mComma":Ljava/util/regex/Matcher;
    .end local v13    # "sub2":Ljava/lang/String;
    .local v2, "mPre_uni":Ljava/util/regex/Matcher;
    .restart local v25    # "sub1_undone":Z
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local v29    # "sub2":Ljava/lang/String;
    :cond_b
    move-object/from16 v30, v0

    .end local v0    # "sub1_temp":Ljava/lang/String;
    .restart local v30    # "sub1_temp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1117
    .end local v25    # "sub1_undone":Z
    .local v2, "sub1_undone":Z
    move-object/from16 v5, v27

    move-object/from16 v13, v29

    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .end local v29    # "sub2":Ljava/lang/String;
    .end local v30    # "sub1_temp":Ljava/lang/String;
    .restart local v0    # "sub1_temp":Ljava/lang/String;
    .restart local v5    # "mComma":Ljava/util/regex/Matcher;
    .restart local v13    # "sub2":Ljava/lang/String;
    :goto_5
    const/4 v4, 0x2

    goto/16 :goto_2

    .line 1220
    .end local v0    # "sub1_temp":Ljava/lang/String;
    .end local v2    # "sub1_undone":Z
    :cond_c
    move-object/from16 v27, v5

    .end local v5    # "mComma":Ljava/util/regex/Matcher;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    move-object/from16 v34, v14

    goto/16 :goto_8

    .line 1174
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local v5    # "mComma":Ljava/util/regex/Matcher;
    :cond_d
    move-object/from16 v27, v5

    .end local v5    # "mComma":Ljava/util/regex/Matcher;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    move-object v0, v7

    .line 1175
    .restart local v0    # "sub1_temp":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1176
    .restart local v2    # "sub1_undone":Z
    :goto_6
    if-nez v2, :cond_34

    .line 1198
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10

    .line 1200
    invoke-direct {v6, v7}, Lcom/huawei/g11n/tmr/address/SerEn;->divStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1201
    .restart local v3    # "temp":[Ljava/lang/String;
    array-length v4, v3

    .line 1202
    .restart local v4    # "length":I
    const/4 v5, 0x4

    if-le v4, v5, :cond_e

    .line 1203
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v25, v4, -0x4

    move/from16 v31, v2

    aget-object v2, v3, v25

    .end local v2    # "sub1_undone":Z
    .local v31, "sub1_undone":Z
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v4, -0x3

    aget-object v2, v3, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    add-int/lit8 v2, v4, -0x2

    aget-object v2, v3, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, -0x1

    aget-object v2, v3, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    move-object/from16 v32, v3

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "temp":[Ljava/lang/String;
    .local v32, "temp":[Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1206
    iget-object v2, v6, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    .line 1207
    nop

    .line 1208
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 1209
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    .line 1210
    move-object/from16 v33, v13

    move-object/from16 v34, v14

    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .end local v13    # "sub2":Ljava/lang/String;
    .end local v14    # "sub_right":Ljava/lang/String;
    .local v33, "sub2":Ljava/lang/String;
    .restart local v34    # "sub_right":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v5, v13

    .line 1208
    sub-int/2addr v3, v5

    .line 1207
    add-int v5, v11, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    nop

    .line 1220
    .end local v0    # "sub1_temp":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v31    # "sub1_undone":Z
    .end local v32    # "temp":[Ljava/lang/String;
    .end local v33    # "sub2":Ljava/lang/String;
    .restart local v13    # "sub2":Ljava/lang/String;
    :goto_7
    move-object/from16 v13, v33

    goto :goto_8

    .line 1212
    .end local v34    # "sub_right":Ljava/lang/String;
    .restart local v0    # "sub1_temp":Ljava/lang/String;
    .restart local v2    # "sub1_undone":Z
    .restart local v3    # "temp":[Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v14    # "sub_right":Ljava/lang/String;
    :cond_e
    move/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    .end local v2    # "sub1_undone":Z
    .end local v3    # "temp":[Ljava/lang/String;
    .end local v13    # "sub2":Ljava/lang/String;
    .end local v14    # "sub_right":Ljava/lang/String;
    .restart local v31    # "sub1_undone":Z
    .restart local v32    # "temp":[Ljava/lang/String;
    .restart local v33    # "sub2":Ljava/lang/String;
    .restart local v34    # "sub_right":Ljava/lang/String;
    if-lez v4, :cond_f

    .line 1213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1214
    .end local v15    # "building":Ljava/lang/String;
    .local v2, "building":Ljava/lang/String;
    move-object v15, v2

    .end local v2    # "building":Ljava/lang/String;
    .restart local v15    # "building":Ljava/lang/String;
    :cond_f
    iget-object v2, v6, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "sub1_temp":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v31    # "sub1_undone":Z
    .end local v32    # "temp":[Ljava/lang/String;
    goto :goto_7

    .line 1220
    .end local v33    # "sub2":Ljava/lang/String;
    .end local v34    # "sub_right":Ljava/lang/String;
    .restart local v13    # "sub2":Ljava/lang/String;
    .restart local v14    # "sub_right":Ljava/lang/String;
    :cond_10
    move-object/from16 v33, v13

    move-object/from16 v34, v14

    .end local v14    # "sub_right":Ljava/lang/String;
    .restart local v34    # "sub_right":Ljava/lang/String;
    :goto_8
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    .line 1221
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1222
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1223
    .end local v15    # "building":Ljava/lang/String;
    .restart local v2    # "building":Ljava/lang/String;
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    .line 1224
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int v5, v11, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1223
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    move-object v15, v2

    .end local v2    # "building":Ljava/lang/String;
    .restart local v15    # "building":Ljava/lang/String;
    :cond_11
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 1229
    const/4 v0, 0x0

    .line 1232
    .local v0, "position":I
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v13

    .line 1234
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_12

    .line 1235
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_9

    .line 1234
    :cond_12
    const/4 v2, 0x0

    :goto_9
    move v14, v2

    .line 1236
    .end local v0    # "position":I
    .local v14, "position":I
    const/4 v2, 0x0

    invoke-virtual {v13, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "sub3":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    :cond_13
    invoke-direct {v6, v0}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1242
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v5, v11, v2

    .line 1244
    .local v5, "head_2":I
    invoke-direct {v6, v0, v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_dic(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1246
    .end local v23    # "results_3":[Ljava/lang/String;
    .local v2, "results_3":[Ljava/lang/String;
    const/4 v1, 0x2

    .line 1247
    .end local p3    # "left_state":I
    .local v1, "left_state":I
    const-string v3, ""

    .line 1251
    .end local v5    # "head_2":I
    .end local p2    # "sub_left":Ljava/lang/String;
    .local v3, "sub_left":Ljava/lang/String;
    move/from16 v23, v1

    move-object/from16 v25, v2

    move-object/from16 v17, v3

    goto :goto_a

    .end local v1    # "left_state":I
    .end local v2    # "results_3":[Ljava/lang/String;
    .end local v3    # "sub_left":Ljava/lang/String;
    .restart local v23    # "results_3":[Ljava/lang/String;
    .restart local p2    # "sub_left":Ljava/lang/String;
    .restart local p3    # "left_state":I
    :cond_14
    move-object/from16 v17, p2

    move-object/from16 v25, v23

    move/from16 v23, v1

    .end local p2    # "sub_left":Ljava/lang/String;
    .end local p3    # "left_state":I
    .local v17, "sub_left":Ljava/lang/String;
    .local v23, "left_state":I
    .local v25, "results_3":[Ljava/lang/String;
    :goto_a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1252
    .end local v0    # "sub3":Ljava/lang/String;
    .local v5, "sub3":Ljava/lang/String;
    invoke-direct {v6, v5}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1254
    const-string v16, ""

    .line 1255
    const-string v21, ""

    .line 1256
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->p52s:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1257
    .local v4, "m52s":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_23

    .line 1258
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 1260
    add-int/lit8 v18, v12, 0x1

    .local v18, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    .line 1261
    .end local v12    # "count":I
    nop

    .line 1262
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1263
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1261
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1264
    .end local v5    # "sub3":Ljava/lang/String;
    .local v12, "sub3":Ljava/lang/String;
    invoke-direct {v6, v12}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1266
    nop

    .line 1267
    nop

    .line 1268
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, v11, v0

    .line 1269
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1268
    add-int/2addr v5, v0

    .line 1266
    move-object v0, v6

    move-object v1, v12

    move-object/from16 v2, v17

    move/from16 v3, v23

    move/from16 v35, v14

    move-object v14, v4

    move/from16 v4, p4

    .end local v4    # "m52s":Ljava/util/regex/Matcher;
    .local v14, "m52s":Ljava/util/regex/Matcher;
    .local v35, "position":I
    move-object/from16 v26, v27

    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .local v26, "mComma":Ljava/util/regex/Matcher;
    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1273
    .end local v22    # "results_2":[Ljava/lang/String;
    .local v0, "results_2":[Ljava/lang/String;
    nop

    .line 1565
    .end local v7    # "sub1":Ljava/lang/String;
    .end local v13    # "sub2":Ljava/lang/String;
    .end local v14    # "m52s":Ljava/util/regex/Matcher;
    .end local v18    # "count":I
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v25    # "results_3":[Ljava/lang/String;
    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .end local v35    # "position":I
    .local v0, "results_3":[Ljava/lang/String;
    .local v1, "results_2":[Ljava/lang/String;
    .local v12, "count":I
    .local v42, "sub2":Ljava/lang/String;
    .local v43, "sub1":Ljava/lang/String;
    :goto_b
    move-object v1, v0

    move-object/from16 v43, v7

    move-object/from16 v42, v13

    goto/16 :goto_18

    .end local v0    # "results_3":[Ljava/lang/String;
    .end local v1    # "results_2":[Ljava/lang/String;
    .end local v12    # "count":I
    .end local v42    # "sub2":Ljava/lang/String;
    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v7    # "sub1":Ljava/lang/String;
    .restart local v13    # "sub2":Ljava/lang/String;
    .restart local v18    # "count":I
    .restart local v22    # "results_2":[Ljava/lang/String;
    .restart local v25    # "results_3":[Ljava/lang/String;
    :cond_15
    move-object/from16 v43, v7

    move-object/from16 v42, v13

    .end local v7    # "sub1":Ljava/lang/String;
    .end local v13    # "sub2":Ljava/lang/String;
    .end local v18    # "count":I
    .end local v22    # "results_2":[Ljava/lang/String;
    .end local v25    # "results_3":[Ljava/lang/String;
    .restart local v0    # "results_3":[Ljava/lang/String;
    .restart local v1    # "results_2":[Ljava/lang/String;
    .restart local v12    # "count":I
    .restart local v42    # "sub2":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    :cond_16
    move/from16 v12, v18

    goto/16 :goto_19

    .line 1274
    .end local v0    # "results_3":[Ljava/lang/String;
    .end local v1    # "results_2":[Ljava/lang/String;
    .end local v42    # "sub2":Ljava/lang/String;
    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v4    # "m52s":Ljava/util/regex/Matcher;
    .restart local v5    # "sub3":Ljava/lang/String;
    .restart local v7    # "sub1":Ljava/lang/String;
    .restart local v13    # "sub2":Ljava/lang/String;
    .local v14, "position":I
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local v22    # "results_2":[Ljava/lang/String;
    .restart local v25    # "results_3":[Ljava/lang/String;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    :cond_17
    move/from16 v35, v14

    move-object/from16 v26, v27

    move-object v14, v4

    .end local v4    # "m52s":Ljava/util/regex/Matcher;
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .local v14, "m52s":Ljava/util/regex/Matcher;
    .restart local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v35    # "position":I
    const/4 v0, 0x7

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1278
    add-int/lit8 v18, v12, 0x1

    .restart local v18    # "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1278
    aput-object v0, v9, v12

    .line 1280
    .end local v12    # "count":I
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1280
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1282
    .end local v5    # "sub3":Ljava/lang/String;
    .local v12, "sub3":Ljava/lang/String;
    invoke-direct {v6, v12}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1284
    nop

    .line 1285
    nop

    .line 1286
    nop

    .line 1287
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    .line 1286
    add-int v5, v11, v0

    .line 1288
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1289
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1286
    add-int/2addr v5, v0

    .line 1284
    move-object v0, v6

    move-object v1, v12

    move-object/from16 v2, v17

    move/from16 v3, v23

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1291
    .end local v22    # "results_2":[Ljava/lang/String;
    .local v0, "results_2":[Ljava/lang/String;
    goto :goto_b

    .line 1293
    .end local v0    # "results_2":[Ljava/lang/String;
    .end local v18    # "count":I
    .restart local v5    # "sub3":Ljava/lang/String;
    .local v12, "count":I
    .restart local v22    # "results_2":[Ljava/lang/String;
    :cond_18
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pCut:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1294
    .local v4, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1295
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1296
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1297
    .end local v21    # "cut":Ljava/lang/String;
    .local v3, "cut":Ljava/lang/String;
    goto :goto_d

    .line 1298
    .end local v3    # "cut":Ljava/lang/String;
    .restart local v21    # "cut":Ljava/lang/String;
    :cond_19
    const-string v0, ""

    .line 1299
    .end local v21    # "cut":Ljava/lang/String;
    .local v0, "cut":Ljava/lang/String;
    goto :goto_c

    .line 1300
    .end local v0    # "cut":Ljava/lang/String;
    .restart local v21    # "cut":Ljava/lang/String;
    :cond_1a
    const-string v0, ""

    .line 1302
    .end local v21    # "cut":Ljava/lang/String;
    .restart local v3    # "cut":Ljava/lang/String;
    :goto_c
    move-object v3, v0

    .line 1303
    :goto_d
    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1304
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 1305
    move-object/from16 v36, v3

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "cut":Ljava/lang/String;
    .local v36, "cut":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 1303
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1306
    nop

    .line 1302
    const/4 v1, 0x2

    invoke-virtual {v6, v0, v1}, Lcom/huawei/g11n/tmr/address/SerEn;->searCity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1308
    .end local v16    # "city":Ljava/lang/String;
    .local v3, "city":Ljava/lang/String;
    if-nez v3, :cond_1e

    .line 1310
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pPre_city:Ljava/util/regex/Pattern;

    .line 1311
    const/4 v1, 0x4

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1310
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1312
    .local v2, "mPre_city":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1313
    add-int/lit8 v0, v12, 0x1

    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v37, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "count":I
    .local v37, "count":I
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    aput-object v0, v9, v12

    .line 1315
    .end local v12    # "count":I
    nop

    .line 1316
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1317
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1315
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1318
    .end local v5    # "sub3":Ljava/lang/String;
    .local v0, "sub3":Ljava/lang/String;
    nop

    .line 1339
    move-object v12, v0

    move-object/from16 v41, v2

    goto/16 :goto_e

    .line 1319
    .end local v0    # "sub3":Ljava/lang/String;
    .end local v37    # "count":I
    .restart local v5    # "sub3":Ljava/lang/String;
    .restart local v12    # "count":I
    :cond_1b
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pSingle:Ljava/util/regex/Pattern;

    .line 1320
    const/4 v1, 0x3

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1319
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1321
    .local v0, "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1323
    add-int/lit8 v1, v12, 0x1

    .local v1, "count":I
    move-object/from16 v38, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "mSingle":Ljava/util/regex/Matcher;
    .local v38, "mSingle":Ljava/util/regex/Matcher;
    move/from16 v39, v1

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "count":I
    .local v39, "count":I
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1323
    aput-object v0, v9, v12

    .line 1325
    .end local v12    # "count":I
    nop

    .line 1326
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1327
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1325
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1328
    .end local v5    # "sub3":Ljava/lang/String;
    .local v0, "sub3":Ljava/lang/String;
    nop

    .line 1339
    move-object v12, v0

    move-object/from16 v41, v2

    move/from16 v37, v39

    goto :goto_e

    .line 1329
    .end local v38    # "mSingle":Ljava/util/regex/Matcher;
    .end local v39    # "count":I
    .local v0, "mSingle":Ljava/util/regex/Matcher;
    .restart local v5    # "sub3":Ljava/lang/String;
    .restart local v12    # "count":I
    :cond_1c
    move-object/from16 v38, v0

    .end local v0    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v38    # "mSingle":Ljava/util/regex/Matcher;
    add-int/lit8 v0, v12, 0x1

    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v40, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "count":I
    .local v40, "count":I
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1330
    move-object/from16 v41, v2

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "mPre_city":Ljava/util/regex/Matcher;
    .local v41, "mPre_city":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    aput-object v0, v9, v12

    .line 1332
    .end local v12    # "count":I
    nop

    .line 1333
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1334
    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1335
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1336
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1332
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1339
    .end local v5    # "sub3":Ljava/lang/String;
    .end local v38    # "mSingle":Ljava/util/regex/Matcher;
    .local v0, "sub3":Ljava/lang/String;
    move-object v12, v0

    move/from16 v37, v40

    .end local v0    # "sub3":Ljava/lang/String;
    .end local v40    # "count":I
    .local v12, "sub3":Ljava/lang/String;
    .restart local v37    # "count":I
    :goto_e
    invoke-direct {v6, v12}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1341
    nop

    .line 1342
    nop

    .line 1343
    nop

    .line 1344
    nop

    .line 1345
    nop

    .line 1346
    nop

    .line 1347
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 1348
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 1347
    sub-int/2addr v0, v1

    .line 1346
    add-int v5, v11, v0

    .line 1341
    move-object v0, v6

    move-object v1, v12

    move-object/from16 v16, v41

    move-object/from16 v2, v17

    .end local v41    # "mPre_city":Ljava/util/regex/Matcher;
    .local v16, "mPre_city":Ljava/util/regex/Matcher;
    move-object/from16 v43, v7

    move-object/from16 v42, v13

    move-object/from16 v13, v36

    move-object v7, v3

    move/from16 v3, v23

    .end local v3    # "city":Ljava/lang/String;
    .end local v36    # "cut":Ljava/lang/String;
    .local v7, "city":Ljava/lang/String;
    .local v13, "cut":Ljava/lang/String;
    .restart local v42    # "sub2":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    move-object/from16 v21, v4

    move/from16 v4, p4

    .end local v4    # "mCut":Ljava/util/regex/Matcher;
    .local v21, "mCut":Ljava/util/regex/Matcher;
    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1350
    .end local v22    # "results_2":[Ljava/lang/String;
    .local v0, "results_2":[Ljava/lang/String;
    nop

    .line 1565
    move-object v1, v0

    move-object/from16 v16, v7

    move-object/from16 v21, v13

    move-object/from16 v0, v25

    move/from16 v12, v37

    goto/16 :goto_1d

    .end local v0    # "results_2":[Ljava/lang/String;
    .end local v12    # "sub3":Ljava/lang/String;
    .end local v14    # "m52s":Ljava/util/regex/Matcher;
    .end local v16    # "mPre_city":Ljava/util/regex/Matcher;
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v21    # "mCut":Ljava/util/regex/Matcher;
    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .end local v35    # "position":I
    .end local v42    # "sub2":Ljava/lang/String;
    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v3    # "city":Ljava/lang/String;
    .local v7, "sub1":Ljava/lang/String;
    .local v13, "sub2":Ljava/lang/String;
    .restart local v22    # "results_2":[Ljava/lang/String;
    .restart local v36    # "cut":Ljava/lang/String;
    :cond_1d
    move-object/from16 v43, v7

    move-object/from16 v42, v13

    move-object/from16 v13, v36

    move-object v7, v3

    move-object/from16 v16, v7

    move-object/from16 v21, v13

    move-object/from16 v1, v22

    move-object/from16 v0, v25

    move/from16 v12, v37

    .end local v3    # "city":Ljava/lang/String;
    .end local v36    # "cut":Ljava/lang/String;
    .local v7, "city":Ljava/lang/String;
    .local v13, "cut":Ljava/lang/String;
    .restart local v42    # "sub2":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    goto/16 :goto_1d

    .line 1351
    .end local v37    # "count":I
    .end local v42    # "sub2":Ljava/lang/String;
    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v3    # "city":Ljava/lang/String;
    .restart local v4    # "mCut":Ljava/util/regex/Matcher;
    .restart local v5    # "sub3":Ljava/lang/String;
    .local v7, "sub1":Ljava/lang/String;
    .local v12, "count":I
    .local v13, "sub2":Ljava/lang/String;
    .restart local v14    # "m52s":Ljava/util/regex/Matcher;
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v35    # "position":I
    .restart local v36    # "cut":Ljava/lang/String;
    :cond_1e
    move-object/from16 v21, v4

    move-object/from16 v43, v7

    move-object/from16 v42, v13

    move-object/from16 v13, v36

    move-object v7, v3

    .end local v3    # "city":Ljava/lang/String;
    .end local v4    # "mCut":Ljava/util/regex/Matcher;
    .end local v36    # "cut":Ljava/lang/String;
    .local v7, "city":Ljava/lang/String;
    .local v13, "cut":Ljava/lang/String;
    .restart local v21    # "mCut":Ljava/util/regex/Matcher;
    .restart local v42    # "sub2":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .end local v7    # "city":Ljava/lang/String;
    .local v0, "city":Ljava/lang/String;
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    .line 1354
    const/4 v1, 0x5

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1356
    nop

    .line 1365
    .end local v0    # "city":Ljava/lang/String;
    .restart local v7    # "city":Ljava/lang/String;
    :cond_1f
    :goto_f
    move-object v7, v0

    goto :goto_10

    .line 1357
    .end local v7    # "city":Ljava/lang/String;
    .restart local v0    # "city":Ljava/lang/String;
    :cond_20
    const/4 v1, 0x5

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    .line 1358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1359
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1359
    goto :goto_f

    .line 1361
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1365
    .end local v0    # "city":Ljava/lang/String;
    .restart local v7    # "city":Ljava/lang/String;
    :goto_10
    add-int/lit8 v16, v12, 0x1

    .local v16, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1366
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    const/4 v1, 0x2

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    const/4 v1, 0x4

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1365
    aput-object v0, v9, v12

    .line 1369
    .end local v12    # "count":I
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1370
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1371
    const/4 v1, 0x2

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1372
    const/4 v1, 0x4

    invoke-virtual {v14, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1373
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1374
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1369
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1375
    .end local v5    # "sub3":Ljava/lang/String;
    .local v12, "sub3":Ljava/lang/String;
    invoke-direct {v6, v12}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1377
    nop

    .line 1378
    nop

    .line 1379
    nop

    .line 1380
    nop

    .line 1381
    nop

    .line 1382
    nop

    .line 1383
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 1384
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 1383
    sub-int/2addr v0, v1

    .line 1382
    add-int v5, v11, v0

    .line 1377
    move-object v0, v6

    move-object v1, v12

    move-object/from16 v2, v17

    move/from16 v3, v23

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1389
    .end local v21    # "mCut":Ljava/util/regex/Matcher;
    .end local v22    # "results_2":[Ljava/lang/String;
    .local v0, "results_2":[Ljava/lang/String;
    nop

    .line 1565
    move-object v1, v0

    move-object/from16 v21, v13

    move/from16 v12, v16

    goto :goto_11

    .end local v0    # "results_2":[Ljava/lang/String;
    .end local v12    # "sub3":Ljava/lang/String;
    .end local v14    # "m52s":Ljava/util/regex/Matcher;
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .end local v35    # "position":I
    .restart local v22    # "results_2":[Ljava/lang/String;
    :cond_22
    move-object/from16 v21, v13

    move/from16 v12, v16

    move-object/from16 v1, v22

    .end local v7    # "city":Ljava/lang/String;
    .end local v13    # "cut":Ljava/lang/String;
    .end local v22    # "results_2":[Ljava/lang/String;
    .end local v25    # "results_3":[Ljava/lang/String;
    .local v0, "results_3":[Ljava/lang/String;
    .local v1, "results_2":[Ljava/lang/String;
    .local v12, "count":I
    .local v16, "city":Ljava/lang/String;
    .local v21, "cut":Ljava/lang/String;
    :goto_11
    move-object/from16 v0, v25

    move-object/from16 v16, v7

    goto/16 :goto_1d

    .line 1391
    .end local v0    # "results_3":[Ljava/lang/String;
    .end local v1    # "results_2":[Ljava/lang/String;
    .end local v42    # "sub2":Ljava/lang/String;
    .end local v43    # "sub1":Ljava/lang/String;
    .local v4, "m52s":Ljava/util/regex/Matcher;
    .restart local v5    # "sub3":Ljava/lang/String;
    .local v7, "sub1":Ljava/lang/String;
    .local v13, "sub2":Ljava/lang/String;
    .local v14, "position":I
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local v22    # "results_2":[Ljava/lang/String;
    .restart local v25    # "results_3":[Ljava/lang/String;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    :cond_23
    move-object/from16 v43, v7

    move-object/from16 v42, v13

    move/from16 v35, v14

    move-object/from16 v26, v27

    move-object v14, v4

    .end local v4    # "m52s":Ljava/util/regex/Matcher;
    .end local v7    # "sub1":Ljava/lang/String;
    .end local v13    # "sub2":Ljava/lang/String;
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .local v14, "m52s":Ljava/util/regex/Matcher;
    .restart local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v35    # "position":I
    .restart local v42    # "sub2":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->p2s:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1392
    .local v7, "m2s":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1393
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    .line 1394
    add-int/lit8 v13, v12, 0x1

    .local v13, "count":I
    aput-object v15, v9, v12

    .line 1395
    .end local v12    # "count":I
    invoke-direct {v6, v5}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1397
    nop

    .line 1398
    nop

    .line 1399
    nop

    .line 1400
    nop

    .line 1401
    nop

    .line 1402
    nop

    .line 1403
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 1404
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 1403
    sub-int/2addr v0, v1

    .line 1402
    add-int v12, v11, v0

    .line 1397
    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v17

    move/from16 v3, v23

    move/from16 v4, p4

    move/from16 v44, v13

    move-object v13, v5

    move v5, v12

    .end local v5    # "sub3":Ljava/lang/String;
    .local v13, "sub3":Ljava/lang/String;
    .local v44, "count":I
    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1406
    .end local v22    # "results_2":[Ljava/lang/String;
    .local v0, "results_2":[Ljava/lang/String;
    nop

    .line 1565
    move-object v1, v0

    move-object/from16 v0, v25

    move/from16 v12, v44

    goto/16 :goto_1d

    .end local v0    # "results_2":[Ljava/lang/String;
    .end local v7    # "m2s":Ljava/util/regex/Matcher;
    .end local v14    # "m52s":Ljava/util/regex/Matcher;
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .end local v35    # "position":I
    .end local v44    # "count":I
    .local v13, "count":I
    .restart local v22    # "results_2":[Ljava/lang/String;
    :cond_24
    move/from16 v44, v13

    move-object/from16 v1, v22

    move-object/from16 v0, v25

    move/from16 v12, v44

    .end local v13    # "count":I
    .restart local v44    # "count":I
    goto/16 :goto_1d

    .line 1412
    .end local v44    # "count":I
    .restart local v5    # "sub3":Ljava/lang/String;
    .restart local v7    # "m2s":Ljava/util/regex/Matcher;
    .restart local v12    # "count":I
    .restart local v14    # "m52s":Ljava/util/regex/Matcher;
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v35    # "position":I
    :cond_25
    move-object v13, v5

    .end local v5    # "sub3":Ljava/lang/String;
    .local v13, "sub3":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1413
    add-int/lit8 v18, v12, 0x1

    .restart local v18    # "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1413
    aput-object v0, v9, v12

    .line 1415
    .end local v12    # "count":I
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1416
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    .line 1415
    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1417
    .end local v13    # "sub3":Ljava/lang/String;
    .local v12, "sub3":Ljava/lang/String;
    invoke-direct {v6, v12}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1419
    nop

    .line 1420
    nop

    .line 1421
    nop

    .line 1422
    nop

    .line 1423
    nop

    .line 1424
    nop

    .line 1425
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 1426
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 1425
    sub-int/2addr v0, v1

    .line 1424
    add-int v5, v11, v0

    .line 1419
    move-object v0, v6

    move-object v1, v12

    move-object/from16 v2, v17

    move/from16 v3, v23

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1428
    .end local v22    # "results_2":[Ljava/lang/String;
    .restart local v0    # "results_2":[Ljava/lang/String;
    goto/16 :goto_17

    .line 1430
    .end local v0    # "results_2":[Ljava/lang/String;
    .end local v18    # "count":I
    .local v12, "count":I
    .restart local v13    # "sub3":Ljava/lang/String;
    .restart local v22    # "results_2":[Ljava/lang/String;
    :cond_26
    iget-object v0, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pCut:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1431
    .local v5, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1432
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1433
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1434
    .end local v21    # "cut":Ljava/lang/String;
    .local v1, "cut":Ljava/lang/String;
    nop

    .line 1439
    move-object v4, v1

    goto :goto_13

    .line 1435
    .end local v1    # "cut":Ljava/lang/String;
    .restart local v21    # "cut":Ljava/lang/String;
    :cond_27
    const-string v0, ""

    .line 1436
    .end local v21    # "cut":Ljava/lang/String;
    .local v0, "cut":Ljava/lang/String;
    goto :goto_12

    .line 1437
    .end local v0    # "cut":Ljava/lang/String;
    .restart local v21    # "cut":Ljava/lang/String;
    :cond_28
    const-string v0, ""

    .line 1439
    .end local v21    # "cut":Ljava/lang/String;
    .local v4, "cut":Ljava/lang/String;
    :goto_12
    move-object v4, v0

    .line 1440
    :goto_13
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1441
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1442
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1443
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1440
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1444
    nop

    .line 1439
    const/4 v1, 0x2

    invoke-virtual {v6, v0, v1}, Lcom/huawei/g11n/tmr/address/SerEn;->searCity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .end local v16    # "city":Ljava/lang/String;
    .local v0, "city":Ljava/lang/String;
    if-nez v0, :cond_2b

    .line 1447
    iget-object v1, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pPre_city:Ljava/util/regex/Pattern;

    .line 1448
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1447
    nop

    .line 1449
    .local v1, "mPre_city":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1450
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1451
    nop

    .line 1483
    .end local v0    # "city":Ljava/lang/String;
    .end local v1    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v3    # "city":Ljava/lang/String;
    :goto_14
    move-object v3, v0

    goto/16 :goto_16

    .line 1452
    .end local v3    # "city":Ljava/lang/String;
    .restart local v0    # "city":Ljava/lang/String;
    .restart local v1    # "mPre_city":Ljava/util/regex/Matcher;
    :cond_29
    iget-object v2, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pSingle:Ljava/util/regex/Pattern;

    .line 1453
    nop

    .line 1454
    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1453
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1452
    nop

    .line 1455
    .local v2, "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1457
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1458
    goto :goto_14

    .line 1459
    :cond_2a
    const-string v0, ""

    .line 1462
    .end local v2    # "mSingle":Ljava/util/regex/Matcher;
    goto :goto_14

    .line 1463
    .end local v1    # "mPre_city":Ljava/util/regex/Matcher;
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1465
    const/4 v1, 0x6

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 1466
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 1467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1469
    goto :goto_15

    .line 1470
    :cond_2c
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 1471
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1472
    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    const/4 v2, 0x6

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1473
    goto :goto_15

    .line 1475
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1476
    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    const/4 v2, 0x6

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1481
    :cond_2e
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 1483
    .end local v0    # "city":Ljava/lang/String;
    .restart local v3    # "city":Ljava/lang/String;
    :goto_16
    add-int/lit8 v16, v12, 0x1

    .local v16, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    .line 1484
    .end local v12    # "count":I
    nop

    .line 1485
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1486
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    .line 1484
    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1487
    .end local v13    # "sub3":Ljava/lang/String;
    .local v12, "sub3":Ljava/lang/String;
    invoke-direct {v6, v12}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1489
    nop

    .line 1490
    nop

    .line 1491
    nop

    .line 1492
    nop

    .line 1493
    nop

    .line 1494
    nop

    .line 1495
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 1496
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 1495
    sub-int/2addr v0, v1

    .line 1494
    add-int v13, v11, v0

    .line 1489
    move-object v0, v6

    move-object v1, v12

    move-object/from16 v2, v17

    move-object/from16 v18, v3

    move/from16 v3, v23

    .end local v3    # "city":Ljava/lang/String;
    .local v18, "city":Ljava/lang/String;
    move-object/from16 v21, v4

    move/from16 v4, p4

    .end local v4    # "cut":Ljava/lang/String;
    .restart local v21    # "cut":Ljava/lang/String;
    move-object/from16 v24, v5

    move v5, v13

    .end local v5    # "mCut":Ljava/util/regex/Matcher;
    .local v24, "mCut":Ljava/util/regex/Matcher;
    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1500
    .end local v22    # "results_2":[Ljava/lang/String;
    .end local v24    # "mCut":Ljava/util/regex/Matcher;
    .local v0, "results_2":[Ljava/lang/String;
    nop

    .line 1565
    move-object v1, v0

    move/from16 v12, v16

    move-object/from16 v16, v18

    goto :goto_1a

    .end local v0    # "results_2":[Ljava/lang/String;
    .end local v7    # "m2s":Ljava/util/regex/Matcher;
    .end local v12    # "sub3":Ljava/lang/String;
    .end local v14    # "m52s":Ljava/util/regex/Matcher;
    .end local v18    # "city":Ljava/lang/String;
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v21    # "cut":Ljava/lang/String;
    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .end local v35    # "position":I
    .restart local v3    # "city":Ljava/lang/String;
    .restart local v4    # "cut":Ljava/lang/String;
    .restart local v22    # "results_2":[Ljava/lang/String;
    :cond_2f
    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move/from16 v12, v16

    move-object/from16 v16, v18

    move-object/from16 v1, v22

    move-object/from16 v0, v25

    .end local v3    # "city":Ljava/lang/String;
    .end local v4    # "cut":Ljava/lang/String;
    .restart local v18    # "city":Ljava/lang/String;
    .restart local v21    # "cut":Ljava/lang/String;
    goto/16 :goto_1d

    .line 1502
    .end local v18    # "city":Ljava/lang/String;
    .local v5, "sub3":Ljava/lang/String;
    .restart local v7    # "m2s":Ljava/util/regex/Matcher;
    .local v12, "count":I
    .restart local v14    # "m52s":Ljava/util/regex/Matcher;
    .local v16, "city":Ljava/lang/String;
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v35    # "position":I
    :cond_30
    move-object v13, v5

    .end local v5    # "sub3":Ljava/lang/String;
    .restart local v13    # "sub3":Ljava/lang/String;
    add-int/lit8 v18, v12, 0x1

    .local v18, "count":I
    aput-object v15, v9, v12

    .line 1503
    .end local v12    # "count":I
    nop

    .line 1504
    nop

    .line 1505
    nop

    .line 1506
    nop

    .line 1507
    nop

    .line 1508
    nop

    .line 1509
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 1510
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    .line 1509
    sub-int/2addr v0, v1

    .line 1508
    add-int v5, v11, v0

    .line 1503
    move-object v0, v6

    move-object v1, v13

    move-object/from16 v2, v17

    move/from16 v3, v23

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1513
    .end local v7    # "m2s":Ljava/util/regex/Matcher;
    .end local v14    # "m52s":Ljava/util/regex/Matcher;
    .end local v22    # "results_2":[Ljava/lang/String;
    .restart local v0    # "results_2":[Ljava/lang/String;
    nop

    .line 1565
    .end local v13    # "sub3":Ljava/lang/String;
    .end local v18    # "count":I
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v25    # "results_3":[Ljava/lang/String;
    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .end local v35    # "position":I
    .local v0, "results_3":[Ljava/lang/String;
    .local v1, "results_2":[Ljava/lang/String;
    .restart local v12    # "count":I
    :goto_17
    move-object v1, v0

    :goto_18
    move/from16 v12, v18

    goto :goto_1a

    .line 1515
    .end local v0    # "results_3":[Ljava/lang/String;
    .end local v1    # "results_2":[Ljava/lang/String;
    .end local v42    # "sub2":Ljava/lang/String;
    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v5    # "sub3":Ljava/lang/String;
    .local v7, "sub1":Ljava/lang/String;
    .local v13, "sub2":Ljava/lang/String;
    .local v14, "position":I
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local v22    # "results_2":[Ljava/lang/String;
    .restart local v25    # "results_3":[Ljava/lang/String;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    :cond_31
    move-object/from16 v43, v7

    move-object/from16 v42, v13

    move/from16 v35, v14

    move-object/from16 v26, v27

    move-object v13, v5

    .end local v5    # "sub3":Ljava/lang/String;
    .end local v7    # "sub1":Ljava/lang/String;
    .end local v14    # "position":I
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .local v13, "sub3":Ljava/lang/String;
    .restart local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v35    # "position":I
    .restart local v42    # "sub2":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    add-int/lit8 v0, v12, 0x1

    .local v0, "count":I
    aput-object v15, v9, v12

    .line 1518
    .end local v12    # "count":I
    .end local v13    # "sub3":Ljava/lang/String;
    .end local v35    # "position":I
    nop

    .line 1565
    move v12, v0

    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v22    # "results_2":[Ljava/lang/String;
    .end local v25    # "results_3":[Ljava/lang/String;
    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .local v0, "results_3":[Ljava/lang/String;
    .restart local v1    # "results_2":[Ljava/lang/String;
    .restart local v12    # "count":I
    :goto_19
    move-object/from16 v1, v22

    :goto_1a
    move-object/from16 v0, v25

    goto/16 :goto_1d

    .line 1521
    .end local v0    # "results_3":[Ljava/lang/String;
    .end local v1    # "results_2":[Ljava/lang/String;
    .end local v17    # "sub_left":Ljava/lang/String;
    .end local v42    # "sub2":Ljava/lang/String;
    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v7    # "sub1":Ljava/lang/String;
    .local v13, "sub2":Ljava/lang/String;
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local v22    # "results_2":[Ljava/lang/String;
    .local v23, "results_3":[Ljava/lang/String;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local p2    # "sub_left":Ljava/lang/String;
    .restart local p3    # "left_state":I
    :cond_32
    move-object/from16 v43, v7

    move-object/from16 v26, v27

    .end local v7    # "sub1":Ljava/lang/String;
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v43    # "sub1":Ljava/lang/String;
    const/4 v7, 0x1

    .line 1522
    .end local p3    # "left_state":I
    .local v7, "left_state":I
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 1523
    .end local p2    # "sub_left":Ljava/lang/String;
    .local v14, "sub_left":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    .line 1524
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    .line 1523
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1525
    .end local v34    # "sub_right":Ljava/lang/String;
    .local v5, "sub_right":Ljava/lang/String;
    invoke-direct {v6, v5}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1526
    nop

    .line 1527
    nop

    .line 1528
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v17, v11, v0

    .line 1526
    move-object v0, v6

    move-object v1, v5

    move-object v2, v14

    move v3, v7

    move/from16 v4, p4

    move-object/from16 v18, v5

    move/from16 v5, v17

    .end local v5    # "sub_right":Ljava/lang/String;
    .local v18, "sub_right":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1531
    .end local v22    # "results_2":[Ljava/lang/String;
    .local v0, "results_2":[Ljava/lang/String;
    nop

    .line 1565
    move-object v1, v0

    move-object/from16 v42, v13

    move-object/from16 v17, v14

    move-object/from16 v34, v18

    move-object/from16 v0, v23

    move/from16 v23, v7

    goto/16 :goto_1d

    .end local v0    # "results_2":[Ljava/lang/String;
    .end local v18    # "sub_right":Ljava/lang/String;
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v5    # "sub_right":Ljava/lang/String;
    .restart local v22    # "results_2":[Ljava/lang/String;
    :cond_33
    move-object/from16 v18, v5

    move-object/from16 v42, v13

    move-object/from16 v17, v14

    move-object/from16 v34, v18

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    move/from16 v23, v7

    .end local v5    # "sub_right":Ljava/lang/String;
    .restart local v18    # "sub_right":Ljava/lang/String;
    goto/16 :goto_1d

    .line 1177
    .end local v18    # "sub_right":Ljava/lang/String;
    .end local v43    # "sub1":Ljava/lang/String;
    .local v0, "sub1_temp":Ljava/lang/String;
    .local v2, "sub1_undone":Z
    .local v7, "sub1":Ljava/lang/String;
    .local v14, "sub_right":Ljava/lang/String;
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local p2    # "sub_left":Ljava/lang/String;
    .restart local p3    # "left_state":I
    :cond_34
    move/from16 v31, v2

    move-object/from16 v43, v7

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v26, v27

    const/4 v2, 0x0

    const/4 v3, 0x3

    .end local v2    # "sub1_undone":Z
    .end local v7    # "sub1":Ljava/lang/String;
    .end local v13    # "sub2":Ljava/lang/String;
    .end local v14    # "sub_right":Ljava/lang/String;
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v31    # "sub1_undone":Z
    .restart local v33    # "sub2":Ljava/lang/String;
    .restart local v34    # "sub_right":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    iget-object v4, v6, Lcom/huawei/g11n/tmr/address/SerEn;->pPre_uni:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1178
    .local v4, "mPre_uni":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1180
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 1181
    .end local v33    # "sub2":Ljava/lang/String;
    .restart local v13    # "sub2":Ljava/lang/String;
    if-eqz v13, :cond_36

    invoke-direct {v6, v13}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1183
    invoke-direct {v6, v13}, Lcom/huawei/g11n/tmr/address/SerEn;->divStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1184
    .local v5, "temp":[Ljava/lang/String;
    array-length v7, v5

    const/4 v14, 0x4

    if-gt v7, v14, :cond_35

    .line 1185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1186
    iget-object v3, v6, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    .line 1187
    move-object/from16 v7, v43

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    .line 1188
    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v7    # "sub1":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v24

    .line 1187
    sub-int v17, v17, v24

    add-int v2, v11, v17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1186
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    const/4 v2, 0x0

    .line 1190
    .end local v31    # "sub1_undone":Z
    .restart local v2    # "sub1_undone":Z
    goto :goto_1b

    .line 1191
    .end local v2    # "sub1_undone":Z
    .end local v7    # "sub1":Ljava/lang/String;
    .restart local v31    # "sub1_undone":Z
    .restart local v43    # "sub1":Ljava/lang/String;
    :cond_35
    move-object/from16 v7, v43

    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v7    # "sub1":Ljava/lang/String;
    move-object v0, v13

    .line 1192
    nop

    .line 1176
    move-object/from16 v27, v26

    move/from16 v2, v31

    goto :goto_1c

    .line 1193
    .end local v5    # "temp":[Ljava/lang/String;
    .end local v7    # "sub1":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    :cond_36
    move-object/from16 v7, v43

    const/4 v14, 0x4

    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v7    # "sub1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1195
    .end local v31    # "sub1_undone":Z
    .restart local v2    # "sub1_undone":Z
    nop

    .line 1176
    .end local v4    # "mPre_uni":Ljava/util/regex/Matcher;
    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .end local v34    # "sub_right":Ljava/lang/String;
    .restart local v14    # "sub_right":Ljava/lang/String;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    :goto_1b
    move-object/from16 v27, v26

    goto :goto_1c

    .line 1196
    .end local v2    # "sub1_undone":Z
    .end local v7    # "sub1":Ljava/lang/String;
    .end local v13    # "sub2":Ljava/lang/String;
    .end local v14    # "sub_right":Ljava/lang/String;
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .restart local v4    # "mPre_uni":Ljava/util/regex/Matcher;
    .restart local v26    # "mComma":Ljava/util/regex/Matcher;
    .restart local v31    # "sub1_undone":Z
    .restart local v33    # "sub2":Ljava/lang/String;
    .restart local v34    # "sub_right":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    :cond_37
    move-object/from16 v7, v43

    const/4 v14, 0x4

    .end local v43    # "sub1":Ljava/lang/String;
    .restart local v7    # "sub1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1176
    .end local v4    # "mPre_uni":Ljava/util/regex/Matcher;
    .end local v31    # "sub1_undone":Z
    .restart local v2    # "sub1_undone":Z
    move-object/from16 v27, v26

    move-object/from16 v13, v33

    .end local v26    # "mComma":Ljava/util/regex/Matcher;
    .end local v33    # "sub2":Ljava/lang/String;
    .end local v34    # "sub_right":Ljava/lang/String;
    .restart local v13    # "sub2":Ljava/lang/String;
    .restart local v14    # "sub_right":Ljava/lang/String;
    .restart local v27    # "mComma":Ljava/util/regex/Matcher;
    :goto_1c
    move-object/from16 v14, v34

    goto/16 :goto_6

    .line 1548
    .end local v0    # "sub1_temp":Ljava/lang/String;
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v21    # "cut":Ljava/lang/String;
    .end local v22    # "results_2":[Ljava/lang/String;
    .end local v23    # "results_3":[Ljava/lang/String;
    .end local v27    # "mComma":Ljava/util/regex/Matcher;
    .local v2, "mNo":Ljava/util/regex/Matcher;
    .local v3, "sub1":Ljava/lang/String;
    .local v4, "mLocation":Ljava/util/regex/Matcher;
    .local v5, "head":I
    .local v7, "cut":Ljava/lang/String;
    .local v10, "results_2":[Ljava/lang/String;
    .local v11, "results_3":[Ljava/lang/String;
    :cond_38
    move-object/from16 v19, v2

    move-object/from16 v21, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v34, v14

    move-object v7, v3

    move-object v10, v4

    move v11, v5

    .end local v2    # "mNo":Ljava/util/regex/Matcher;
    .end local v3    # "sub1":Ljava/lang/String;
    .end local v4    # "mLocation":Ljava/util/regex/Matcher;
    .end local v5    # "head":I
    .end local v14    # "sub_right":Ljava/lang/String;
    .local v7, "sub1":Ljava/lang/String;
    .local v10, "mLocation":Ljava/util/regex/Matcher;
    .local v11, "head":I
    .restart local v19    # "mNo":Ljava/util/regex/Matcher;
    .restart local v21    # "cut":Ljava/lang/String;
    .restart local v22    # "results_2":[Ljava/lang/String;
    .restart local v23    # "results_3":[Ljava/lang/String;
    .restart local v34    # "sub_right":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 1549
    .end local p2    # "sub_left":Ljava/lang/String;
    .local v14, "sub_left":Ljava/lang/String;
    const/16 v17, 0x1

    .line 1550
    .end local p3    # "left_state":I
    .local v17, "left_state":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1551
    .end local v34    # "sub_right":Ljava/lang/String;
    .local v5, "sub_right":Ljava/lang/String;
    invoke-direct {v6, v5}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1552
    nop

    .line 1553
    nop

    .line 1554
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v18, v11, v0

    .line 1552
    move-object v0, v6

    move-object v1, v5

    move-object v2, v14

    move/from16 v3, v17

    move/from16 v4, p4

    move-object/from16 v24, v5

    move/from16 v5, v18

    .end local v5    # "sub_right":Ljava/lang/String;
    .local v24, "sub_right":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1557
    .end local v22    # "results_2":[Ljava/lang/String;
    .local v0, "results_2":[Ljava/lang/String;
    nop

    .line 1565
    move-object v1, v0

    move-object/from16 v43, v7

    move-object/from16 v42, v13

    move-object/from16 v0, v23

    move-object/from16 v34, v24

    move/from16 v23, v17

    move-object/from16 v17, v14

    goto :goto_1d

    .end local v0    # "results_2":[Ljava/lang/String;
    .end local v19    # "mNo":Ljava/util/regex/Matcher;
    .end local v24    # "sub_right":Ljava/lang/String;
    .restart local v5    # "sub_right":Ljava/lang/String;
    .restart local v22    # "results_2":[Ljava/lang/String;
    :cond_39
    move-object/from16 v24, v5

    move-object/from16 v43, v7

    move-object/from16 v42, v13

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    move-object/from16 v34, v24

    move/from16 v23, v17

    move-object/from16 v17, v14

    .end local v5    # "sub_right":Ljava/lang/String;
    .restart local v24    # "sub_right":Ljava/lang/String;
    goto :goto_1d

    .line 1560
    .end local v17    # "left_state":I
    .end local v21    # "cut":Ljava/lang/String;
    .end local v22    # "results_2":[Ljava/lang/String;
    .end local v23    # "results_3":[Ljava/lang/String;
    .end local v24    # "sub_right":Ljava/lang/String;
    .restart local v3    # "sub1":Ljava/lang/String;
    .restart local v4    # "mLocation":Ljava/util/regex/Matcher;
    .local v5, "head":I
    .local v7, "cut":Ljava/lang/String;
    .local v10, "results_2":[Ljava/lang/String;
    .local v11, "results_3":[Ljava/lang/String;
    .local v14, "sub_right":Ljava/lang/String;
    .restart local p2    # "sub_left":Ljava/lang/String;
    .restart local p3    # "left_state":I
    :cond_3a
    move-object/from16 v21, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v34, v14

    move-object v10, v4

    move v11, v5

    .end local v4    # "mLocation":Ljava/util/regex/Matcher;
    .end local v5    # "head":I
    .end local v7    # "cut":Ljava/lang/String;
    .end local v14    # "sub_right":Ljava/lang/String;
    .local v10, "mLocation":Ljava/util/regex/Matcher;
    .local v11, "head":I
    .restart local v21    # "cut":Ljava/lang/String;
    .restart local v22    # "results_2":[Ljava/lang/String;
    .restart local v23    # "results_3":[Ljava/lang/String;
    .restart local v34    # "sub_right":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3b

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1563
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v5, v11, v0

    invoke-direct {v6, v8, v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_dic(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1565
    .end local v22    # "results_2":[Ljava/lang/String;
    .restart local v0    # "results_2":[Ljava/lang/String;
    move-object/from16 v17, p2

    move-object/from16 v43, v3

    move-object/from16 v42, v13

    move/from16 v45, v1

    move-object v1, v0

    move-object/from16 v0, v23

    move/from16 v23, v45

    .end local v3    # "sub1":Ljava/lang/String;
    .end local v13    # "sub2":Ljava/lang/String;
    .end local p2    # "sub_left":Ljava/lang/String;
    .end local p3    # "left_state":I
    .local v0, "results_3":[Ljava/lang/String;
    .restart local v1    # "results_2":[Ljava/lang/String;
    .local v17, "sub_left":Ljava/lang/String;
    .local v23, "left_state":I
    .restart local v42    # "sub2":Ljava/lang/String;
    .restart local v43    # "sub1":Ljava/lang/String;
    :goto_1d
    array-length v2, v0

    if-lez v2, :cond_3d

    .line 1566
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1e
    array-length v3, v0

    if-lt v2, v3, :cond_3c

    .end local v2    # "index":I
    goto :goto_1f

    .line 1567
    .restart local v2    # "index":I
    :cond_3c
    add-int/lit8 v3, v12, 0x1

    .local v3, "count":I
    aget-object v4, v0, v2

    aput-object v4, v9, v12

    .line 1566
    .end local v12    # "count":I
    add-int/lit8 v2, v2, 0x1

    move v12, v3

    goto :goto_1e

    .line 1570
    .end local v2    # "index":I
    .end local v3    # "count":I
    .restart local v12    # "count":I
    :cond_3d
    :goto_1f
    array-length v2, v1

    if-lez v2, :cond_3f

    .line 1571
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_20
    array-length v3, v1

    if-lt v2, v3, :cond_3e

    .end local v2    # "index":I
    goto :goto_21

    .line 1572
    .restart local v2    # "index":I
    :cond_3e
    add-int/lit8 v3, v12, 0x1

    .restart local v3    # "count":I
    aget-object v4, v1, v2

    aput-object v4, v9, v12

    .line 1571
    .end local v12    # "count":I
    add-int/lit8 v2, v2, 0x1

    move v12, v3

    goto :goto_20

    .line 1575
    .end local v2    # "index":I
    .end local v3    # "count":I
    .restart local v12    # "count":I
    :cond_3f
    :goto_21
    const/16 v2, 0x8

    if-ge v12, v2, :cond_41

    .line 1576
    new-array v2, v12, [Ljava/lang/String;

    .line 1577
    .local v2, "re":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_22
    if-lt v3, v12, :cond_40

    .line 1580
    .end local v3    # "index":I
    return-object v2

    .line 1578
    .restart local v3    # "index":I
    :cond_40
    aget-object v4, v9, v3

    aput-object v4, v2, v3

    .line 1577
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1582
    .end local v2    # "re":[Ljava/lang/String;
    .end local v3    # "index":I
    :cond_41
    return-object v9
.end method

.method private searSpot(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 38
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "head"    # I

    move-object/from16 v0, p0

    .line 792
    const/4 v1, 0x0

    .line 793
    .local v1, "count":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 794
    .local v2, "length":I
    const/4 v3, 0x0

    .line 795
    .local v3, "length_bracket":I
    move/from16 v4, p2

    .line 796
    .local v4, "head_0":I
    const-string v5, ""

    .line 797
    .local v5, "city":Ljava/lang/String;
    const/16 v6, 0x8

    new-array v7, v6, [Ljava/lang/String;

    .line 798
    .local v7, "results":[Ljava/lang/String;
    const-string v8, ""

    .line 799
    .local v8, "s_right":Ljava/lang/String;
    const-string v9, ""

    .line 800
    .local v9, "building":Ljava/lang/String;
    move-object/from16 v10, p1

    .line 801
    .local v10, "str":Ljava/lang/String;
    const/4 v11, 0x0

    .line 804
    .local v11, "position":I
    const-string v12, "(\\s*[,.]?\\s*(?:(?i)(?:in|on|at|from|of)\\s+)?(?:(?i)(uptown|downtown)\\s+)?)?[\\s\\S]*"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 803
    nop

    .line 808
    .local v12, "pCut":Ljava/util/regex/Pattern;
    const-string v13, "(?:\\.)?\\s*,\\s*[A-Z][a-z]+(?:\\s*(?:[,.)\"\'])\\s*)*"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 807
    nop

    .line 811
    .local v13, "pSingle":Ljava/util/regex/Pattern;
    const-string v14, "(?:\\s*(?:,|\\.){0,2}\\s*\\b(?i)(?:in)\\b(.*))"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 810
    nop

    .line 813
    .local v14, "pPre_city":Ljava/util/regex/Pattern;
    const-string v15, ""

    .line 815
    .local v15, "cut":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    .line 816
    .local v16, "full":I
    const/16 v17, 0x0

    .local v17, "index":I
    move/from16 v18, v3

    move v3, v1

    move/from16 v1, v17

    move-object/from16 v17, v15

    move-object v15, v9

    move-object v9, v8

    move-object v8, v5

    move/from16 v5, p2

    .end local p2    # "head":I
    .local v1, "index":I
    .local v3, "count":I
    .local v5, "head":I
    .local v8, "city":Ljava/lang/String;
    .local v9, "s_right":Ljava/lang/String;
    .local v15, "building":Ljava/lang/String;
    .local v17, "cut":Ljava/lang/String;
    .local v18, "length_bracket":I
    :goto_0
    if-lt v1, v2, :cond_2

    .line 988
    .end local v1    # "index":I
    if-ge v3, v6, :cond_1

    .line 989
    new-array v1, v3, [Ljava/lang/String;

    .line 990
    .local v1, "re":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-lt v6, v3, :cond_0

    .line 993
    .end local v6    # "index":I
    return-object v1

    .line 991
    .restart local v6    # "index":I
    :cond_0
    aget-object v19, v7, v6

    aput-object v19, v1, v6

    .line 990
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 995
    .end local v1    # "re":[Ljava/lang/String;
    .end local v6    # "index":I
    :cond_1
    return-object v7

    .line 817
    .local v1, "index":I
    :cond_2
    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 818
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    sub-int v19, v16, v19

    add-int v5, v4, v19

    .line 819
    sub-int/2addr v2, v1

    .line 820
    const/4 v1, 0x0

    .line 821
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move/from16 v20, v4

    const/4 v4, 0x2

    .end local v4    # "head_0":I
    .local v20, "head_0":I
    invoke-static {v4, v6}, Lcom/huawei/g11n/tmr/address/jni/DicSearch;->dicsearch(ILjava/lang/String;)I

    move-result v11

    .line 822
    if-nez v11, :cond_7

    .line 823
    :goto_2
    if-ge v1, v2, :cond_6

    .line 824
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x61

    if-lt v4, v6, :cond_3

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x7a

    if-le v4, v6, :cond_5

    .line 825
    :cond_3
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x41

    if-lt v4, v6, :cond_4

    .line 826
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5a

    if-le v4, v6, :cond_5

    .line 827
    :cond_4
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x30

    if-lt v4, v6, :cond_6

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x39

    .line 823
    if-le v4, v6, :cond_5

    .line 830
    goto :goto_3

    .line 828
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 816
    :cond_6
    :goto_3
    move/from16 v21, v2

    move-object/from16 v28, v10

    move/from16 v29, v11

    move v10, v3

    const/4 v3, 0x1

    goto/16 :goto_e

    .line 831
    :cond_7
    const/4 v6, 0x0

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 832
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v10, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 833
    .end local v9    # "s_right":Ljava/lang/String;
    .local v4, "s_right":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/huawei/g11n/tmr/address/SerEn;->searchBracket(Ljava/lang/String;)I

    move-result v9

    .line 834
    .end local v18    # "length_bracket":I
    .local v9, "length_bracket":I
    if-lez v9, :cond_8

    .line 835
    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v21, v2

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "length":I
    .local v21, "length":I
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 836
    nop

    .line 837
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 836
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 840
    .end local v21    # "length":I
    .restart local v2    # "length":I
    :cond_8
    move/from16 v21, v2

    .end local v2    # "length":I
    .restart local v21    # "length":I
    :goto_4
    const-string v2, ""

    .line 841
    .end local v8    # "city":Ljava/lang/String;
    .local v2, "city":Ljava/lang/String;
    const-string v6, ""

    .line 842
    .end local v17    # "cut":Ljava/lang/String;
    .local v6, "cut":Ljava/lang/String;
    iget-object v8, v0, Lcom/huawei/g11n/tmr/address/SerEn;->p52s:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 843
    .local v8, "m52s":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v17

    move-object/from16 v22, v2

    .end local v2    # "city":Ljava/lang/String;
    .local v22, "city":Ljava/lang/String;
    const/4 v2, 0x6

    if-eqz v17, :cond_13

    .line 844
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_9

    .line 845
    add-int/lit8 v2, v3, 0x1

    .local v2, "count":I
    move/from16 v23, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "count":I
    .local v23, "count":I
    move-object/from16 v24, v6

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .end local v6    # "cut":Ljava/lang/String;
    .local v24, "cut":Ljava/lang/String;
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    .line 846
    .end local v3    # "count":I
    iget-object v2, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    nop

    .line 983
    move-object/from16 v34, v4

    move/from16 v27, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move/from16 v10, v23

    goto/16 :goto_d

    .line 848
    .end local v23    # "count":I
    .end local v24    # "cut":Ljava/lang/String;
    .restart local v3    # "count":I
    .restart local v6    # "cut":Ljava/lang/String;
    :cond_9
    move-object/from16 v24, v6

    .end local v6    # "cut":Ljava/lang/String;
    .restart local v24    # "cut":Ljava/lang/String;
    const/4 v6, 0x7

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 849
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "count":I
    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v25, v2

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "count":I
    .local v25, "count":I
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    .line 850
    .end local v3    # "count":I
    iget-object v2, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    nop

    .line 983
    move-object/from16 v34, v4

    move/from16 v27, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    move/from16 v10, v25

    goto/16 :goto_d

    .line 853
    .end local v25    # "count":I
    .restart local v3    # "count":I
    :cond_a
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 854
    .local v6, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 855
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 856
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 857
    .end local v24    # "cut":Ljava/lang/String;
    .restart local v17    # "cut":Ljava/lang/String;
    nop

    .line 862
    move-object/from16 v2, v17

    goto :goto_5

    .line 858
    .end local v17    # "cut":Ljava/lang/String;
    .restart local v24    # "cut":Ljava/lang/String;
    :cond_b
    const-string v2, ""

    .line 859
    .end local v24    # "cut":Ljava/lang/String;
    .local v2, "cut":Ljava/lang/String;
    goto :goto_5

    .line 860
    .end local v2    # "cut":Ljava/lang/String;
    .restart local v24    # "cut":Ljava/lang/String;
    :cond_c
    const-string v2, ""

    .line 862
    .end local v24    # "cut":Ljava/lang/String;
    .restart local v2    # "cut":Ljava/lang/String;
    :goto_5
    nop

    .line 863
    move-object/from16 v26, v6

    move/from16 v27, v9

    const/4 v6, 0x6

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .end local v6    # "mCut":Ljava/util/regex/Matcher;
    .end local v9    # "length_bracket":I
    .local v26, "mCut":Ljava/util/regex/Matcher;
    .local v27, "length_bracket":I
    move-object/from16 v28, v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    .line 864
    .end local v10    # "str":Ljava/lang/String;
    .local v28, "str":Ljava/lang/String;
    move/from16 v29, v11

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .end local v11    # "position":I
    .local v29, "position":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 863
    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 864
    nop

    .line 862
    const/4 v9, 0x2

    invoke-virtual {v0, v6, v9}, Lcom/huawei/g11n/tmr/address/SerEn;->searCity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 865
    .end local v22    # "city":Ljava/lang/String;
    .local v6, "city":Ljava/lang/String;
    if-nez v6, :cond_f

    .line 867
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 868
    .local v9, "mPre_city":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 869
    add-int/lit8 v10, v3, 0x1

    .local v10, "count":I
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v30, v9

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "mPre_city":Ljava/util/regex/Matcher;
    .local v30, "mPre_city":Ljava/util/regex/Matcher;
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    .line 870
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    nop

    .line 983
    .end local v2    # "cut":Ljava/lang/String;
    .end local v4    # "s_right":Ljava/lang/String;
    .end local v6    # "city":Ljava/lang/String;
    .end local v26    # "mCut":Ljava/util/regex/Matcher;
    .end local v30    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v22    # "city":Ljava/lang/String;
    .restart local v24    # "cut":Ljava/lang/String;
    .local v34, "s_right":Ljava/lang/String;
    :goto_6
    move-object/from16 v24, v2

    move-object/from16 v34, v4

    move-object/from16 v22, v6

    goto/16 :goto_d

    .line 872
    .end local v10    # "count":I
    .end local v22    # "city":Ljava/lang/String;
    .end local v24    # "cut":Ljava/lang/String;
    .end local v34    # "s_right":Ljava/lang/String;
    .restart local v2    # "cut":Ljava/lang/String;
    .restart local v3    # "count":I
    .restart local v4    # "s_right":Ljava/lang/String;
    .restart local v6    # "city":Ljava/lang/String;
    .restart local v9    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v26    # "mCut":Ljava/util/regex/Matcher;
    :cond_d
    move-object/from16 v30, v9

    .end local v9    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v30    # "mPre_city":Ljava/util/regex/Matcher;
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 873
    .local v9, "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 875
    add-int/lit8 v10, v3, 0x1

    .restart local v10    # "count":I
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v31, v9

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "mSingle":Ljava/util/regex/Matcher;
    .local v31, "mSingle":Ljava/util/regex/Matcher;
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 875
    aput-object v9, v7, v3

    .line 877
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    goto :goto_6

    .line 879
    .end local v10    # "count":I
    .end local v31    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v3    # "count":I
    .restart local v9    # "mSingle":Ljava/util/regex/Matcher;
    :cond_e
    move-object/from16 v31, v9

    .end local v9    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v31    # "mSingle":Ljava/util/regex/Matcher;
    add-int/lit8 v9, v3, 0x1

    .local v9, "count":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 880
    move/from16 v32, v9

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "count":I
    .local v32, "count":I
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 879
    aput-object v9, v7, v3

    .line 881
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    .end local v31    # "mSingle":Ljava/util/regex/Matcher;
    nop

    .line 983
    move-object/from16 v24, v2

    move-object/from16 v34, v4

    move-object/from16 v22, v6

    move/from16 v10, v32

    goto/16 :goto_d

    .line 885
    .end local v30    # "mPre_city":Ljava/util/regex/Matcher;
    .end local v32    # "count":I
    .restart local v3    # "count":I
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 887
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_11

    .line 888
    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 889
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 890
    nop

    .line 897
    :cond_10
    :goto_7
    const/16 v10, 0x8

    goto :goto_8

    .line 891
    :cond_11
    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_12

    .line 892
    new-instance v9, Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 894
    :cond_12
    new-instance v9, Ljava/lang/StringBuilder;

    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 897
    :goto_8
    add-int/lit8 v9, v3, 0x1

    .restart local v9    # "count":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v33, v2

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "cut":Ljava/lang/String;
    .local v33, "cut":Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 897
    aput-object v2, v7, v3

    .line 899
    .end local v3    # "count":I
    iget-object v2, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    .end local v26    # "mCut":Ljava/util/regex/Matcher;
    nop

    .line 983
    move-object/from16 v34, v4

    move-object/from16 v22, v6

    move v10, v9

    move-object/from16 v24, v33

    goto/16 :goto_d

    .line 904
    .end local v27    # "length_bracket":I
    .end local v28    # "str":Ljava/lang/String;
    .end local v29    # "position":I
    .end local v33    # "cut":Ljava/lang/String;
    .restart local v3    # "count":I
    .local v6, "cut":Ljava/lang/String;
    .local v9, "length_bracket":I
    .local v10, "str":Ljava/lang/String;
    .restart local v11    # "position":I
    .restart local v22    # "city":Ljava/lang/String;
    :cond_13
    move-object/from16 v24, v6

    move/from16 v27, v9

    move-object/from16 v28, v10

    move/from16 v29, v11

    .end local v6    # "cut":Ljava/lang/String;
    .end local v9    # "length_bracket":I
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "position":I
    .restart local v24    # "cut":Ljava/lang/String;
    .restart local v27    # "length_bracket":I
    .restart local v28    # "str":Ljava/lang/String;
    .restart local v29    # "position":I
    iget-object v2, v0, Lcom/huawei/g11n/tmr/address/SerEn;->p2s:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 905
    .local v2, "m2s":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 906
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_14

    .line 909
    add-int/lit8 v6, v3, 0x1

    .local v6, "count":I
    aput-object v15, v7, v3

    .line 910
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    nop

    .line 983
    .end local v2    # "m2s":Ljava/util/regex/Matcher;
    .end local v4    # "s_right":Ljava/lang/String;
    .end local v6    # "count":I
    .local v10, "count":I
    .restart local v34    # "s_right":Ljava/lang/String;
    :goto_9
    move-object/from16 v34, v4

    move v10, v6

    goto/16 :goto_d

    .line 917
    .end local v10    # "count":I
    .end local v34    # "s_right":Ljava/lang/String;
    .restart local v2    # "m2s":Ljava/util/regex/Matcher;
    .restart local v3    # "count":I
    .restart local v4    # "s_right":Ljava/lang/String;
    :cond_14
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 918
    add-int/lit8 v6, v3, 0x1

    .restart local v6    # "count":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    .line 919
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    goto :goto_9

    .line 922
    .end local v6    # "count":I
    .restart local v3    # "count":I
    :cond_15
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 923
    .local v6, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 924
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 925
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 926
    .end local v24    # "cut":Ljava/lang/String;
    .local v10, "cut":Ljava/lang/String;
    nop

    .line 931
    move-object v9, v10

    goto :goto_a

    .line 927
    .end local v10    # "cut":Ljava/lang/String;
    .restart local v24    # "cut":Ljava/lang/String;
    :cond_16
    const-string v9, ""

    .line 928
    .end local v24    # "cut":Ljava/lang/String;
    .local v9, "cut":Ljava/lang/String;
    goto :goto_a

    .line 929
    .end local v9    # "cut":Ljava/lang/String;
    .restart local v24    # "cut":Ljava/lang/String;
    :cond_17
    const-string v9, ""

    .line 931
    .end local v24    # "cut":Ljava/lang/String;
    .restart local v9    # "cut":Ljava/lang/String;
    :goto_a
    nop

    .line 932
    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v34, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 933
    .end local v4    # "s_right":Ljava/lang/String;
    .restart local v34    # "s_right":Ljava/lang/String;
    move-object/from16 v35, v6

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .end local v6    # "mCut":Ljava/util/regex/Matcher;
    .local v35, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 932
    invoke-virtual {v11, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 933
    nop

    .line 931
    const/4 v6, 0x2

    invoke-virtual {v0, v4, v6}, Lcom/huawei/g11n/tmr/address/SerEn;->searCity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 934
    .end local v22    # "city":Ljava/lang/String;
    .local v4, "city":Ljava/lang/String;
    if-eqz v4, :cond_1b

    .line 935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 937
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_18

    .line 938
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 939
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 940
    goto :goto_b

    .line 941
    :cond_18
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_19

    .line 942
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 943
    goto :goto_b

    .line 945
    :cond_19
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 949
    :cond_1a
    :goto_b
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 950
    add-int/lit8 v6, v3, 0x1

    .local v6, "count":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v3

    .line 951
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    nop

    .line 983
    move-object/from16 v22, v4

    move v10, v6

    move-object/from16 v24, v9

    goto/16 :goto_d

    .line 954
    .end local v6    # "count":I
    .restart local v3    # "count":I
    :cond_1b
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 955
    .local v6, "mPre_city":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 956
    add-int/lit8 v10, v3, 0x1

    .local v10, "count":I
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v36, v4

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "city":Ljava/lang/String;
    .local v36, "city":Ljava/lang/String;
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 956
    aput-object v4, v7, v3

    .line 958
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    nop

    .line 983
    .end local v2    # "m2s":Ljava/util/regex/Matcher;
    .end local v6    # "mPre_city":Ljava/util/regex/Matcher;
    .end local v9    # "cut":Ljava/lang/String;
    .end local v35    # "mCut":Ljava/util/regex/Matcher;
    .end local v36    # "city":Ljava/lang/String;
    .restart local v22    # "city":Ljava/lang/String;
    .restart local v24    # "cut":Ljava/lang/String;
    :goto_c
    move-object/from16 v24, v9

    move-object/from16 v22, v36

    goto :goto_d

    .line 960
    .end local v10    # "count":I
    .end local v22    # "city":Ljava/lang/String;
    .end local v24    # "cut":Ljava/lang/String;
    .restart local v2    # "m2s":Ljava/util/regex/Matcher;
    .restart local v3    # "count":I
    .restart local v4    # "city":Ljava/lang/String;
    .restart local v6    # "mPre_city":Ljava/util/regex/Matcher;
    .restart local v9    # "cut":Ljava/lang/String;
    .restart local v35    # "mCut":Ljava/util/regex/Matcher;
    :cond_1c
    move-object/from16 v36, v4

    .end local v4    # "city":Ljava/lang/String;
    .restart local v36    # "city":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 961
    .local v4, "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 963
    add-int/lit8 v10, v3, 0x1

    .restart local v10    # "count":I
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v37, v4

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "mSingle":Ljava/util/regex/Matcher;
    .local v37, "mSingle":Ljava/util/regex/Matcher;
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 963
    aput-object v4, v7, v3

    .line 965
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    goto :goto_c

    .line 967
    .end local v10    # "count":I
    .end local v37    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v3    # "count":I
    .restart local v4    # "mSingle":Ljava/util/regex/Matcher;
    :cond_1d
    move-object/from16 v37, v4

    .end local v4    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v37    # "mSingle":Ljava/util/regex/Matcher;
    add-int/lit8 v4, v3, 0x1

    .local v4, "count":I
    aput-object v15, v7, v3

    .line 968
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    .end local v6    # "mPre_city":Ljava/util/regex/Matcher;
    .end local v35    # "mCut":Ljava/util/regex/Matcher;
    .end local v37    # "mSingle":Ljava/util/regex/Matcher;
    nop

    .line 983
    move v10, v4

    goto :goto_c

    .line 977
    .end local v9    # "cut":Ljava/lang/String;
    .end local v34    # "s_right":Ljava/lang/String;
    .end local v36    # "city":Ljava/lang/String;
    .restart local v3    # "count":I
    .local v4, "s_right":Ljava/lang/String;
    .restart local v22    # "city":Ljava/lang/String;
    .restart local v24    # "cut":Ljava/lang/String;
    :cond_1e
    move-object/from16 v34, v4

    .end local v4    # "s_right":Ljava/lang/String;
    .restart local v34    # "s_right":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .local v4, "count":I
    aput-object v15, v7, v3

    .line 978
    .end local v3    # "count":I
    iget-object v3, v0, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    .end local v2    # "m2s":Ljava/util/regex/Matcher;
    move v10, v4

    .end local v4    # "count":I
    .restart local v10    # "count":I
    :goto_d
    add-int/lit8 v2, v10, -0x1

    aget-object v2, v7, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/lit8 v1, v2, -0x1

    .line 816
    .end local v8    # "m52s":Ljava/util/regex/Matcher;
    move-object/from16 v8, v22

    move-object/from16 v17, v24

    move/from16 v18, v27

    move-object/from16 v9, v34

    .end local v22    # "city":Ljava/lang/String;
    .end local v24    # "cut":Ljava/lang/String;
    .end local v27    # "length_bracket":I
    .end local v34    # "s_right":Ljava/lang/String;
    .local v8, "city":Ljava/lang/String;
    .local v9, "s_right":Ljava/lang/String;
    .restart local v17    # "cut":Ljava/lang/String;
    .restart local v18    # "length_bracket":I
    :goto_e
    add-int/2addr v1, v3

    move v3, v10

    move/from16 v4, v20

    move/from16 v2, v21

    move-object/from16 v10, v28

    move/from16 v11, v29

    const/16 v6, 0x8

    goto/16 :goto_0
.end method

.method private sortAndMergePosList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p2, "sourceTxt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/g11n/tmr/address/Match;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/g11n/tmr/address/Match;",
            ">;"
        }
    .end annotation

    .line 1996
    .local p1, "posList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/g11n/tmr/address/Match;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    const/4 v0, 0x0

    return-object v0

    .line 2000
    :cond_0
    new-instance v0, Lcom/huawei/g11n/tmr/address/SerEn$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/address/SerEn$1;-><init>(Lcom/huawei/g11n/tmr/address/SerEn;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2010
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-gtz v0, :cond_1

    .line 2029
    .end local v0    # "i":I
    return-object p1

    .line 2011
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/address/Match;->getStartPos()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/address/Match;

    .line 2012
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/address/Match;->getStartPos()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 2013
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/address/Match;->getStartPos()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/address/Match;

    .line 2014
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 2015
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2016
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/address/Match;->setEndPos(Ljava/lang/Integer;)V

    .line 2017
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/address/Match;

    .line 2018
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/address/Match;

    .line 2019
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/address/Match;->getStartPos()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/g11n/tmr/address/Match;

    .line 2020
    invoke-virtual {v3}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2018
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2017
    invoke-virtual {v1, v2}, Lcom/huawei/g11n/tmr/address/Match;->setMatchedAddr(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2022
    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/g11n/tmr/address/Match;

    invoke-virtual {v1}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/g11n/tmr/address/Match;

    .line 2023
    invoke-virtual {v2}, Lcom/huawei/g11n/tmr/address/Match;->getEndPos()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 2024
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2010
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method private stanWri(Ljava/lang/String;)Z
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .line 1885
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/address/SerEn;->divStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1886
    .local v0, "strs":[Ljava/lang/String;
    array-length v1, v0

    .line 1887
    .local v1, "length":I
    const/4 v2, 0x1

    .line 1889
    .local v2, "flag":Z
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-eqz v2, :cond_6

    if-lt v3, v1, :cond_0

    .end local v3    # "index":I
    goto :goto_4

    .line 1890
    .restart local v3    # "index":I
    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1891
    .local v4, "length_2":I
    const/4 v5, 0x1

    .local v5, "index_2":I
    :goto_1
    if-eqz v2, :cond_3

    if-lt v5, v4, :cond_1

    .end local v5    # "index_2":I
    goto :goto_2

    .line 1892
    .restart local v5    # "index_2":I
    :cond_1
    aget-object v6, v0, v3

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1893
    .local v6, "letter":C
    const/16 v7, 0x5a

    if-gt v6, v7, :cond_2

    const/16 v7, 0x41

    if-lt v6, v7, :cond_2

    .line 1894
    const/4 v2, 0x0

    .line 1891
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .end local v6    # "letter":C
    goto :goto_1

    .line 1897
    .end local v5    # "index_2":I
    :cond_3
    :goto_2
    const/4 v5, 0x3

    if-le v1, v5, :cond_5

    .line 1898
    if-nez v3, :cond_4

    .line 1899
    div-int/lit8 v5, v1, 0x2

    add-int/lit8 v3, v5, -0x1

    goto :goto_3

    .line 1901
    :cond_4
    div-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    .line 1902
    add-int/lit8 v3, v1, -0x2

    .line 1889
    .end local v4    # "length_2":I
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1906
    .end local v3    # "index":I
    :cond_6
    :goto_4
    return v2
.end method


# virtual methods
.method public noShut(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 1985
    const-string v0, "\\s*#"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1986
    .local v0, "pShut":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1987
    .local v1, "mShut":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1988
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1990
    :cond_0
    return-object p1
.end method

.method public searBuilding(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 9
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "head"    # I

    .line 1033
    const-string v6, ""

    .line 1035
    .local v6, "sub_left":Ljava/lang/String;
    const/4 v0, 0x1

    .line 1038
    .local v0, "flag":Z
    const/4 v7, 0x0

    .line 1039
    .local v7, "left_state":I
    invoke-direct {p0, p1}, Lcom/huawei/g11n/tmr/address/SerEn;->stanWri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    const/4 v0, 0x0

    .line 1043
    .end local v0    # "flag":Z
    .local v8, "flag":Z
    :cond_0
    move v8, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move v3, v7

    move v4, v8

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding_suf(Ljava/lang/String;Ljava/lang/String;IZI)[Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "results":[Ljava/lang/String;
    return-object v0
.end method

.method public searCity(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 1916
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1917
    .local v0, "length":I
    move-object v1, p1

    .line 1918
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1920
    .local v2, "position":I
    const-string v3, "([\\s\\S]*(?i)(town|city|county)\\b)(?:.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1919
    nop

    .line 1921
    .local v3, "pCity":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1924
    .local v4, "mCity":Ljava/util/regex/Matcher;
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p2, v7, :cond_7

    .line 1925
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1926
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 1927
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 1926
    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v5

    .line 1927
    if-eqz v5, :cond_0

    .line 1928
    return-object v1

    .line 1930
    :cond_0
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-lt v5, v0, :cond_1

    .line 1950
    .end local v5    # "index":I
    goto/16 :goto_3

    .line 1931
    .restart local v5    # "index":I
    :cond_1
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1932
    sub-int/2addr v0, v5

    .line 1933
    const/4 v5, 0x0

    .line 1936
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/g11n/tmr/address/jni/DicSearch;->dicsearch(ILjava/lang/String;)I

    move-result v2

    .line 1937
    if-nez v2, :cond_6

    .line 1938
    :goto_1
    if-ge v5, v0, :cond_5

    .line 1939
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-lt v7, v8, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7a

    if-le v7, v8, :cond_4

    .line 1940
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    .line 1941
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5a

    if-le v7, v8, :cond_4

    .line 1942
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x39

    .line 1938
    if-le v7, v8, :cond_4

    .line 1944
    goto :goto_2

    .line 1943
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1930
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1946
    :cond_6
    return-object v1

    .line 1951
    .end local v5    # "index":I
    :cond_7
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1952
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 1953
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 1952
    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/g11n/tmr/address/SerEn;->noBlank(Ljava/lang/String;)Z

    move-result v5

    .line 1953
    if-eqz v5, :cond_8

    .line 1954
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1958
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/huawei/g11n/tmr/address/jni/DicSearch;->dicsearch(ILjava/lang/String;)I

    move-result v2

    .line 1959
    if-lez v2, :cond_a

    .line 1961
    const-string v5, "(\\s+(?i)(town|city|county))\\b.*"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1960
    nop

    .line 1962
    .local v5, "pCity2":Ljava/util/regex/Pattern;
    nop

    .line 1963
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1962
    nop

    .line 1964
    .local v8, "mCity2":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1965
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1968
    :cond_9
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1971
    .end local v5    # "pCity2":Ljava/util/regex/Pattern;
    .end local v8    # "mCity2":Ljava/util/regex/Matcher;
    :cond_a
    :goto_3
    const/4 v5, 0x0

    return-object v5
.end method

.method public search(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 75
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/g11n/tmr/address/Match;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 74
    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 75
    .local v3, "nn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 76
    .local v4, "num":I
    const-string v0, "[A-Z0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 78
    .local v5, "p_big":Ljava/util/regex/Pattern;
    const-string v0, ""

    .line 79
    .local v0, "city":Ljava/lang/String;
    const-string v6, ""

    .line 81
    .local v6, "cut":Ljava/lang/String;
    const-string v7, "(\\s*[,.]?\\s*(?:(?i)(?:in|on|at|from|of)\\s+)?(?:(?i)(?:uptown|downtown)\\s+)?)?[\\s\\S]*"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 80
    nop

    .line 83
    .local v7, "pCut":Ljava/util/regex/Pattern;
    const-string v8, "(?:\\.)?\\s*,\\s*[A-Z][a-z]+(?:\\s*(?:[,.)\"\'])\\s*)*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 82
    nop

    .line 88
    .local v8, "pSingle":Ljava/util/regex/Pattern;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(?i)(?<![a-z])(?:(?:in|on|at|to)\\s+(?:the\\s+)?|the\\s+)((?:[\\s\\S]+?)(?:(?<![a-z])((?:in|on|at|to)\\s+(?:the\\s+)?|the\\s+))?"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v10, v1, Lcom/huawei/g11n/tmr/address/SerEn;->road_suf:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(?![a-zA-Z])[\\s\\S]*)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 87
    nop

    .line 93
    .local v9, "pPre_road":Ljava/util/regex/Pattern;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "(?i)((?<![a-zA-Z])(?:a|what|which|whose|i|you|this|that|my|his|her|out|their|its)\\s+)([\\s\\S]+)?"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v11, v1, Lcom/huawei/g11n/tmr/address/SerEn;->road_suf:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(?![a-zA-Z])"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 92
    nop

    .line 98
    .local v10, "pNot_road":Ljava/util/regex/Pattern;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "(?:[^0-9a-zA-Z]*|\\s*(?:(?i)the|this|a|that)\\s*)(?:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v12, v1, Lcom/huawei/g11n/tmr/address/SerEn;->location:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")[^0-9a-zA-Z]*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 97
    nop

    .line 112
    .local v11, "pBuilding":Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    .line 113
    .local v12, "outLen":I
    const/4 v13, 0x0

    .line 114
    .local v13, "start":I
    const/4 v14, 0x0

    .line 115
    .local v14, "end":I
    const-string v15, ""

    .line 119
    .local v15, "out":Ljava/lang/String;
    move/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "num":I
    .local v16, "num":I
    move-object/from16 v17, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0    # "city":Ljava/lang/String;
    .local v17, "city":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p52:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 121
    .local v4, "m52":Ljava/util/regex/Matcher;
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p28:Ljava/util/regex/Pattern;

    move-object/from16 v19, v6

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 122
    .local v6, "m28":Ljava/util/regex/Matcher;
    .local v19, "cut":Ljava/lang/String;
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p1346:Ljava/util/regex/Pattern;

    move/from16 v20, v12

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 123
    .local v12, "m1346":Ljava/util/regex/Matcher;
    .local v20, "outLen":I
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p52_sub:Ljava/util/regex/Pattern;

    move/from16 v21, v13

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 126
    .local v13, "m_52sub":Ljava/util/regex/Matcher;
    .local v21, "start":I
    const/4 v0, 0x1

    .line 127
    .local v0, "noBox":Z
    move/from16 v22, v0

    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    .end local v0    # "noBox":Z
    .local v22, "noBox":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    move-object/from16 v0, v17

    .end local v17    # "city":Ljava/lang/String;
    .local v0, "city":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    move/from16 v23, v14

    .end local v14    # "end":I
    .local v23, "end":I
    if-nez v17, :cond_5c

    .line 211
    if-eqz v22, :cond_1

    .line 212
    iget-object v14, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_box:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 214
    .local v14, "m_box":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-nez v17, :cond_0

    .line 222
    .end local v14    # "m_box":Ljava/util/regex/Matcher;
    move/from16 v14, v23

    goto :goto_2

    .line 215
    .restart local v14    # "m_box":Ljava/util/regex/Matcher;
    :cond_0
    move-object/from16 v24, v0

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 216
    .end local v21    # "start":I
    .local v0, "start":I
    .local v24, "city":Ljava/lang/String;
    move-object/from16 v25, v15

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    .end local v15    # "out":Ljava/lang/String;
    .local v25, "out":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v0

    .line 217
    .end local v23    # "end":I
    .local v15, "end":I
    move-object/from16 v26, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .end local v14    # "m_box":Ljava/util/regex/Matcher;
    .local v26, "m_box":Ljava/util/regex/Matcher;
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    move/from16 v21, v0

    move/from16 v23, v15

    move-object/from16 v0, v24

    move-object/from16 v15, v25

    move-object/from16 v14, v26

    goto :goto_1

    .line 222
    .end local v24    # "city":Ljava/lang/String;
    .end local v25    # "out":Ljava/lang/String;
    .end local v26    # "m_box":Ljava/util/regex/Matcher;
    .local v0, "city":Ljava/lang/String;
    .local v15, "out":Ljava/lang/String;
    .restart local v21    # "start":I
    .restart local v23    # "end":I
    :cond_1
    move-object/from16 v24, v0

    move-object/from16 v25, v15

    move/from16 v14, v23

    .end local v23    # "end":I
    .local v14, "end":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    move-object/from16 v27, v0

    .end local v0    # "city":Ljava/lang/String;
    .local v27, "city":Ljava/lang/String;
    if-nez v17, :cond_3e

    .line 398
    :goto_3
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-nez v17, :cond_21

    .line 579
    :goto_4
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_b

    .line 723
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 724
    .end local v16    # "num":I
    .local v0, "num":I
    move/from16 v28, v14

    new-array v14, v0, [I

    .line 725
    .local v14, "nn_new2":[I
    .local v28, "end":I
    const/16 v16, 0x0

    .local v16, "i":I
    move-object/from16 v29, v15

    move/from16 v15, v16

    .end local v16    # "i":I
    .local v15, "i":I
    .local v29, "out":Ljava/lang/String;
    :goto_5
    if-lt v15, v0, :cond_a

    .line 729
    .end local v15    # "i":I
    const/4 v15, 0x4

    if-le v0, v15, :cond_9

    .line 730
    new-array v15, v0, [I

    .line 731
    .local v15, "nn_new":[I
    const/16 v16, 0x0

    .line 732
    .local v16, "t":I
    const/16 v17, 0x1

    .local v17, "i":I
    move-object/from16 v30, v6

    move/from16 v6, v17

    .end local v17    # "i":I
    .local v6, "i":I
    .local v30, "m28":Ljava/util/regex/Matcher;
    :goto_6
    add-int/lit8 v17, v0, -0x1

    move-object/from16 v31, v4

    const/16 v23, 0x2

    div-int/lit8 v4, v17, 0x2

    .end local v4    # "m52":Ljava/util/regex/Matcher;
    .local v31, "m52":Ljava/util/regex/Matcher;
    if-lt v6, v4, :cond_6

    .line 745
    .end local v6    # "i":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_7
    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v6, v6, 0x2

    if-lt v4, v6, :cond_2

    .line 764
    .end local v4    # "i":I
    const/4 v4, 0x0

    aput v16, v14, v4

    .line 765
    aput v16, v15, v4

    .line 766
    invoke-direct {v1, v15, v2}, Lcom/huawei/g11n/tmr/address/SerEn;->createAddressResultData([ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 746
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    .line 747
    mul-int/lit8 v6, v16, 0x2

    const/16 v17, 0x1

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v23, v4, 0x2

    add-int/lit8 v23, v23, -0x1

    aget v17, v14, v23

    aput v17, v15, v6

    .line 748
    mul-int/lit8 v6, v16, 0x2

    mul-int/lit8 v17, v4, 0x2

    aget v17, v14, v17

    aput v17, v15, v6

    .line 749
    add-int/lit8 v6, v4, 0x1

    .local v6, "j":I
    :goto_8
    add-int/lit8 v17, v0, 0x1

    move-object/from16 v32, v10

    const/16 v23, 0x2

    div-int/lit8 v10, v17, 0x2

    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .local v32, "pNot_road":Ljava/util/regex/Pattern;
    if-lt v6, v10, :cond_3

    .line 745
    .end local v6    # "j":I
    move-object/from16 v34, v8

    move-object/from16 v33, v9

    goto :goto_9

    .line 750
    .restart local v6    # "j":I
    :cond_3
    mul-int/lit8 v10, v4, 0x2

    aget v10, v14, v10

    mul-int/lit8 v17, v6, 0x2

    const/16 v23, 0x1

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v33, v9

    aget v9, v14, v17

    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .local v33, "pPre_road":Ljava/util/regex/Pattern;
    if-lt v10, v9, :cond_5

    .line 751
    mul-int/lit8 v9, v4, 0x2

    mul-int/lit8 v10, v4, 0x2

    aget v10, v14, v10

    mul-int/lit8 v17, v6, 0x2

    move-object/from16 v34, v8

    aget v8, v14, v17

    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .local v34, "pSingle":Ljava/util/regex/Pattern;
    invoke-direct {v1, v10, v8}, Lcom/huawei/g11n/tmr/address/SerEn;->max(II)I

    move-result v8

    aput v8, v14, v9

    .line 752
    mul-int/lit8 v8, v16, 0x2

    mul-int/lit8 v9, v4, 0x2

    aget v9, v14, v9

    aput v9, v15, v8

    .line 753
    nop

    .line 759
    add-int/lit8 v8, v0, 0x1

    const/4 v9, 0x2

    div-int/2addr v8, v9

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne v6, v8, :cond_4

    .line 760
    move v4, v6

    .line 749
    :cond_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v32

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    goto :goto_8

    .line 755
    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v8    # "pSingle":Ljava/util/regex/Pattern;
    :cond_5
    move-object/from16 v34, v8

    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v34    # "pSingle":Ljava/util/regex/Pattern;
    move v4, v6

    .line 756
    const/4 v8, -0x1

    add-int/2addr v4, v8

    .line 757
    nop

    .line 745
    .end local v6    # "j":I
    :goto_9
    const/4 v6, 0x1

    add-int/2addr v4, v6

    move-object/from16 v10, v32

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    const/16 v23, 0x2

    goto/16 :goto_7

    .line 733
    .end local v4    # "i":I
    .end local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .local v6, "i":I
    .restart local v8    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v10    # "pNot_road":Ljava/util/regex/Pattern;
    :cond_6
    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v32, v10

    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v34    # "pSingle":Ljava/util/regex/Pattern;
    add-int/lit8 v4, v6, 0x1

    .local v4, "j":I
    :goto_a
    add-int/lit8 v8, v0, 0x1

    const/4 v9, 0x2

    div-int/2addr v8, v9

    if-lt v4, v8, :cond_7

    .line 732
    .end local v4    # "j":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v31

    move-object/from16 v10, v32

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    goto/16 :goto_6

    .line 734
    .restart local v4    # "j":I
    :cond_7
    mul-int/lit8 v8, v6, 0x2

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget v8, v14, v8

    mul-int/lit8 v10, v4, 0x2

    sub-int/2addr v10, v9

    aget v10, v14, v10

    if-le v8, v10, :cond_8

    .line 735
    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v8, v9

    aget v10, v14, v8

    mul-int/lit8 v17, v4, 0x2

    add-int/lit8 v17, v17, -0x1

    aget v17, v14, v17

    add-int v10, v10, v17

    aput v10, v14, v8

    .line 736
    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v8, v9

    mul-int/lit8 v10, v6, 0x2

    sub-int/2addr v10, v9

    aget v10, v14, v10

    mul-int/lit8 v17, v4, 0x2

    add-int/lit8 v17, v17, -0x1

    aget v17, v14, v17

    sub-int v10, v10, v17

    aput v10, v14, v8

    .line 737
    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v8, v9

    mul-int/lit8 v10, v6, 0x2

    sub-int/2addr v10, v9

    aget v10, v14, v10

    mul-int/lit8 v17, v4, 0x2

    add-int/lit8 v17, v17, -0x1

    aget v9, v14, v17

    sub-int/2addr v10, v9

    aput v10, v14, v8

    .line 739
    mul-int/lit8 v8, v6, 0x2

    aget v9, v14, v8

    mul-int/lit8 v10, v4, 0x2

    aget v10, v14, v10

    add-int/2addr v9, v10

    aput v9, v14, v8

    .line 740
    mul-int/lit8 v8, v4, 0x2

    mul-int/lit8 v9, v6, 0x2

    aget v9, v14, v9

    mul-int/lit8 v10, v4, 0x2

    aget v10, v14, v10

    sub-int/2addr v9, v10

    aput v9, v14, v8

    .line 741
    mul-int/lit8 v8, v6, 0x2

    mul-int/lit8 v9, v6, 0x2

    aget v9, v14, v9

    mul-int/lit8 v10, v4, 0x2

    aget v10, v14, v10

    sub-int/2addr v9, v10

    aput v9, v14, v8

    .line 733
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 768
    .end local v15    # "nn_new":[I
    .end local v16    # "t":I
    .end local v30    # "m28":Ljava/util/regex/Matcher;
    .end local v31    # "m52":Ljava/util/regex/Matcher;
    .end local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .local v4, "m52":Ljava/util/regex/Matcher;
    .local v6, "m28":Ljava/util/regex/Matcher;
    .restart local v8    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v10    # "pNot_road":Ljava/util/regex/Pattern;
    :cond_9
    move-object/from16 v31, v4

    move-object/from16 v30, v6

    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v32, v10

    .end local v4    # "m52":Ljava/util/regex/Matcher;
    .end local v6    # "m28":Ljava/util/regex/Matcher;
    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v30    # "m28":Ljava/util/regex/Matcher;
    .restart local v31    # "m52":Ljava/util/regex/Matcher;
    .restart local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v34    # "pSingle":Ljava/util/regex/Pattern;
    add-int/lit8 v4, v0, -0x1

    const/4 v6, 0x2

    div-int/2addr v4, v6

    const/4 v6, 0x0

    aput v4, v14, v6

    .line 770
    invoke-direct {v1, v14, v2}, Lcom/huawei/g11n/tmr/address/SerEn;->createAddressResultData([ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 726
    .end local v30    # "m28":Ljava/util/regex/Matcher;
    .end local v31    # "m52":Ljava/util/regex/Matcher;
    .end local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v4    # "m52":Ljava/util/regex/Matcher;
    .restart local v6    # "m28":Ljava/util/regex/Matcher;
    .restart local v8    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .local v15, "i":I
    :cond_a
    move-object/from16 v31, v4

    move-object/from16 v30, v6

    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v32, v10

    const/4 v6, 0x0

    .end local v4    # "m52":Ljava/util/regex/Matcher;
    .end local v6    # "m28":Ljava/util/regex/Matcher;
    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v30    # "m28":Ljava/util/regex/Matcher;
    .restart local v31    # "m52":Ljava/util/regex/Matcher;
    .restart local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v34    # "pSingle":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v14, v15

    .line 725
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    goto/16 :goto_5

    .line 580
    .end local v0    # "num":I
    .end local v28    # "end":I
    .end local v29    # "out":Ljava/lang/String;
    .end local v30    # "m28":Ljava/util/regex/Matcher;
    .end local v31    # "m52":Ljava/util/regex/Matcher;
    .end local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v4    # "m52":Ljava/util/regex/Matcher;
    .restart local v6    # "m28":Ljava/util/regex/Matcher;
    .restart local v8    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .local v14, "end":I
    .local v15, "out":Ljava/lang/String;
    .local v16, "num":I
    :cond_b
    move-object/from16 v31, v4

    move-object/from16 v30, v6

    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v32, v10

    move/from16 v28, v14

    move-object/from16 v29, v15

    const/4 v6, 0x0

    .end local v4    # "m52":Ljava/util/regex/Matcher;
    .end local v6    # "m28":Ljava/util/regex/Matcher;
    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v14    # "end":I
    .end local v15    # "out":Ljava/lang/String;
    .restart local v28    # "end":I
    .restart local v29    # "out":Ljava/lang/String;
    .restart local v30    # "m28":Ljava/util/regex/Matcher;
    .restart local v31    # "m52":Ljava/util/regex/Matcher;
    .restart local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v34    # "pSingle":Ljava/util/regex/Pattern;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 581
    .local v4, "m_big":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 582
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 583
    .local v8, "head":I
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 585
    .local v0, "buildings":[Ljava/lang/String;
    iget-object v9, v1, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 586
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Lcom/huawei/g11n/tmr/address/SerEn;->searBuilding(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 587
    .end local v0    # "buildings":[Ljava/lang/String;
    .local v9, "buildings":[Ljava/lang/String;
    if-eqz v9, :cond_15

    .line 588
    array-length v10, v9

    .line 589
    .local v10, "length_bui":I
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 590
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "pr":I
    move v15, v0

    .end local v0    # "pr":I
    .local v15, "pr":I
    :goto_b
    if-ge v15, v10, :cond_14

    aget-object v0, v9, v15

    if-nez v0, :cond_c

    .line 652
    .end local v10    # "length_bui":I
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "pr":I
    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v38, v9

    goto/16 :goto_12

    .line 593
    .restart local v10    # "length_bui":I
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v15    # "pr":I
    :cond_c
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    aget-object v6, v9, v15

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 594
    .local v6, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 595
    move-object/from16 v35, v4

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .end local v4    # "m_big":Ljava/util/regex/Matcher;
    .local v35, "m_big":Ljava/util/regex/Matcher;
    if-eqz v0, :cond_d

    .line 596
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    .end local v29    # "out":Ljava/lang/String;
    .local v0, "out":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    .line 599
    .end local v20    # "outLen":I
    .local v17, "outLen":I
    aget-object v4, v9, v15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v4, v17

    .line 600
    .end local v21    # "start":I
    .local v4, "start":I
    goto :goto_c

    .line 601
    .end local v0    # "out":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v17    # "outLen":I
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    .restart local v29    # "out":Ljava/lang/String;
    :cond_d
    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    .end local v29    # "out":Ljava/lang/String;
    .restart local v0    # "out":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v17

    .line 604
    .end local v20    # "outLen":I
    .restart local v17    # "outLen":I
    aget-object v4, v9, v15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v4, v17

    .line 606
    .end local v21    # "start":I
    .restart local v4    # "start":I
    :goto_c
    move-object/from16 v36, v5

    iget-object v5, v1, Lcom/huawei/g11n/tmr/address/SerEn;->pNum:Ljava/util/regex/Pattern;

    .end local v5    # "p_big":Ljava/util/regex/Pattern;
    .local v36, "p_big":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 607
    .local v5, "mNum":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 608
    move-object/from16 v37, v6

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v37, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 609
    move-object/from16 v38, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 608
    .end local v9    # "buildings":[Ljava/lang/String;
    .local v38, "buildings":[Ljava/lang/String;
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 613
    move-object v6, v0

    goto :goto_d

    .end local v37    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v38    # "buildings":[Ljava/lang/String;
    .restart local v6    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v9    # "buildings":[Ljava/lang/String;
    :cond_e
    move-object/from16 v37, v6

    move-object/from16 v38, v9

    move-object v6, v0

    .end local v0    # "out":Ljava/lang/String;
    .end local v9    # "buildings":[Ljava/lang/String;
    .local v6, "out":Ljava/lang/String;
    .restart local v37    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v38    # "buildings":[Ljava/lang/String;
    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 615
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 616
    .local v9, "first":I
    add-int/2addr v4, v9

    .line 617
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v39, v5

    add-int v5, v4, v0

    .line 619
    .end local v28    # "end":I
    .local v5, "end":I
    .local v39, "mNum":Ljava/util/regex/Matcher;
    :try_start_0
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 620
    .local v0, "temp":Ljava/lang/String;
    move/from16 v40, v9

    :try_start_1
    iget-object v9, v1, Lcom/huawei/g11n/tmr/address/SerEn;->pDir:Ljava/util/regex/Pattern;

    .end local v9    # "first":I
    .local v40, "first":I
    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 621
    .local v9, "mDir":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 622
    move-object v6, v0

    .line 636
    move-object/from16 v43, v0

    move-object/from16 v41, v9

    move/from16 v45, v10

    goto :goto_e

    .line 625
    :cond_f
    move-object/from16 v41, v9

    const-string v9, "((?:(?:[a-z][A-Za-z0-9]*)(?:\\s+|\\s*[,.]\\s*))+)([\\s\\S]+)"

    .end local v9    # "mDir":Ljava/util/regex/Matcher;
    .local v41, "mDir":Ljava/util/regex/Matcher;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 624
    nop

    .line 627
    .local v9, "pClean":Ljava/util/regex/Pattern;
    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    move-object/from16 v42, v18

    .line 628
    .local v42, "mClean":Ljava/util/regex/Matcher;
    move-object/from16 v43, v0

    move-object/from16 v0, v42

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v42    # "mClean":Ljava/util/regex/Matcher;
    .local v0, "mClean":Ljava/util/regex/Matcher;
    .local v43, "temp":Ljava/lang/String;
    if-eqz v18, :cond_10

    .line 629
    nop

    .line 630
    move-object/from16 v44, v9

    move/from16 v45, v10

    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .end local v9    # "pClean":Ljava/util/regex/Pattern;
    .end local v10    # "length_bui":I
    .local v44, "pClean":Ljava/util/regex/Pattern;
    .local v45, "length_bui":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    .line 631
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 632
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    .line 631
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 636
    .end local v6    # "out":Ljava/lang/String;
    .end local v44    # "pClean":Ljava/util/regex/Pattern;
    .local v0, "out":Ljava/lang/String;
    move-object v6, v0

    goto :goto_e

    .end local v0    # "out":Ljava/lang/String;
    .end local v45    # "length_bui":I
    .restart local v6    # "out":Ljava/lang/String;
    .restart local v10    # "length_bui":I
    :cond_10
    move/from16 v45, v10

    .end local v10    # "length_bui":I
    .restart local v45    # "length_bui":I
    :goto_e
    invoke-virtual {v11, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 637
    .local v0, "mBuilding":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_11

    .line 638
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 643
    .end local v43    # "temp":Ljava/lang/String;
    goto :goto_10

    .end local v0    # "mBuilding":Ljava/util/regex/Matcher;
    .end local v41    # "mDir":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    goto :goto_f

    .end local v45    # "length_bui":I
    .restart local v10    # "length_bui":I
    :catch_1
    move-exception v0

    move/from16 v45, v10

    .end local v10    # "length_bui":I
    .restart local v45    # "length_bui":I
    goto :goto_f

    .end local v40    # "first":I
    .end local v45    # "length_bui":I
    .local v9, "first":I
    .restart local v10    # "length_bui":I
    :catch_2
    move-exception v0

    move/from16 v40, v9

    move/from16 v45, v10

    .line 644
    .end local v9    # "first":I
    .end local v10    # "length_bui":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v40    # "first":I
    .restart local v45    # "length_bui":I
    :goto_f
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v46, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local v46, "e":Ljava/lang/Exception;
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "**"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "out":Ljava/lang/String;
    .end local v17    # "outLen":I
    .end local v39    # "mNum":Ljava/util/regex/Matcher;
    .end local v40    # "first":I
    .end local v46    # "e":Ljava/lang/Exception;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    .restart local v28    # "end":I
    .restart local v29    # "out":Ljava/lang/String;
    :cond_11
    :goto_10
    move/from16 v21, v4

    move/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v20, v17

    goto :goto_11

    .end local v20    # "outLen":I
    .end local v21    # "start":I
    .end local v29    # "out":Ljava/lang/String;
    .end local v45    # "length_bui":I
    .restart local v4    # "start":I
    .restart local v6    # "out":Ljava/lang/String;
    .restart local v10    # "length_bui":I
    .restart local v17    # "outLen":I
    :cond_12
    move/from16 v45, v10

    move/from16 v21, v4

    move-object/from16 v29, v6

    move/from16 v20, v17

    .end local v10    # "length_bui":I
    .restart local v45    # "length_bui":I
    goto :goto_11

    .end local v17    # "outLen":I
    .end local v35    # "m_big":Ljava/util/regex/Matcher;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .end local v37    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v38    # "buildings":[Ljava/lang/String;
    .end local v45    # "length_bui":I
    .local v4, "m_big":Ljava/util/regex/Matcher;
    .local v5, "p_big":Ljava/util/regex/Pattern;
    .local v6, "m_resultclean":Ljava/util/regex/Matcher;
    .local v9, "buildings":[Ljava/lang/String;
    .restart local v10    # "length_bui":I
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    .restart local v29    # "out":Ljava/lang/String;
    :cond_13
    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v9

    move/from16 v45, v10

    .end local v4    # "m_big":Ljava/util/regex/Matcher;
    .end local v5    # "p_big":Ljava/util/regex/Pattern;
    .end local v6    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v9    # "buildings":[Ljava/lang/String;
    .end local v10    # "length_bui":I
    .restart local v35    # "m_big":Ljava/util/regex/Matcher;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    .restart local v37    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v38    # "buildings":[Ljava/lang/String;
    .restart local v45    # "length_bui":I
    :goto_11
    add-int/lit8 v15, v15, 0x1

    .end local v37    # "m_resultclean":Ljava/util/regex/Matcher;
    move-object/from16 v4, v35

    move-object/from16 v5, v36

    move-object/from16 v9, v38

    move/from16 v10, v45

    const/4 v6, 0x0

    goto/16 :goto_b

    .line 652
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v15    # "pr":I
    .end local v35    # "m_big":Ljava/util/regex/Matcher;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .end local v38    # "buildings":[Ljava/lang/String;
    .end local v45    # "length_bui":I
    .restart local v4    # "m_big":Ljava/util/regex/Matcher;
    .restart local v5    # "p_big":Ljava/util/regex/Pattern;
    .restart local v9    # "buildings":[Ljava/lang/String;
    :cond_14
    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v38, v9

    .end local v4    # "m_big":Ljava/util/regex/Matcher;
    .end local v5    # "p_big":Ljava/util/regex/Pattern;
    .end local v9    # "buildings":[Ljava/lang/String;
    .restart local v35    # "m_big":Ljava/util/regex/Matcher;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    .restart local v38    # "buildings":[Ljava/lang/String;
    :goto_12
    move/from16 v14, v28

    move-object/from16 v15, v29

    goto :goto_13

    .end local v35    # "m_big":Ljava/util/regex/Matcher;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .end local v38    # "buildings":[Ljava/lang/String;
    .restart local v4    # "m_big":Ljava/util/regex/Matcher;
    .restart local v5    # "p_big":Ljava/util/regex/Pattern;
    .restart local v9    # "buildings":[Ljava/lang/String;
    :cond_15
    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v38, v9

    move/from16 v14, v28

    move-object/from16 v15, v29

    .end local v4    # "m_big":Ljava/util/regex/Matcher;
    .end local v5    # "p_big":Ljava/util/regex/Pattern;
    .end local v9    # "buildings":[Ljava/lang/String;
    .end local v28    # "end":I
    .end local v29    # "out":Ljava/lang/String;
    .local v14, "end":I
    .local v15, "out":Ljava/lang/String;
    .restart local v35    # "m_big":Ljava/util/regex/Matcher;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    .restart local v38    # "buildings":[Ljava/lang/String;
    :goto_13
    const/4 v0, 0x0

    .line 653
    .end local v38    # "buildings":[Ljava/lang/String;
    .local v0, "buildings":[Ljava/lang/String;
    iget-object v4, v1, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 654
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v8}, Lcom/huawei/g11n/tmr/address/SerEn;->searSpot(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 655
    .end local v0    # "buildings":[Ljava/lang/String;
    .local v4, "buildings":[Ljava/lang/String;
    if-eqz v4, :cond_1f

    .line 656
    array-length v5, v4

    .line 657
    .local v5, "length_bui":I
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->match_index_2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 658
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "pr":I
    move v9, v0

    .end local v0    # "pr":I
    .local v9, "pr":I
    :goto_14
    if-ge v9, v5, :cond_1e

    aget-object v0, v4, v9

    if-nez v0, :cond_16

    .end local v4    # "buildings":[Ljava/lang/String;
    .end local v5    # "length_bui":I
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v8    # "head":I
    .end local v9    # "pr":I
    .end local v35    # "m_big":Ljava/util/regex/Matcher;
    goto/16 :goto_1b

    .line 661
    .restart local v4    # "buildings":[Ljava/lang/String;
    .restart local v5    # "length_bui":I
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v8    # "head":I
    .restart local v9    # "pr":I
    .restart local v35    # "m_big":Ljava/util/regex/Matcher;
    :cond_16
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    aget-object v10, v4, v9

    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 662
    .local v10, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 663
    move/from16 v47, v5

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .end local v5    # "length_bui":I
    .local v47, "length_bui":I
    if-eqz v0, :cond_17

    .line 664
    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    .end local v15    # "out":Ljava/lang/String;
    .local v0, "out":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v5

    .line 667
    .end local v20    # "outLen":I
    .local v15, "outLen":I
    aget-object v5, v4, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v15

    .line 668
    .end local v21    # "start":I
    .local v5, "start":I
    nop

    .line 674
    move/from16 v20, v15

    move v15, v5

    goto :goto_15

    .line 669
    .end local v0    # "out":Ljava/lang/String;
    .end local v5    # "start":I
    .local v15, "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_17
    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 671
    .end local v15    # "out":Ljava/lang/String;
    .restart local v0    # "out":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 672
    .end local v20    # "outLen":I
    .local v5, "outLen":I
    aget-object v15, v4, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v5

    .line 674
    .end local v21    # "start":I
    .local v15, "start":I
    move/from16 v20, v5

    .end local v5    # "outLen":I
    .restart local v20    # "outLen":I
    :goto_15
    iget-object v5, v1, Lcom/huawei/g11n/tmr/address/SerEn;->pNum:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 675
    .local v5, "mNum":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 676
    move-object/from16 v48, v4

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "buildings":[Ljava/lang/String;
    .local v48, "buildings":[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 677
    move/from16 v49, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 676
    .end local v8    # "head":I
    .local v49, "head":I
    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v15, v4

    .line 681
    move/from16 v21, v15

    move-object v15, v0

    goto :goto_16

    .end local v48    # "buildings":[Ljava/lang/String;
    .end local v49    # "head":I
    .restart local v4    # "buildings":[Ljava/lang/String;
    .restart local v8    # "head":I
    :cond_18
    move-object/from16 v48, v4

    move/from16 v49, v8

    move/from16 v21, v15

    move-object v15, v0

    .end local v0    # "out":Ljava/lang/String;
    .end local v4    # "buildings":[Ljava/lang/String;
    .end local v8    # "head":I
    .local v15, "out":Ljava/lang/String;
    .restart local v21    # "start":I
    .restart local v48    # "buildings":[Ljava/lang/String;
    .restart local v49    # "head":I
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 683
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 684
    .local v4, "first":I
    add-int v8, v4, v21

    .line 685
    .end local v21    # "start":I
    .local v8, "start":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    add-int v14, v8, v0

    .line 687
    :try_start_3
    invoke-virtual {v2, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "temp":Ljava/lang/String;
    iget-object v2, v1, Lcom/huawei/g11n/tmr/address/SerEn;->pDir:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 689
    .local v2, "mDir":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 690
    move-object v15, v0

    .line 704
    move-object/from16 v52, v0

    move-object/from16 v50, v2

    move/from16 v54, v4

    goto :goto_17

    .line 693
    :cond_19
    move-object/from16 v50, v2

    const-string v2, "((?:(?:[a-z][A-Za-z0-9]*)(?:\\s+|\\s*[,.]\\s*))+)([\\s\\S]+)"

    .end local v2    # "mDir":Ljava/util/regex/Matcher;
    .local v50, "mDir":Ljava/util/regex/Matcher;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 692
    nop

    .line 695
    .local v2, "pClean":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    move-object/from16 v51, v17

    .line 696
    .local v51, "mClean":Ljava/util/regex/Matcher;
    move-object/from16 v52, v0

    move-object/from16 v0, v51

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .end local v51    # "mClean":Ljava/util/regex/Matcher;
    .local v0, "mClean":Ljava/util/regex/Matcher;
    .local v52, "temp":Ljava/lang/String;
    if-eqz v17, :cond_1a

    .line 697
    nop

    .line 698
    move-object/from16 v53, v2

    move/from16 v54, v4

    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .end local v2    # "pClean":Ljava/util/regex/Pattern;
    .end local v4    # "first":I
    .local v53, "pClean":Ljava/util/regex/Pattern;
    .local v54, "first":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v8, v4

    .line 699
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 700
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    .line 699
    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 704
    .end local v15    # "out":Ljava/lang/String;
    .end local v53    # "pClean":Ljava/util/regex/Pattern;
    .local v0, "out":Ljava/lang/String;
    move-object v15, v0

    goto :goto_17

    .end local v0    # "out":Ljava/lang/String;
    .end local v54    # "first":I
    .restart local v4    # "first":I
    .restart local v15    # "out":Ljava/lang/String;
    :cond_1a
    move/from16 v54, v4

    .end local v4    # "first":I
    .restart local v54    # "first":I
    :goto_17
    invoke-virtual {v11, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 705
    .local v0, "mBuilding":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 706
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 711
    .end local v52    # "temp":Ljava/lang/String;
    goto :goto_19

    .end local v0    # "mBuilding":Ljava/util/regex/Matcher;
    .end local v50    # "mDir":Ljava/util/regex/Matcher;
    :catch_3
    move-exception v0

    goto :goto_18

    .end local v54    # "first":I
    .restart local v4    # "first":I
    :catch_4
    move-exception v0

    move/from16 v54, v4

    .line 712
    .end local v4    # "first":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v54    # "first":I
    :goto_18
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v55, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local v55, "e":Ljava/lang/Exception;
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "**"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    .end local v5    # "mNum":Ljava/util/regex/Matcher;
    .end local v8    # "start":I
    .end local v54    # "first":I
    .end local v55    # "e":Ljava/lang/Exception;
    .restart local v21    # "start":I
    :cond_1b
    :goto_19
    move/from16 v21, v8

    goto :goto_1a

    .end local v47    # "length_bui":I
    .end local v48    # "buildings":[Ljava/lang/String;
    .end local v49    # "head":I
    .local v4, "buildings":[Ljava/lang/String;
    .local v5, "length_bui":I
    .local v8, "head":I
    :cond_1c
    move-object/from16 v48, v4

    move/from16 v47, v5

    move/from16 v49, v8

    .end local v4    # "buildings":[Ljava/lang/String;
    .end local v5    # "length_bui":I
    .end local v8    # "head":I
    .restart local v47    # "length_bui":I
    .restart local v48    # "buildings":[Ljava/lang/String;
    .restart local v49    # "head":I
    :cond_1d
    :goto_1a
    add-int/lit8 v9, v9, 0x1

    .end local v10    # "m_resultclean":Ljava/util/regex/Matcher;
    move/from16 v5, v47

    move-object/from16 v4, v48

    move/from16 v8, v49

    move-object/from16 v2, p1

    goto/16 :goto_14

    .line 579
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v9    # "pr":I
    .end local v35    # "m_big":Ljava/util/regex/Matcher;
    .end local v47    # "length_bui":I
    .end local v48    # "buildings":[Ljava/lang/String;
    .end local v49    # "head":I
    :cond_1e
    :goto_1b
    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v10, v32

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v5, v36

    move-object/from16 v2, p1

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v10, v32

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v5, v36

    goto/16 :goto_4

    .end local v14    # "end":I
    .end local v15    # "out":Ljava/lang/String;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .local v5, "p_big":Ljava/util/regex/Pattern;
    .restart local v28    # "end":I
    .restart local v29    # "out":Ljava/lang/String;
    :cond_20
    move/from16 v14, v28

    move-object/from16 v15, v29

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v10, v32

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    .end local v5    # "p_big":Ljava/util/regex/Pattern;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    goto/16 :goto_4

    .line 399
    .end local v28    # "end":I
    .end local v29    # "out":Ljava/lang/String;
    .end local v30    # "m28":Ljava/util/regex/Matcher;
    .end local v31    # "m52":Ljava/util/regex/Matcher;
    .end local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .local v4, "m52":Ljava/util/regex/Matcher;
    .restart local v5    # "p_big":Ljava/util/regex/Pattern;
    .local v6, "m28":Ljava/util/regex/Matcher;
    .local v8, "pSingle":Ljava/util/regex/Pattern;
    .local v9, "pPre_road":Ljava/util/regex/Pattern;
    .local v10, "pNot_road":Ljava/util/regex/Pattern;
    .restart local v14    # "end":I
    .restart local v15    # "out":Ljava/lang/String;
    :cond_21
    move-object/from16 v31, v4

    move-object/from16 v36, v5

    move-object/from16 v30, v6

    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v32, v10

    .end local v4    # "m52":Ljava/util/regex/Matcher;
    .end local v5    # "p_big":Ljava/util/regex/Pattern;
    .end local v6    # "m28":Ljava/util/regex/Matcher;
    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v30    # "m28":Ljava/util/regex/Matcher;
    .restart local v31    # "m52":Ljava/util/regex/Matcher;
    .restart local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v34    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    const-string v15, ""

    .line 400
    iget-object v2, v1, Lcom/huawei/g11n/tmr/address/SerEn;->pRoad:Ljava/util/regex/Pattern;

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 401
    .local v2, "mRoad":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 402
    const/4 v4, 0x5

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_24

    .line 404
    iget-object v4, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 405
    .local v4, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 406
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 407
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 408
    .end local v15    # "out":Ljava/lang/String;
    .local v6, "out":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    .line 409
    .end local v20    # "outLen":I
    .local v8, "outLen":I
    nop

    .line 413
    move/from16 v74, v8

    move-object v8, v6

    move/from16 v6, v74

    goto :goto_1c

    .line 410
    .end local v6    # "out":Ljava/lang/String;
    .end local v8    # "outLen":I
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :cond_22
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 411
    .end local v15    # "out":Ljava/lang/String;
    .local v8, "out":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 413
    .end local v20    # "outLen":I
    .local v6, "outLen":I
    :goto_1c
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v9

    .line 414
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    .line 413
    add-int/2addr v9, v5

    .line 415
    .end local v21    # "start":I
    .local v9, "start":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    .line 417
    .end local v14    # "end":I
    .local v5, "end":I
    nop

    .line 543
    move-object/from16 v57, v2

    move v14, v5

    move/from16 v20, v6

    move-object v15, v8

    move/from16 v21, v9

    goto :goto_1d

    .end local v5    # "end":I
    .end local v6    # "outLen":I
    .end local v8    # "out":Ljava/lang/String;
    .end local v9    # "start":I
    .restart local v14    # "end":I
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_23
    move-object/from16 v57, v2

    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .local v2, "pSingle":Ljava/util/regex/Pattern;
    .local v57, "mRoad":Ljava/util/regex/Matcher;
    :goto_1d
    move-object/from16 v2, v34

    goto/16 :goto_25

    .line 418
    .end local v4    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v57    # "mRoad":Ljava/util/regex/Matcher;
    .local v2, "mRoad":Ljava/util/regex/Matcher;
    .restart local v34    # "pSingle":Ljava/util/regex/Pattern;
    :cond_24
    const/4 v4, 0x6

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 422
    iget-object v4, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 423
    .restart local v4    # "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 424
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 425
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 426
    .end local v15    # "out":Ljava/lang/String;
    .local v6, "out":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    .line 427
    .end local v20    # "outLen":I
    .local v8, "outLen":I
    goto :goto_1e

    .line 428
    .end local v6    # "out":Ljava/lang/String;
    .end local v8    # "outLen":I
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :cond_25
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 429
    .end local v15    # "out":Ljava/lang/String;
    .restart local v6    # "out":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 431
    .end local v20    # "outLen":I
    .restart local v8    # "outLen":I
    :goto_1e
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 432
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v8

    .line 431
    add-int/2addr v5, v9

    .line 433
    .end local v21    # "start":I
    .local v5, "start":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    .line 435
    .end local v14    # "end":I
    .local v9, "end":I
    nop

    .line 543
    move-object/from16 v57, v2

    move/from16 v21, v5

    move-object v15, v6

    move/from16 v20, v8

    move v14, v9

    goto :goto_1d

    .line 437
    .end local v4    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v5    # "start":I
    .end local v6    # "out":Ljava/lang/String;
    .end local v8    # "outLen":I
    .end local v9    # "end":I
    .restart local v14    # "end":I
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_26
    const/4 v4, 0x5

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 438
    .local v4, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 439
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_27

    .line 440
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 441
    .end local v19    # "cut":Ljava/lang/String;
    .local v6, "cut":Ljava/lang/String;
    goto :goto_1f

    .line 442
    .end local v6    # "cut":Ljava/lang/String;
    .restart local v19    # "cut":Ljava/lang/String;
    :cond_27
    const-string v6, ""

    .line 443
    .end local v19    # "cut":Ljava/lang/String;
    .restart local v6    # "cut":Ljava/lang/String;
    goto :goto_1f

    .line 444
    .end local v6    # "cut":Ljava/lang/String;
    .restart local v19    # "cut":Ljava/lang/String;
    :cond_28
    const-string v6, ""

    .line 446
    .end local v19    # "cut":Ljava/lang/String;
    .restart local v6    # "cut":Ljava/lang/String;
    :goto_1f
    nop

    .line 447
    const/4 v5, 0x5

    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 448
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 447
    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 448
    nop

    .line 446
    const/4 v8, 0x2

    invoke-virtual {v1, v5, v8}, Lcom/huawei/g11n/tmr/address/SerEn;->searCity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 449
    .end local v27    # "city":Ljava/lang/String;
    .local v5, "city":Ljava/lang/String;
    if-nez v5, :cond_31

    .line 451
    const-string v8, "(?<![a-zA-Z])(?:\\s*[,.]*\\s*)*(?:(?i)in)(?![a-zA-Z])"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 450
    nop

    .line 452
    .local v8, "pIn":Ljava/util/regex/Pattern;
    const/4 v9, 0x3

    invoke-virtual {v13, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 453
    .local v9, "mIn":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 454
    iget-object v10, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    .line 455
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 456
    .local v0, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 457
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_29

    .line 458
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 459
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    .line 460
    .end local v20    # "outLen":I
    .restart local v17    # "outLen":I
    goto :goto_20

    .line 461
    .end local v17    # "outLen":I
    .restart local v20    # "outLen":I
    :cond_29
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 462
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    .line 464
    .end local v20    # "outLen":I
    .restart local v17    # "outLen":I
    :goto_20
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    .line 465
    move-object/from16 v56, v0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v56, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v0, v17

    .line 464
    add-int/2addr v10, v0

    .line 466
    .end local v21    # "start":I
    .local v10, "start":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v10

    .line 468
    .end local v14    # "end":I
    .local v0, "end":I
    nop

    .line 543
    move v14, v0

    move-object/from16 v57, v2

    move-object/from16 v27, v5

    move-object/from16 v19, v6

    move/from16 v21, v10

    move/from16 v20, v17

    move-object/from16 v2, v34

    move-object/from16 v4, v56

    goto/16 :goto_25

    .end local v4    # "mCut":Ljava/util/regex/Matcher;
    .end local v8    # "pIn":Ljava/util/regex/Pattern;
    .end local v9    # "mIn":Ljava/util/regex/Matcher;
    .end local v10    # "start":I
    .end local v17    # "outLen":I
    .end local v56    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v0, "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v14    # "end":I
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_2a
    move-object/from16 v56, v0

    move-object/from16 v57, v2

    move-object/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v2, v34

    move-object/from16 v4, v56

    .end local v0    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v56    # "m_resultclean":Ljava/util/regex/Matcher;
    goto/16 :goto_25

    .line 471
    .end local v56    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v4    # "mCut":Ljava/util/regex/Matcher;
    .restart local v8    # "pIn":Ljava/util/regex/Pattern;
    .restart local v9    # "mIn":Ljava/util/regex/Matcher;
    :cond_2b
    const/4 v0, 0x5

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v57, v2

    move-object/from16 v2, v34

    invoke-virtual {v2, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 472
    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .local v0, "mSingle":Ljava/util/regex/Matcher;
    .local v2, "pSingle":Ljava/util/regex/Pattern;
    .restart local v57    # "mRoad":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 474
    iget-object v10, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    .line 475
    move-object/from16 v58, v0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "mSingle":Ljava/util/regex/Matcher;
    .local v58, "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 474
    nop

    .line 476
    .local v0, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 477
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2c

    .line 478
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 479
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    .line 480
    .end local v20    # "outLen":I
    .restart local v17    # "outLen":I
    goto :goto_21

    .line 481
    .end local v17    # "outLen":I
    .restart local v20    # "outLen":I
    :cond_2c
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 482
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    .line 484
    .end local v20    # "outLen":I
    .restart local v17    # "outLen":I
    :goto_21
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    .line 485
    move-object/from16 v59, v0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v59, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v0, v17

    .line 484
    add-int/2addr v10, v0

    .line 486
    .end local v21    # "start":I
    .restart local v10    # "start":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v10

    .line 488
    .end local v14    # "end":I
    .local v0, "end":I
    nop

    .line 543
    move v14, v0

    move-object/from16 v27, v5

    move-object/from16 v19, v6

    move/from16 v21, v10

    move/from16 v20, v17

    move-object/from16 v4, v59

    goto/16 :goto_25

    .end local v4    # "mCut":Ljava/util/regex/Matcher;
    .end local v8    # "pIn":Ljava/util/regex/Pattern;
    .end local v9    # "mIn":Ljava/util/regex/Matcher;
    .end local v10    # "start":I
    .end local v17    # "outLen":I
    .end local v58    # "mSingle":Ljava/util/regex/Matcher;
    .end local v59    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v0, "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v14    # "end":I
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_2d
    move-object/from16 v59, v0

    move-object/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v4, v59

    .end local v0    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v59    # "m_resultclean":Ljava/util/regex/Matcher;
    goto/16 :goto_25

    .line 492
    .end local v59    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v0, "mSingle":Ljava/util/regex/Matcher;
    .restart local v4    # "mCut":Ljava/util/regex/Matcher;
    .restart local v8    # "pIn":Ljava/util/regex/Pattern;
    .restart local v9    # "mIn":Ljava/util/regex/Matcher;
    :cond_2e
    move-object/from16 v58, v0

    .end local v0    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v58    # "mSingle":Ljava/util/regex/Matcher;
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    .line 493
    move-object/from16 v60, v4

    const/4 v10, 0x1

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "mCut":Ljava/util/regex/Matcher;
    .local v60, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 492
    move-object v4, v0

    .line 494
    .local v4, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 495
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 496
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 497
    .end local v15    # "out":Ljava/lang/String;
    .local v0, "out":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v10

    .line 498
    .end local v20    # "outLen":I
    .local v15, "outLen":I
    goto :goto_22

    .line 499
    .end local v0    # "out":Ljava/lang/String;
    .local v15, "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :cond_2f
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    .end local v15    # "out":Ljava/lang/String;
    .restart local v0    # "out":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    .line 502
    .end local v20    # "outLen":I
    .local v15, "outLen":I
    :goto_22
    const/4 v10, 0x1

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v17

    .line 503
    move-object/from16 v61, v4

    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v61, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v15

    .line 502
    add-int v17, v17, v4

    .line 504
    .end local v21    # "start":I
    .local v17, "start":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v17, v4

    .line 509
    .end local v8    # "pIn":Ljava/util/regex/Pattern;
    .end local v9    # "mIn":Ljava/util/regex/Matcher;
    .end local v14    # "end":I
    .end local v58    # "mSingle":Ljava/util/regex/Matcher;
    .local v4, "end":I
    nop

    .line 543
    move v14, v4

    move-object/from16 v27, v5

    move-object/from16 v19, v6

    move/from16 v20, v15

    move/from16 v21, v17

    move-object/from16 v4, v61

    move-object v15, v0

    goto/16 :goto_25

    .end local v0    # "out":Ljava/lang/String;
    .end local v17    # "start":I
    .end local v60    # "mCut":Ljava/util/regex/Matcher;
    .end local v61    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v4, "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v14    # "end":I
    .local v15, "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_30
    move-object/from16 v61, v4

    move-object/from16 v27, v5

    move-object/from16 v19, v6

    .end local v4    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v61    # "m_resultclean":Ljava/util/regex/Matcher;
    goto/16 :goto_25

    .line 510
    .end local v57    # "mRoad":Ljava/util/regex/Matcher;
    .end local v61    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v2, "mRoad":Ljava/util/regex/Matcher;
    .local v4, "mCut":Ljava/util/regex/Matcher;
    .restart local v34    # "pSingle":Ljava/util/regex/Pattern;
    :cond_31
    move-object/from16 v57, v2

    move-object/from16 v60, v4

    move-object/from16 v2, v34

    .end local v4    # "mCut":Ljava/util/regex/Matcher;
    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .local v2, "pSingle":Ljava/util/regex/Pattern;
    .restart local v57    # "mRoad":Ljava/util/regex/Matcher;
    .restart local v60    # "mCut":Ljava/util/regex/Matcher;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .end local v5    # "city":Ljava/lang/String;
    .local v0, "city":Ljava/lang/String;
    const/4 v4, 0x7

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_32

    .line 513
    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    goto :goto_23

    .line 517
    :cond_32
    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/4 v8, 0x7

    invoke-virtual {v13, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    goto :goto_23

    .line 521
    :cond_33
    const/4 v4, 0x5

    const/4 v8, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    :cond_34
    :goto_23
    iget-object v4, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    new-instance v5, Ljava/lang/StringBuilder;

    .line 524
    const/4 v8, 0x1

    invoke-virtual {v13, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    invoke-virtual {v13, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 523
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 525
    .local v4, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 526
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_35

    .line 527
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 528
    .end local v15    # "out":Ljava/lang/String;
    .local v8, "out":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    .line 529
    .end local v20    # "outLen":I
    .local v9, "outLen":I
    nop

    .line 534
    move/from16 v74, v9

    move-object v9, v8

    move/from16 v8, v74

    goto :goto_24

    .line 530
    .end local v8    # "out":Ljava/lang/String;
    .end local v9    # "outLen":I
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :cond_35
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 531
    .end local v15    # "out":Ljava/lang/String;
    .local v9, "out":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 534
    .end local v20    # "outLen":I
    .local v8, "outLen":I
    :goto_24
    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    .line 535
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v62, v4

    invoke-virtual {v13, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v62, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 536
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 535
    sub-int/2addr v4, v8

    .line 534
    add-int/2addr v10, v4

    .line 537
    .end local v21    # "start":I
    .restart local v10    # "start":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v10

    .line 543
    .end local v14    # "end":I
    .end local v60    # "mCut":Ljava/util/regex/Matcher;
    .local v4, "end":I
    move-object/from16 v27, v0

    move v14, v4

    move-object/from16 v19, v6

    move/from16 v20, v8

    move-object v15, v9

    move/from16 v21, v10

    move-object/from16 v4, v62

    goto :goto_25

    .end local v8    # "outLen":I
    .end local v9    # "out":Ljava/lang/String;
    .end local v10    # "start":I
    .end local v62    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v4, "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v14    # "end":I
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_36
    move-object/from16 v62, v4

    move-object/from16 v27, v0

    move-object/from16 v19, v6

    .end local v0    # "city":Ljava/lang/String;
    .end local v6    # "cut":Ljava/lang/String;
    .restart local v19    # "cut":Ljava/lang/String;
    .restart local v27    # "city":Ljava/lang/String;
    :goto_25
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3c

    .line 544
    move-object/from16 v5, v33

    invoke-virtual {v5, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 545
    .end local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .local v0, "mPre_road":Ljava/util/regex/Matcher;
    .local v5, "pPre_road":Ljava/util/regex/Pattern;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 546
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_37

    .line 547
    nop

    .line 548
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 549
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 548
    sub-int/2addr v6, v9

    add-int v21, v21, v6

    .line 550
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 552
    goto :goto_26

    .line 553
    :cond_37
    const-string v15, ""

    .line 555
    :cond_38
    :goto_26
    move-object/from16 v6, v32

    invoke-virtual {v6, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 556
    .end local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .local v6, "pNot_road":Ljava/util/regex/Pattern;
    .local v8, "mNot_road":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 557
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_39

    .line 558
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_39

    .line 559
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 560
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    .line 559
    invoke-virtual {v15, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 561
    .end local v15    # "out":Ljava/lang/String;
    .restart local v9    # "out":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    add-int v21, v21, v10

    .line 563
    goto :goto_27

    .line 564
    .end local v9    # "out":Ljava/lang/String;
    .restart local v15    # "out":Ljava/lang/String;
    :cond_39
    const-string v9, ""

    .line 567
    .end local v21    # "start":I
    .local v9, "start":I
    :goto_27
    move-object v15, v9

    :cond_3a
    move/from16 v9, v21

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3b

    .line 568
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v0    # "mPre_road":Ljava/util/regex/Matcher;
    .end local v4    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v8    # "mNot_road":Ljava/util/regex/Matcher;
    .end local v57    # "mRoad":Ljava/util/regex/Matcher;
    :cond_3b
    move-object v8, v2

    move-object v10, v6

    move/from16 v21, v9

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v2, p1

    move-object v9, v5

    move-object/from16 v5, v36

    goto/16 :goto_3

    .end local v5    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v6    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v9    # "start":I
    .restart local v21    # "start":I
    .restart local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v33    # "pPre_road":Ljava/util/regex/Pattern;
    :cond_3c
    move-object v8, v2

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v10, v32

    move-object/from16 v9, v33

    move-object/from16 v5, v36

    move-object/from16 v2, p1

    .end local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v5    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v6    # "pNot_road":Ljava/util/regex/Pattern;
    goto/16 :goto_3

    .end local v2    # "pSingle":Ljava/util/regex/Pattern;
    .end local v5    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v6    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v34    # "pSingle":Ljava/util/regex/Pattern;
    :cond_3d
    move-object/from16 v6, v30

    move-object/from16 v4, v31

    move-object/from16 v10, v32

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    move-object/from16 v5, v36

    move-object/from16 v2, p1

    .end local v32    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v33    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v34    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v2    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v5    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v6    # "pNot_road":Ljava/util/regex/Pattern;
    goto/16 :goto_3

    .line 224
    .end local v2    # "pSingle":Ljava/util/regex/Pattern;
    .end local v30    # "m28":Ljava/util/regex/Matcher;
    .end local v31    # "m52":Ljava/util/regex/Matcher;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .local v4, "m52":Ljava/util/regex/Matcher;
    .local v5, "p_big":Ljava/util/regex/Pattern;
    .local v6, "m28":Ljava/util/regex/Matcher;
    .local v8, "pSingle":Ljava/util/regex/Pattern;
    .local v9, "pPre_road":Ljava/util/regex/Pattern;
    .local v10, "pNot_road":Ljava/util/regex/Pattern;
    :cond_3e
    move-object/from16 v31, v4

    move-object/from16 v36, v5

    move-object/from16 v30, v6

    move-object v2, v8

    move-object v5, v9

    move-object v6, v10

    .end local v4    # "m52":Ljava/util/regex/Matcher;
    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v2    # "pSingle":Ljava/util/regex/Pattern;
    .local v5, "pPre_road":Ljava/util/regex/Pattern;
    .local v6, "pNot_road":Ljava/util/regex/Pattern;
    .restart local v30    # "m28":Ljava/util/regex/Matcher;
    .restart local v31    # "m52":Ljava/util/regex/Matcher;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    const-string v15, ""

    .line 225
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->pRoad:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .end local v31    # "m52":Ljava/util/regex/Matcher;
    .restart local v4    # "m52":Ljava/util/regex/Matcher;
    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 226
    .local v0, "mRoad":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_5b

    .line 227
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_41

    .line 229
    iget-object v8, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 230
    .local v8, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_40

    .line 231
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3f

    .line 232
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 233
    .end local v15    # "out":Ljava/lang/String;
    .local v10, "out":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v9

    .line 234
    .end local v20    # "outLen":I
    .local v15, "outLen":I
    goto :goto_28

    .line 235
    .end local v10    # "out":Ljava/lang/String;
    .local v15, "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :cond_3f
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 236
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    .line 238
    .end local v20    # "outLen":I
    .local v10, "outLen":I
    move-object/from16 v74, v15

    move v15, v10

    move-object/from16 v10, v74

    .local v10, "out":Ljava/lang/String;
    .local v15, "outLen":I
    :goto_28
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->start(I)I

    move-result v17

    move-object/from16 v63, v0

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "mRoad":Ljava/util/regex/Matcher;
    .local v63, "mRoad":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v15

    add-int v17, v17, v0

    .line 239
    .end local v21    # "start":I
    .restart local v17    # "start":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v17, v0

    .line 241
    .end local v14    # "end":I
    .local v0, "end":I
    nop

    .line 366
    move v14, v0

    move-object/from16 v68, v2

    move-object/from16 v65, v7

    move/from16 v20, v15

    move/from16 v21, v17

    move-object/from16 v0, v27

    .end local v2    # "pSingle":Ljava/util/regex/Pattern;
    .end local v7    # "pCut":Ljava/util/regex/Pattern;
    .end local v10    # "out":Ljava/lang/String;
    .end local v17    # "start":I
    .end local v27    # "city":Ljava/lang/String;
    .local v0, "city":Ljava/lang/String;
    .restart local v14    # "end":I
    .local v15, "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    .local v65, "pCut":Ljava/util/regex/Pattern;
    .local v68, "pSingle":Ljava/util/regex/Pattern;
    :goto_29
    move-object v15, v10

    goto/16 :goto_32

    .end local v63    # "mRoad":Ljava/util/regex/Matcher;
    .end local v65    # "pCut":Ljava/util/regex/Pattern;
    .end local v68    # "pSingle":Ljava/util/regex/Pattern;
    .local v0, "mRoad":Ljava/util/regex/Matcher;
    .restart local v2    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v7    # "pCut":Ljava/util/regex/Pattern;
    .restart local v27    # "city":Ljava/lang/String;
    :cond_40
    move-object/from16 v63, v0

    move-object/from16 v68, v2

    move-object/from16 v65, v7

    move-object/from16 v0, v27

    .end local v0    # "mRoad":Ljava/util/regex/Matcher;
    .restart local v63    # "mRoad":Ljava/util/regex/Matcher;
    goto/16 :goto_32

    .line 242
    .end local v8    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v63    # "mRoad":Ljava/util/regex/Matcher;
    .restart local v0    # "mRoad":Ljava/util/regex/Matcher;
    :cond_41
    move-object/from16 v63, v0

    .end local v0    # "mRoad":Ljava/util/regex/Matcher;
    .restart local v63    # "mRoad":Ljava/util/regex/Matcher;
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_44

    .line 246
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 247
    .restart local v8    # "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 248
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 249
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .end local v15    # "out":Ljava/lang/String;
    .local v0, "out":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    .line 251
    .end local v20    # "outLen":I
    .local v10, "outLen":I
    goto :goto_2a

    .line 252
    .end local v0    # "out":Ljava/lang/String;
    .end local v10    # "outLen":I
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :cond_42
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .end local v15    # "out":Ljava/lang/String;
    .restart local v0    # "out":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    .line 255
    .end local v20    # "outLen":I
    .restart local v10    # "outLen":I
    :goto_2a
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 256
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v10

    .line 255
    add-int/2addr v9, v15

    .line 257
    .end local v21    # "start":I
    .local v9, "start":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v9

    .line 259
    .end local v14    # "end":I
    .local v15, "end":I
    nop

    .line 366
    move-object/from16 v68, v2

    move-object/from16 v65, v7

    move/from16 v21, v9

    move/from16 v20, v10

    move v14, v15

    move-object v15, v0

    goto :goto_2b

    .end local v0    # "out":Ljava/lang/String;
    .end local v9    # "start":I
    .end local v10    # "outLen":I
    .restart local v14    # "end":I
    .local v15, "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_43
    move-object/from16 v68, v2

    move-object/from16 v65, v7

    .end local v2    # "pSingle":Ljava/util/regex/Pattern;
    .end local v7    # "pCut":Ljava/util/regex/Pattern;
    .end local v27    # "city":Ljava/lang/String;
    .local v0, "city":Ljava/lang/String;
    .restart local v65    # "pCut":Ljava/util/regex/Pattern;
    .restart local v68    # "pSingle":Ljava/util/regex/Pattern;
    :goto_2b
    move-object/from16 v0, v27

    goto/16 :goto_32

    .line 261
    .end local v0    # "city":Ljava/lang/String;
    .end local v8    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v65    # "pCut":Ljava/util/regex/Pattern;
    .end local v68    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v2    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v7    # "pCut":Ljava/util/regex/Pattern;
    .restart local v27    # "city":Ljava/lang/String;
    :cond_44
    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 262
    .local v0, "mCut":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 263
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_45

    .line 264
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 265
    .end local v19    # "cut":Ljava/lang/String;
    .local v9, "cut":Ljava/lang/String;
    goto :goto_2c

    .line 266
    .end local v9    # "cut":Ljava/lang/String;
    .restart local v19    # "cut":Ljava/lang/String;
    :cond_45
    const-string v9, ""

    .line 267
    .end local v19    # "cut":Ljava/lang/String;
    .restart local v9    # "cut":Ljava/lang/String;
    goto :goto_2c

    .line 268
    .end local v9    # "cut":Ljava/lang/String;
    .restart local v19    # "cut":Ljava/lang/String;
    :cond_46
    const-string v9, ""

    .line 270
    .end local v19    # "cut":Ljava/lang/String;
    .restart local v9    # "cut":Ljava/lang/String;
    :goto_2c
    nop

    .line 271
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v64, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 272
    .end local v0    # "mCut":Ljava/util/regex/Matcher;
    .local v64, "mCut":Ljava/util/regex/Matcher;
    move-object/from16 v65, v7

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .end local v7    # "pCut":Ljava/util/regex/Pattern;
    .restart local v65    # "pCut":Ljava/util/regex/Pattern;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 271
    invoke-virtual {v10, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 272
    nop

    .line 270
    const/4 v7, 0x2

    invoke-virtual {v1, v0, v7}, Lcom/huawei/g11n/tmr/address/SerEn;->searCity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .end local v27    # "city":Ljava/lang/String;
    .local v0, "city":Ljava/lang/String;
    if-nez v0, :cond_4f

    .line 275
    const-string v7, "(?<![a-zA-Z])(?:\\s*[,.]*\\s*)*(?:(?i)in)(?![a-zA-Z])"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 274
    nop

    .line 276
    .local v7, "pIn":Ljava/util/regex/Pattern;
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 277
    .local v8, "mIn":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-eqz v10, :cond_49

    .line 278
    iget-object v10, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    .line 279
    move-object/from16 v66, v7

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 278
    .end local v7    # "pIn":Ljava/util/regex/Pattern;
    .local v66, "pIn":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 280
    .local v7, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_48

    .line 281
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_47

    .line 282
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 283
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    .line 284
    .end local v20    # "outLen":I
    .local v17, "outLen":I
    goto :goto_2d

    .line 285
    .end local v17    # "outLen":I
    .restart local v20    # "outLen":I
    :cond_47
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 286
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    .line 288
    .end local v20    # "outLen":I
    .restart local v17    # "outLen":I
    :goto_2d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    .line 289
    move-object/from16 v67, v7

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .end local v7    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v67, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v7, v17

    .line 288
    add-int/2addr v10, v7

    .line 290
    .end local v21    # "start":I
    .local v10, "start":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v10

    .line 292
    .end local v14    # "end":I
    .local v7, "end":I
    nop

    .line 366
    move-object/from16 v68, v2

    move v14, v7

    move-object/from16 v19, v9

    move/from16 v21, v10

    move/from16 v20, v17

    move-object/from16 v8, v67

    goto/16 :goto_32

    .end local v8    # "mIn":Ljava/util/regex/Matcher;
    .end local v10    # "start":I
    .end local v17    # "outLen":I
    .end local v64    # "mCut":Ljava/util/regex/Matcher;
    .end local v66    # "pIn":Ljava/util/regex/Pattern;
    .end local v67    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v7, "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v14    # "end":I
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_48
    move-object/from16 v67, v7

    move-object/from16 v68, v2

    move-object/from16 v19, v9

    move-object/from16 v8, v67

    .end local v7    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v67    # "m_resultclean":Ljava/util/regex/Matcher;
    goto/16 :goto_32

    .line 295
    .end local v67    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v7, "pIn":Ljava/util/regex/Pattern;
    .restart local v8    # "mIn":Ljava/util/regex/Matcher;
    .restart local v64    # "mCut":Ljava/util/regex/Matcher;
    :cond_49
    move-object/from16 v66, v7

    .end local v7    # "pIn":Ljava/util/regex/Pattern;
    .restart local v66    # "pIn":Ljava/util/regex/Pattern;
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 296
    .local v7, "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 298
    iget-object v10, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    .line 299
    move-object/from16 v68, v2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 298
    .end local v2    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v68    # "pSingle":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 300
    .local v2, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 301
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4a

    .line 302
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 303
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    .line 304
    .end local v20    # "outLen":I
    .restart local v17    # "outLen":I
    goto :goto_2e

    .line 305
    .end local v17    # "outLen":I
    .restart local v20    # "outLen":I
    :cond_4a
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 306
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    .line 308
    .end local v20    # "outLen":I
    .restart local v17    # "outLen":I
    :goto_2e
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    .line 309
    move-object/from16 v69, v2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v69, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v2, v17

    .line 308
    add-int/2addr v10, v2

    .line 310
    .end local v21    # "start":I
    .restart local v10    # "start":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v10

    .line 312
    .end local v14    # "end":I
    .local v2, "end":I
    nop

    .line 366
    move v14, v2

    move-object/from16 v19, v9

    move/from16 v21, v10

    move/from16 v20, v17

    move-object/from16 v8, v69

    goto/16 :goto_32

    .end local v7    # "mSingle":Ljava/util/regex/Matcher;
    .end local v8    # "mIn":Ljava/util/regex/Matcher;
    .end local v10    # "start":I
    .end local v17    # "outLen":I
    .end local v64    # "mCut":Ljava/util/regex/Matcher;
    .end local v66    # "pIn":Ljava/util/regex/Pattern;
    .end local v69    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v2, "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v14    # "end":I
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_4b
    move-object/from16 v69, v2

    move-object/from16 v19, v9

    move-object/from16 v8, v69

    .end local v2    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v69    # "m_resultclean":Ljava/util/regex/Matcher;
    goto/16 :goto_32

    .line 316
    .end local v68    # "pSingle":Ljava/util/regex/Pattern;
    .end local v69    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v2, "pSingle":Ljava/util/regex/Pattern;
    .restart local v7    # "mSingle":Ljava/util/regex/Matcher;
    .restart local v8    # "mIn":Ljava/util/regex/Matcher;
    .restart local v64    # "mCut":Ljava/util/regex/Matcher;
    .restart local v66    # "pIn":Ljava/util/regex/Pattern;
    :cond_4c
    move-object/from16 v68, v2

    .end local v2    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v68    # "pSingle":Ljava/util/regex/Pattern;
    iget-object v2, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    .line 317
    move-object/from16 v70, v7

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 316
    .end local v7    # "mSingle":Ljava/util/regex/Matcher;
    .local v70, "mSingle":Ljava/util/regex/Matcher;
    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 318
    .local v2, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 319
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4d

    .line 320
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 321
    .end local v15    # "out":Ljava/lang/String;
    .local v7, "out":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v10

    .line 322
    .end local v20    # "outLen":I
    .local v15, "outLen":I
    goto :goto_2f

    .line 323
    .end local v7    # "out":Ljava/lang/String;
    .local v15, "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :cond_4d
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 324
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    .line 326
    .end local v20    # "outLen":I
    .local v7, "outLen":I
    move-object/from16 v74, v15

    move v15, v7

    move-object/from16 v7, v74

    .local v7, "out":Ljava/lang/String;
    .local v15, "outLen":I
    :goto_2f
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v17

    .line 327
    move-object/from16 v71, v2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v71, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v15

    .line 326
    add-int v17, v17, v2

    .line 328
    .end local v21    # "start":I
    .local v17, "start":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int v2, v17, v2

    .line 332
    .end local v8    # "mIn":Ljava/util/regex/Matcher;
    .end local v14    # "end":I
    .end local v66    # "pIn":Ljava/util/regex/Pattern;
    .end local v70    # "mSingle":Ljava/util/regex/Matcher;
    .local v2, "end":I
    nop

    .line 366
    move v14, v2

    move-object/from16 v19, v9

    move/from16 v20, v15

    move/from16 v21, v17

    move-object/from16 v8, v71

    move-object v15, v7

    goto/16 :goto_32

    .end local v7    # "out":Ljava/lang/String;
    .end local v17    # "start":I
    .end local v64    # "mCut":Ljava/util/regex/Matcher;
    .end local v71    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v2, "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v14    # "end":I
    .local v15, "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_4e
    move-object/from16 v71, v2

    move-object/from16 v19, v9

    move-object/from16 v8, v71

    .end local v2    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v71    # "m_resultclean":Ljava/util/regex/Matcher;
    goto/16 :goto_32

    .line 333
    .end local v68    # "pSingle":Ljava/util/regex/Pattern;
    .end local v71    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v2, "pSingle":Ljava/util/regex/Pattern;
    .restart local v64    # "mCut":Ljava/util/regex/Matcher;
    :cond_4f
    move-object/from16 v68, v2

    .end local v2    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v68    # "pSingle":Ljava/util/regex/Pattern;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    const/4 v2, 0x7

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_50

    .line 336
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_52

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    goto :goto_30

    .line 340
    :cond_50
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_51

    .line 341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/4 v8, 0x7

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    goto :goto_30

    .line 344
    :cond_51
    const/4 v2, 0x5

    const/4 v8, 0x7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_52
    :goto_30
    iget-object v2, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 346
    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 348
    .local v8, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 349
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_53

    .line 350
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 351
    .end local v15    # "out":Ljava/lang/String;
    .restart local v7    # "out":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v2

    .line 352
    .end local v20    # "outLen":I
    .local v10, "outLen":I
    nop

    .line 357
    move/from16 v74, v10

    move-object v10, v7

    move/from16 v7, v74

    goto :goto_31

    .line 353
    .end local v7    # "out":Ljava/lang/String;
    .end local v10    # "outLen":I
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :cond_53
    const/4 v7, 0x2

    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 354
    .end local v15    # "out":Ljava/lang/String;
    .local v10, "out":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    .line 357
    .end local v20    # "outLen":I
    .local v7, "outLen":I
    :goto_31
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v15

    .line 358
    move-object/from16 v72, v8

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "m_resultclean":Ljava/util/regex/Matcher;
    .local v72, "m_resultclean":Ljava/util/regex/Matcher;
    move-object/from16 v73, v9

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "cut":Ljava/lang/String;
    .local v73, "cut":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 358
    sub-int/2addr v2, v7

    .line 357
    add-int/2addr v15, v2

    .line 360
    .end local v21    # "start":I
    .local v15, "start":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v15

    .line 366
    .end local v14    # "end":I
    .end local v64    # "mCut":Ljava/util/regex/Matcher;
    .local v2, "end":I
    move v14, v2

    move/from16 v20, v7

    move/from16 v21, v15

    move-object/from16 v8, v72

    move-object/from16 v19, v73

    goto/16 :goto_29

    .end local v2    # "end":I
    .end local v7    # "outLen":I
    .end local v10    # "out":Ljava/lang/String;
    .end local v72    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v73    # "cut":Ljava/lang/String;
    .restart local v8    # "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v9    # "cut":Ljava/lang/String;
    .restart local v14    # "end":I
    .local v15, "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    .restart local v21    # "start":I
    :cond_54
    move-object/from16 v72, v8

    move-object/from16 v73, v9

    move-object/from16 v19, v73

    .end local v9    # "cut":Ljava/lang/String;
    .restart local v19    # "cut":Ljava/lang/String;
    :goto_32
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5a

    .line 367
    invoke-virtual {v5, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 368
    .local v2, "mPre_road":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 369
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_55

    .line 370
    nop

    .line 371
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 372
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 371
    sub-int/2addr v7, v10

    add-int v21, v21, v7

    .line 373
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 374
    goto :goto_33

    .line 375
    :cond_55
    const-string v15, ""

    .line 377
    :cond_56
    :goto_33
    invoke-virtual {v6, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 378
    .local v7, "mNot_road":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_58

    .line 379
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_57

    .line 380
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_57

    .line 381
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 382
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    .line 381
    invoke-virtual {v15, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 383
    .end local v15    # "out":Ljava/lang/String;
    .local v9, "out":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    add-int v21, v21, v10

    .line 385
    goto :goto_34

    .line 386
    .end local v9    # "out":Ljava/lang/String;
    .restart local v15    # "out":Ljava/lang/String;
    :cond_57
    const-string v9, ""

    .line 389
    .end local v21    # "start":I
    .local v9, "start":I
    :goto_34
    move-object v15, v9

    :cond_58
    move/from16 v9, v21

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_59

    .line 390
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v2    # "mPre_road":Ljava/util/regex/Matcher;
    .end local v7    # "mNot_road":Ljava/util/regex/Matcher;
    .end local v8    # "m_resultclean":Ljava/util/regex/Matcher;
    .end local v63    # "mRoad":Ljava/util/regex/Matcher;
    :cond_59
    move-object v10, v6

    move/from16 v21, v9

    move-object/from16 v6, v30

    move-object/from16 v7, v65

    move-object/from16 v8, v68

    move-object/from16 v2, p1

    move-object v9, v5

    move-object/from16 v5, v36

    goto/16 :goto_2

    .end local v9    # "start":I
    .restart local v21    # "start":I
    :cond_5a
    move-object v9, v5

    move-object v10, v6

    move-object/from16 v6, v30

    move-object/from16 v5, v36

    move-object/from16 v7, v65

    move-object/from16 v8, v68

    move-object/from16 v2, p1

    goto/16 :goto_2

    .end local v0    # "city":Ljava/lang/String;
    .end local v65    # "pCut":Ljava/util/regex/Pattern;
    .end local v68    # "pSingle":Ljava/util/regex/Pattern;
    .local v2, "pSingle":Ljava/util/regex/Pattern;
    .local v7, "pCut":Ljava/util/regex/Pattern;
    .restart local v27    # "city":Ljava/lang/String;
    :cond_5b
    move-object v8, v2

    move-object v9, v5

    move-object v10, v6

    move-object/from16 v0, v27

    move-object/from16 v6, v30

    move-object/from16 v5, v36

    move-object/from16 v2, p1

    .end local v2    # "pSingle":Ljava/util/regex/Pattern;
    .end local v7    # "pCut":Ljava/util/regex/Pattern;
    .restart local v65    # "pCut":Ljava/util/regex/Pattern;
    .restart local v68    # "pSingle":Ljava/util/regex/Pattern;
    goto/16 :goto_2

    .line 130
    .end local v14    # "end":I
    .end local v27    # "city":Ljava/lang/String;
    .end local v30    # "m28":Ljava/util/regex/Matcher;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .end local v65    # "pCut":Ljava/util/regex/Pattern;
    .end local v68    # "pSingle":Ljava/util/regex/Pattern;
    .restart local v0    # "city":Ljava/lang/String;
    .local v5, "p_big":Ljava/util/regex/Pattern;
    .local v6, "m28":Ljava/util/regex/Matcher;
    .restart local v7    # "pCut":Ljava/util/regex/Pattern;
    .local v8, "pSingle":Ljava/util/regex/Pattern;
    .local v9, "pPre_road":Ljava/util/regex/Pattern;
    .local v10, "pNot_road":Ljava/util/regex/Pattern;
    .restart local v23    # "end":I
    :cond_5c
    move-object/from16 v24, v0

    move-object/from16 v36, v5

    move-object/from16 v30, v6

    move-object/from16 v65, v7

    move-object/from16 v68, v8

    move-object v5, v9

    move-object v6, v10

    move-object/from16 v25, v15

    .end local v0    # "city":Ljava/lang/String;
    .end local v7    # "pCut":Ljava/util/regex/Pattern;
    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v15    # "out":Ljava/lang/String;
    .local v5, "pPre_road":Ljava/util/regex/Pattern;
    .local v6, "pNot_road":Ljava/util/regex/Pattern;
    .restart local v24    # "city":Ljava/lang/String;
    .restart local v25    # "out":Ljava/lang/String;
    .restart local v30    # "m28":Ljava/util/regex/Matcher;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    .restart local v65    # "pCut":Ljava/util/regex/Pattern;
    .restart local v68    # "pSingle":Ljava/util/regex/Pattern;
    move-object/from16 v2, v30

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .end local v30    # "m28":Ljava/util/regex/Matcher;
    .local v2, "m28":Ljava/util/regex/Matcher;
    if-nez v0, :cond_5f

    .line 132
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->pCode_a:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 133
    .local v0, "mCode_a":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 134
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5d

    .line 136
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    .line 137
    .end local v21    # "start":I
    .local v8, "start":I
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int v14, v8, v7

    .line 138
    .end local v23    # "end":I
    .restart local v14    # "end":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    nop

    .line 129
    .end local v2    # "m28":Ljava/util/regex/Matcher;
    .end local v24    # "city":Ljava/lang/String;
    .end local v25    # "out":Ljava/lang/String;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .end local v65    # "pCut":Ljava/util/regex/Pattern;
    .end local v68    # "pSingle":Ljava/util/regex/Pattern;
    .local v0, "city":Ljava/lang/String;
    .local v5, "p_big":Ljava/util/regex/Pattern;
    .local v6, "m28":Ljava/util/regex/Matcher;
    .restart local v7    # "pCut":Ljava/util/regex/Pattern;
    .local v8, "pSingle":Ljava/util/regex/Pattern;
    .restart local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v21    # "start":I
    :goto_35
    move-object v9, v5

    move-object v10, v6

    move/from16 v21, v8

    goto :goto_36

    .line 142
    .end local v7    # "pCut":Ljava/util/regex/Pattern;
    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v14    # "end":I
    .end local v15    # "out":Ljava/lang/String;
    .local v0, "mCode_a":Ljava/util/regex/Matcher;
    .restart local v2    # "m28":Ljava/util/regex/Matcher;
    .local v5, "pPre_road":Ljava/util/regex/Pattern;
    .local v6, "pNot_road":Ljava/util/regex/Pattern;
    .restart local v23    # "end":I
    .restart local v24    # "city":Ljava/lang/String;
    .restart local v25    # "out":Ljava/lang/String;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    .restart local v65    # "pCut":Ljava/util/regex/Pattern;
    .restart local v68    # "pSingle":Ljava/util/regex/Pattern;
    :cond_5d
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_62

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_62

    .line 143
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    .line 144
    .end local v21    # "start":I
    .local v8, "start":I
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int v14, v8, v7

    .line 145
    .end local v23    # "end":I
    .restart local v14    # "end":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    goto :goto_35

    .line 151
    .end local v8    # "start":I
    .end local v14    # "end":I
    .restart local v21    # "start":I
    .restart local v23    # "end":I
    :cond_5e
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 152
    .end local v21    # "start":I
    .local v7, "start":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v14, v7, v8

    .line 153
    .end local v23    # "end":I
    .restart local v14    # "end":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    nop

    .line 129
    move-object v9, v5

    move-object v10, v6

    move/from16 v21, v7

    .end local v2    # "m28":Ljava/util/regex/Matcher;
    .end local v24    # "city":Ljava/lang/String;
    .end local v25    # "out":Ljava/lang/String;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .end local v65    # "pCut":Ljava/util/regex/Pattern;
    .end local v68    # "pSingle":Ljava/util/regex/Pattern;
    .local v0, "city":Ljava/lang/String;
    .local v5, "p_big":Ljava/util/regex/Pattern;
    .local v6, "m28":Ljava/util/regex/Matcher;
    .local v7, "pCut":Ljava/util/regex/Pattern;
    .local v8, "pSingle":Ljava/util/regex/Pattern;
    .restart local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .restart local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v21    # "start":I
    :goto_36
    move-object/from16 v0, v24

    move-object/from16 v15, v25

    :goto_37
    move-object/from16 v5, v36

    move-object/from16 v7, v65

    move-object/from16 v8, v68

    move-object v6, v2

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 162
    .end local v0    # "city":Ljava/lang/String;
    .end local v7    # "pCut":Ljava/util/regex/Pattern;
    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v14    # "end":I
    .end local v15    # "out":Ljava/lang/String;
    .restart local v2    # "m28":Ljava/util/regex/Matcher;
    .local v5, "pPre_road":Ljava/util/regex/Pattern;
    .local v6, "pNot_road":Ljava/util/regex/Pattern;
    .restart local v23    # "end":I
    .restart local v24    # "city":Ljava/lang/String;
    .restart local v25    # "out":Ljava/lang/String;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    .restart local v65    # "pCut":Ljava/util/regex/Pattern;
    .restart local v68    # "pSingle":Ljava/util/regex/Pattern;
    :cond_5f
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 163
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 164
    .local v0, "m_resultclean":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 165
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_60

    .line 166
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 167
    .end local v25    # "out":Ljava/lang/String;
    .local v8, "out":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v7

    .line 168
    .end local v20    # "outLen":I
    .local v9, "outLen":I
    nop

    .line 172
    move-object v15, v8

    move/from16 v20, v9

    goto :goto_38

    .line 169
    .end local v8    # "out":Ljava/lang/String;
    .end local v9    # "outLen":I
    .restart local v20    # "outLen":I
    .restart local v25    # "out":Ljava/lang/String;
    :cond_60
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 170
    .end local v25    # "out":Ljava/lang/String;
    .restart local v8    # "out":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 172
    .end local v20    # "outLen":I
    .local v7, "outLen":I
    move/from16 v20, v7

    move-object v15, v8

    .end local v7    # "outLen":I
    .end local v8    # "out":Ljava/lang/String;
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :goto_38
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v8, v20

    add-int/2addr v7, v8

    .line 173
    .end local v21    # "start":I
    .local v7, "start":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    add-int v14, v7, v8

    .line 174
    .end local v23    # "end":I
    .restart local v14    # "end":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_61

    .line 177
    const/16 v22, 0x0

    .line 180
    nop

    .line 129
    .end local v2    # "m28":Ljava/util/regex/Matcher;
    .end local v24    # "city":Ljava/lang/String;
    .end local v36    # "p_big":Ljava/util/regex/Pattern;
    .end local v65    # "pCut":Ljava/util/regex/Pattern;
    .end local v68    # "pSingle":Ljava/util/regex/Pattern;
    .local v0, "city":Ljava/lang/String;
    .local v5, "p_big":Ljava/util/regex/Pattern;
    .local v6, "m28":Ljava/util/regex/Matcher;
    .local v7, "pCut":Ljava/util/regex/Pattern;
    .local v8, "pSingle":Ljava/util/regex/Pattern;
    .local v9, "pPre_road":Ljava/util/regex/Pattern;
    .restart local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .restart local v21    # "start":I
    :cond_61
    :goto_39
    move-object v9, v5

    move-object v10, v6

    move/from16 v21, v7

    move-object/from16 v0, v24

    goto :goto_37

    .end local v0    # "city":Ljava/lang/String;
    .end local v7    # "pCut":Ljava/util/regex/Pattern;
    .end local v8    # "pSingle":Ljava/util/regex/Pattern;
    .end local v9    # "pPre_road":Ljava/util/regex/Pattern;
    .end local v10    # "pNot_road":Ljava/util/regex/Pattern;
    .end local v14    # "end":I
    .end local v15    # "out":Ljava/lang/String;
    .restart local v2    # "m28":Ljava/util/regex/Matcher;
    .local v5, "pPre_road":Ljava/util/regex/Pattern;
    .local v6, "pNot_road":Ljava/util/regex/Pattern;
    .restart local v23    # "end":I
    .restart local v24    # "city":Ljava/lang/String;
    .restart local v25    # "out":Ljava/lang/String;
    .restart local v36    # "p_big":Ljava/util/regex/Pattern;
    .restart local v65    # "pCut":Ljava/util/regex/Pattern;
    .restart local v68    # "pSingle":Ljava/util/regex/Pattern;
    :cond_62
    move-object v9, v5

    move-object v10, v6

    move/from16 v14, v23

    goto :goto_36

    .line 181
    :cond_63
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 182
    iget-object v0, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, "m_resultclean":Ljava/util/regex/Matcher;
    goto :goto_3a

    .line 185
    .end local v0    # "m_resultclean":Ljava/util/regex/Matcher;
    :cond_64
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v1, v0, v7}, Lcom/huawei/g11n/tmr/address/SerEn;->searCity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .end local v24    # "city":Ljava/lang/String;
    .local v0, "city":Ljava/lang/String;
    if-nez v0, :cond_65

    .line 187
    const-string v0, ""

    .line 188
    :cond_65
    iget-object v7, v1, Lcom/huawei/g11n/tmr/address/SerEn;->p_resultclean:Ljava/util/regex/Pattern;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    const/4 v9, 0x5

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x6

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move-object/from16 v24, v0

    move-object v0, v7

    .line 191
    .local v0, "m_resultclean":Ljava/util/regex/Matcher;
    .restart local v24    # "city":Ljava/lang/String;
    :goto_3a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 192
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_66

    .line 193
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 194
    .end local v25    # "out":Ljava/lang/String;
    .local v8, "out":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v7

    .line 195
    .end local v20    # "outLen":I
    .local v9, "outLen":I
    nop

    .line 199
    move-object v15, v8

    move/from16 v20, v9

    goto :goto_3b

    .line 196
    .end local v8    # "out":Ljava/lang/String;
    .end local v9    # "outLen":I
    .restart local v20    # "outLen":I
    .restart local v25    # "out":Ljava/lang/String;
    :cond_66
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 197
    .end local v25    # "out":Ljava/lang/String;
    .restart local v8    # "out":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 199
    .end local v20    # "outLen":I
    .local v7, "outLen":I
    move/from16 v20, v7

    move-object v15, v8

    .end local v7    # "outLen":I
    .end local v8    # "out":Ljava/lang/String;
    .restart local v15    # "out":Ljava/lang/String;
    .restart local v20    # "outLen":I
    :goto_3b
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    .line 200
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v7, v20

    .line 199
    add-int/2addr v7, v8

    .line 201
    .end local v21    # "start":I
    .local v7, "start":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    add-int v14, v7, v8

    .line 202
    .end local v23    # "end":I
    .restart local v14    # "end":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_61

    .line 205
    const/16 v22, 0x0

    .end local v0    # "m_resultclean":Ljava/util/regex/Matcher;
    goto/16 :goto_39
.end method

.method public searchBracket(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 1975
    const/4 v0, 0x0

    .line 1976
    .local v0, "position":I
    const-string v1, "(\\s*.?\\s*)\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1977
    .local v1, "pBracket":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1978
    .local v2, "mBracket":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1979
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1981
    :cond_0
    return v0
.end method
