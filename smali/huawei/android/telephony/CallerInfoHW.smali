.class public Lhuawei/android/telephony/CallerInfoHW;
.super Ljava/lang/Object;
.source "CallerInfoHW.java"

# interfaces
.implements Lhuawei/android/telephony/TelephonyInterfacesHW;


# static fields
.field private static final CHINA_AREACODE:Ljava/lang/String; = "0"

.field private static final CHINA_OPERATOR_MCC:Ljava/lang/String; = "460"

.field private static final CN_FIXED_NUMBER_WITH_AREA_CODE_MIN_LEN:I = 0x9

.field private static final CN_MPN_PATTERN:Ljava/lang/String; = "^(1)\\d{10}$"

.field private static final CN_NUM_MATCH:I = 0xb

.field protected static final DBG:Z = false

.field private static final FIXED_NUMBER_TOP2_TOKEN1:Ljava/lang/String; = "01"

.field private static final FIXED_NUMBER_TOP2_TOKEN2:Ljava/lang/String; = "02"

.field private static final INTERNATIONAL_PREFIX:[Ljava/lang/String;

.field private static final IPHEAD:[Ljava/lang/String;

.field private static final IPHEAD_LENTH:I = 0x5

.field private static final IS_SUPPORT_DUAL_NUMBER:Z

.field public static final MIN_MATCH:I = 0x7

.field private static final NORMAL_PREFIX_MCC:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field private static sCallerInfoHwInstance:Lhuawei/android/telephony/CallerInfoHW;

.field private static sInstance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# instance fields
.field private IS_CHINA_TELECOM:Z

.field private IS_MIIT_NUM_MATCH:Z

.field private final NUM_LONG_CUST:I

.field private final NUM_SHORT_CUST:I

.field private final chineseFixNumberAreaCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private configMatchNum:I

.field private configMatchNumShort:I

.field private final countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private countryCodeforCN:I

.field private mNetworkOperator:Ljava/lang/String;

.field private mSimNumLong:I

.field private mSimNumShort:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 65
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/CallerInfoHW;->sInstance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 81
    const-string v1, "10193"

    const-string v2, "11808"

    const-string v3, "12593"

    const-string v4, "17900"

    const-string v5, "17901"

    const-string v6, "17908"

    const-string v7, "17909"

    const-string v8, "17910"

    const-string v9, "17911"

    const-string v10, "17931"

    const-string v11, "17950"

    const-string v12, "17951"

    const-string v13, "17960"

    const-string v14, "17968"

    const-string v15, "17969"

    const-string v16, "96435"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/CallerInfoHW;->IPHEAD:[Ljava/lang/String;

    .line 86
    const-string v0, "+00"

    const-string v1, "+"

    const-string v2, "00"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/CallerInfoHW;->INTERNATIONAL_PREFIX:[Ljava/lang/String;

    .line 89
    const-string v0, "602"

    const-string v1, "722"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/CallerInfoHW;->NORMAL_PREFIX_MCC:[Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/telephony/CallerInfoHW;->sCallerInfoHwInstance:Lhuawei/android/telephony/CallerInfoHW;

    .line 104
    const-string v0, "ro.config.hw_dual_number"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/telephony/CallerInfoHW;->IS_SUPPORT_DUAL_NUMBER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "ro.config.hwft_MatchNum"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lhuawei/android/telephony/CallerInfoHW;->configMatchNum:I

    .line 47
    iget v0, p0, Lhuawei/android/telephony/CallerInfoHW;->configMatchNum:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lhuawei/android/telephony/CallerInfoHW;->configMatchNum:I

    :goto_0
    iput v1, p0, Lhuawei/android/telephony/CallerInfoHW;->NUM_LONG_CUST:I

    .line 49
    const-string v0, "ro.config.hwft_MatchNumShort"

    iget v1, p0, Lhuawei/android/telephony/CallerInfoHW;->NUM_LONG_CUST:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lhuawei/android/telephony/CallerInfoHW;->configMatchNumShort:I

    .line 50
    iget v0, p0, Lhuawei/android/telephony/CallerInfoHW;->configMatchNumShort:I

    iget v1, p0, Lhuawei/android/telephony/CallerInfoHW;->NUM_LONG_CUST:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lhuawei/android/telephony/CallerInfoHW;->NUM_LONG_CUST:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lhuawei/android/telephony/CallerInfoHW;->configMatchNumShort:I

    :goto_1
    iput v0, p0, Lhuawei/android/telephony/CallerInfoHW;->NUM_SHORT_CUST:I

    .line 53
    iget v0, p0, Lhuawei/android/telephony/CallerInfoHW;->NUM_LONG_CUST:I

    iput v0, p0, Lhuawei/android/telephony/CallerInfoHW;->mSimNumLong:I

    .line 54
    iget v0, p0, Lhuawei/android/telephony/CallerInfoHW;->NUM_SHORT_CUST:I

    iput v0, p0, Lhuawei/android/telephony/CallerInfoHW;->mSimNumShort:I

    .line 57
    const-string v0, "ro.config.hw_opta"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "92"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "ro.config.hw_optb"

    const-string v2, "0"

    .line 58
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "156"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lhuawei/android/telephony/CallerInfoHW;->IS_CHINA_TELECOM:Z

    .line 61
    const-string v0, "ro.config.miit_number_match"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhuawei/android/telephony/CallerInfoHW;->IS_MIIT_NUM_MATCH:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/telephony/CallerInfoHW;->mNetworkOperator:Ljava/lang/String;

    .line 66
    sget-object v0, Lhuawei/android/telephony/CallerInfoHW;->sInstance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhuawei/android/telephony/CallerInfoHW;->countryCodeforCN:I

    .line 96
    nop

    .line 97
    invoke-static {}, Lcom/android/i18n/phonenumbers/CountryCodeToRegionCodeMapUtils;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/telephony/CallerInfoHW;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 99
    nop

    .line 100
    invoke-static {}, Lhuawei/android/telephony/ChineseFixNumberAreaCodeMap;->getChineseFixNumberAreaCodeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/telephony/CallerInfoHW;->chineseFixNumberAreaCodeMap:Ljava/util/Map;

    .line 99
    return-void
.end method

.method private compareNumsInternal(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 16
    .param p1, "num1"    # Ljava/lang/String;
    .param p2, "num2"    # Ljava/lang/String;
    .param p3, "numLong"    # I
    .param p4, "numShort"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1503
    move/from16 v3, p4

    const/4 v4, 0x0

    .line 1504
    .local v4, "num1Len":I
    const/4 v5, 0x0

    .line 1505
    .local v5, "num2Len":I
    const/4 v6, 0x0

    .line 1506
    .local v6, "num1Long":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1507
    .local v7, "num1Short":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1508
    .local v8, "num2Long":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1510
    .local v9, "num2Short":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "compareNumsInternal, num1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", num2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", numLong: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", numShort: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1512
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_2

    .line 1516
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1517
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 1518
    const/4 v10, 0x7

    if-ge v2, v10, :cond_1

    goto :goto_0

    :cond_1
    move v10, v2

    .line 1519
    .local v10, "NUM_LONG":I
    :goto_0
    if-lt v3, v10, :cond_2

    move v12, v10

    goto :goto_1

    :cond_2
    move v12, v3

    .line 1520
    .local v12, "NUM_SHORT":I
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "compareNumsInternal, after check NUM_LONG: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", NUM_SHORT: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1523
    const/4 v13, 0x1

    if-lt v4, v10, :cond_4

    .line 1524
    sub-int v14, v4, v10

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1525
    sub-int v14, v4, v12

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1526
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "compareNumsInternal, 11: num1Long = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", num1Short = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1528
    if-lt v5, v10, :cond_3

    .line 1529
    sub-int v14, v5, v10

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1530
    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_5

    .line 1531
    const-string v11, "compareNumsInternal, 11: >= NUM_LONG return true"

    invoke-static {v11}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1532
    return v13

    .line 1534
    :cond_3
    if-lt v5, v12, :cond_5

    .line 1535
    sub-int v14, v5, v12

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1536
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_5

    .line 1537
    const-string v11, "compareNumsInternal, 11: >= NUM_SHORT return true"

    invoke-static {v11}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1538
    return v13

    .line 1541
    :cond_4
    if-lt v4, v12, :cond_6

    .line 1542
    sub-int v14, v4, v12

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1543
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "compareNumsInternal, 7: num1Short = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1545
    if-lt v5, v12, :cond_5

    .line 1546
    sub-int v14, v5, v12

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1547
    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_5

    .line 1548
    const-string v11, "compareNumsInternal, 7: >= NUM_SHORT return true"

    invoke-static {v11}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1549
    return v13

    .line 1556
    :cond_5
    return v11

    .line 1553
    :cond_6
    const-string v11, "compareNumsInternal, 5: do full compare"

    invoke-static {v11}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    return v11

    .line 1513
    .end local v10    # "NUM_LONG":I
    .end local v12    # "NUM_SHORT":I
    :cond_7
    :goto_2
    return v11
.end method

.method private deleteIPHead(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .line 1185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    return-object p1

    .line 1189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1190
    .local v0, "numberLen":I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1191
    const-string v1, "deleteIPHead() numberLen is short than 5!"

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1192
    return-object p1

    .line 1195
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1196
    .local v2, "ipHead":Ljava/lang/String;
    sget-object v3, Lhuawei/android/telephony/CallerInfoHW;->IPHEAD:[Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1197
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1200
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIPHead() new Number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1201
    return-object p1
.end method

.method private static formatedForDualNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "compNum"    # Ljava/lang/String;

    .line 1619
    sget-boolean v0, Lhuawei/android/telephony/CallerInfoHW;->IS_SUPPORT_DUAL_NUMBER:Z

    if-nez v0, :cond_0

    .line 1620
    return-object p0

    .line 1622
    :cond_0
    invoke-static {p0}, Lhuawei/android/telephony/CallerInfoHW;->isVirtualNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1623
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1626
    :cond_1
    const-string v0, "*230#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1627
    const/4 v0, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1628
    :cond_2
    const-string v0, "*23#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1629
    const/4 v0, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1631
    :cond_3
    :goto_0
    return-object p0
.end method

.method private getCallerIndexInternal(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 23
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "compNum"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "numLong"    # I
    .param p5, "numShort"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 1317
    move/from16 v4, p5

    const/4 v5, 0x0

    .line 1318
    .local v5, "compNumShort":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1319
    .local v6, "compNumLong":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1320
    .local v7, "tmpNum":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1321
    .local v8, "tmpNumShort":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1323
    .local v9, "tmpNumLong":Ljava/lang/String;
    const/4 v10, -0x1

    .line 1324
    .local v10, "numShortID":I
    const/4 v11, -0x1

    .line 1325
    .local v11, "numLongID":I
    const/4 v12, -0x1

    .line 1327
    .local v12, "fixedIndex":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getCallerIndexInternal, compNum: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", numLong: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", numShort: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1328
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1329
    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_0

    .line 1330
    const/4 v12, 0x0

    .line 1332
    :cond_0
    const-string v13, "CallerInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getCallerIndexInternal(),null == compNum! fixedIndex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return v12

    .line 1335
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    .line 1336
    .local v13, "compNumLen":I
    const/4 v14, 0x7

    if-ge v3, v14, :cond_2

    goto :goto_0

    :cond_2
    move v14, v3

    .line 1337
    .local v14, "NUM_LONG":I
    :goto_0
    if-lt v4, v14, :cond_3

    move v15, v14

    goto :goto_1

    :cond_3
    move v15, v4

    .line 1338
    .local v15, "NUM_SHORT":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallerIndexInternal, after check NUM_LONG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", NUM_SHORT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1340
    if-eqz v0, :cond_1a

    .line 1342
    if-lt v13, v14, :cond_f

    .line 1344
    sub-int v3, v13, v14

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1345
    sub-int v3, v13, v15

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "11: compNumLong = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", compNumShort = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1349
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1350
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1351
    .local v3, "columnIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    .line 1353
    :goto_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1354
    .end local v7    # "tmpNum":Ljava/lang/String;
    .local v4, "tmpNum":Ljava/lang/String;
    if-eqz v4, :cond_c

    const/16 v7, 0x40

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    if-gez v16, :cond_c

    .line 1355
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1360
    .end local v4    # "tmpNum":Ljava/lang/String;
    .restart local v7    # "tmpNum":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 1361
    .local v4, "tmpNumLen":I
    move/from16 v17, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "columnIndex":I
    .local v17, "columnIndex":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v8

    const-string v8, "11: tmpNum = "

    .end local v8    # "tmpNumShort":Ljava/lang/String;
    .local v18, "tmpNumShort":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", tmpNum.length11: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ID = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1361
    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1366
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 1367
    .end local v11    # "numLongID":I
    .local v3, "numLongID":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exact match: break! numLongID = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1368
    nop

    .line 1395
    move v11, v3

    move-object/from16 v8, v18

    goto/16 :goto_5

    .line 1371
    .end local v3    # "numLongID":I
    .restart local v11    # "numLongID":I
    :cond_4
    if-lt v4, v14, :cond_6

    .line 1372
    sub-int v3, v4, v14

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1374
    .end local v9    # "tmpNumLong":Ljava/lang/String;
    .local v3, "tmpNumLong":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne v8, v11, :cond_5

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    .line 1375
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 1376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "11: > NUM_LONG numLongID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1378
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "11: >= NUM_LONG, and !=,  tmpNumLong = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", numLongID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1393
    move-object v9, v3

    .end local v3    # "tmpNumLong":Ljava/lang/String;
    .end local v4    # "tmpNumLen":I
    .end local v18    # "tmpNumShort":Ljava/lang/String;
    .restart local v8    # "tmpNumShort":Ljava/lang/String;
    .restart local v9    # "tmpNumLong":Ljava/lang/String;
    :goto_3
    move-object/from16 v8, v18

    goto :goto_4

    .line 1382
    .end local v8    # "tmpNumShort":Ljava/lang/String;
    .restart local v4    # "tmpNumLen":I
    .restart local v18    # "tmpNumShort":Ljava/lang/String;
    :cond_6
    if-lt v4, v15, :cond_8

    .line 1383
    sub-int v3, v4, v15

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1385
    .end local v18    # "tmpNumShort":Ljava/lang/String;
    .local v3, "tmpNumShort":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne v8, v10, :cond_7

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    .line 1386
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 1387
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v4

    const-string v4, "11: >= NUM_SHORT, tmpNumShort = "

    .end local v4    # "tmpNumLen":I
    .local v19, "tmpNumLen":I
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", numShortID:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1393
    move-object v8, v3

    goto :goto_4

    .line 1390
    .end local v3    # "tmpNumShort":Ljava/lang/String;
    .end local v19    # "tmpNumLen":I
    .restart local v4    # "tmpNumLen":I
    .restart local v18    # "tmpNumShort":Ljava/lang/String;
    :cond_8
    move/from16 v19, v4

    .end local v4    # "tmpNumLen":I
    .restart local v19    # "tmpNumLen":I
    const-string v3, "tmpNum11, continue"

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1391
    goto :goto_3

    .line 1393
    .end local v18    # "tmpNumShort":Ljava/lang/String;
    .end local v19    # "tmpNumLen":I
    .restart local v8    # "tmpNumShort":Ljava/lang/String;
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1395
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "11: numLongID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", numShortID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1396
    const/4 v3, -0x1

    if-eq v3, v11, :cond_9

    .line 1397
    move v3, v11

    .line 1404
    .end local v17    # "columnIndex":I
    :goto_6
    move v12, v3

    goto :goto_7

    .line 1398
    .restart local v17    # "columnIndex":I
    :cond_9
    if-eq v3, v10, :cond_a

    .line 1399
    move v3, v10

    goto :goto_6

    .line 1401
    :cond_a
    const/4 v3, -0x1

    .end local v12    # "fixedIndex":I
    .end local v17    # "columnIndex":I
    .local v3, "fixedIndex":I
    goto :goto_6

    .line 1353
    .end local v3    # "fixedIndex":I
    .restart local v12    # "fixedIndex":I
    .restart local v17    # "columnIndex":I
    :cond_b
    move/from16 v3, v17

    goto/16 :goto_2

    .line 1357
    .end local v7    # "tmpNum":Ljava/lang/String;
    .end local v17    # "columnIndex":I
    .local v3, "columnIndex":I
    .local v4, "tmpNum":Ljava/lang/String;
    :cond_c
    move/from16 v17, v3

    move-object/from16 v18, v8

    const/4 v3, -0x1

    .end local v3    # "columnIndex":I
    .end local v8    # "tmpNumShort":Ljava/lang/String;
    .restart local v17    # "columnIndex":I
    .restart local v18    # "tmpNumShort":Ljava/lang/String;
    return v3

    .line 1404
    .end local v4    # "tmpNum":Ljava/lang/String;
    .end local v17    # "columnIndex":I
    .end local v18    # "tmpNumShort":Ljava/lang/String;
    .restart local v7    # "tmpNum":Ljava/lang/String;
    .restart local v8    # "tmpNumShort":Ljava/lang/String;
    :cond_d
    :goto_7
    nop

    .line 1498
    .end local v6    # "compNumLong":Ljava/lang/String;
    .local v21, "compNumLong":Ljava/lang/String;
    :cond_e
    move-object/from16 v21, v6

    goto/16 :goto_10

    .line 1405
    .end local v21    # "compNumLong":Ljava/lang/String;
    .restart local v6    # "compNumLong":Ljava/lang/String;
    :cond_f
    if-lt v13, v15, :cond_1b

    .line 1407
    sub-int v3, v13, v15

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "7: compNumShort = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1410
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1411
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1412
    .restart local v3    # "columnIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_19

    .line 1414
    :goto_8
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1415
    .end local v7    # "tmpNum":Ljava/lang/String;
    .restart local v4    # "tmpNum":Ljava/lang/String;
    if-eqz v4, :cond_18

    const/16 v7, 0x40

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    if-gez v16, :cond_18

    .line 1416
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1421
    .end local v4    # "tmpNum":Ljava/lang/String;
    .restart local v7    # "tmpNum":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 1422
    .local v4, "tmpNumLen":I
    move/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "columnIndex":I
    .local v20, "columnIndex":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    const-string v6, "7: tmpNum = "

    .end local v6    # "compNumLong":Ljava/lang/String;
    .restart local v21    # "compNumLong":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", tmpNum.length7: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ID = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1422
    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1427
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 1428
    .end local v10    # "numShortID":I
    .local v3, "numShortID":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exact match numShortID = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1429
    nop

    .line 1456
    move v10, v3

    goto/16 :goto_b

    .line 1432
    .end local v3    # "numShortID":I
    .restart local v10    # "numShortID":I
    :cond_10
    if-lt v4, v14, :cond_12

    .line 1433
    sub-int v3, v4, v15

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1435
    .end local v8    # "tmpNumShort":Ljava/lang/String;
    .local v3, "tmpNumShort":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v6, v11, :cond_11

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_11

    .line 1436
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 1437
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "7: >= NUM_LONG, tmpNumShort = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", numLongID:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1454
    .end local v3    # "tmpNumShort":Ljava/lang/String;
    .end local v4    # "tmpNumLen":I
    .restart local v8    # "tmpNumShort":Ljava/lang/String;
    :goto_9
    move-object v8, v3

    goto :goto_a

    .line 1441
    .restart local v4    # "tmpNumLen":I
    :cond_12
    if-lt v4, v15, :cond_14

    .line 1442
    sub-int v3, v4, v15

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1444
    .end local v8    # "tmpNumShort":Ljava/lang/String;
    .restart local v3    # "tmpNumShort":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v6, v10, :cond_13

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_13

    .line 1445
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 1446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "7: >= NUM_SHORT numShortID = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1448
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "7: >= NUM_SHORT, and !=, tmpNumShort = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", numShortID:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_9

    .line 1451
    .end local v3    # "tmpNumShort":Ljava/lang/String;
    .restart local v8    # "tmpNumShort":Ljava/lang/String;
    :cond_14
    const-string v3, "7: continue"

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1452
    nop

    .line 1454
    .end local v4    # "tmpNumLen":I
    :goto_a
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1456
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "7: numShortID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", numLongID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1457
    const/4 v3, -0x1

    if-eq v3, v10, :cond_15

    .line 1458
    move v3, v10

    .line 1465
    .end local v20    # "columnIndex":I
    :goto_c
    move v12, v3

    goto :goto_d

    .line 1459
    .restart local v20    # "columnIndex":I
    :cond_15
    if-eq v3, v11, :cond_16

    .line 1460
    move v3, v11

    goto :goto_c

    .line 1462
    :cond_16
    const/4 v3, -0x1

    .end local v12    # "fixedIndex":I
    .end local v20    # "columnIndex":I
    .local v3, "fixedIndex":I
    goto :goto_c

    .line 1414
    .end local v3    # "fixedIndex":I
    .restart local v12    # "fixedIndex":I
    .restart local v20    # "columnIndex":I
    :cond_17
    move/from16 v3, v20

    move-object/from16 v6, v21

    goto/16 :goto_8

    .line 1418
    .end local v7    # "tmpNum":Ljava/lang/String;
    .end local v20    # "columnIndex":I
    .end local v21    # "compNumLong":Ljava/lang/String;
    .local v3, "columnIndex":I
    .local v4, "tmpNum":Ljava/lang/String;
    .restart local v6    # "compNumLong":Ljava/lang/String;
    :cond_18
    move/from16 v20, v3

    move-object/from16 v21, v6

    const/4 v3, -0x1

    .end local v3    # "columnIndex":I
    .end local v6    # "compNumLong":Ljava/lang/String;
    .restart local v20    # "columnIndex":I
    .restart local v21    # "compNumLong":Ljava/lang/String;
    return v3

    .line 1465
    .end local v4    # "tmpNum":Ljava/lang/String;
    .end local v20    # "columnIndex":I
    .end local v21    # "compNumLong":Ljava/lang/String;
    .restart local v6    # "compNumLong":Ljava/lang/String;
    .restart local v7    # "tmpNum":Ljava/lang/String;
    :cond_19
    move-object/from16 v21, v6

    .end local v6    # "compNumLong":Ljava/lang/String;
    .restart local v21    # "compNumLong":Ljava/lang/String;
    :goto_d
    goto/16 :goto_10

    .line 1498
    .end local v21    # "compNumLong":Ljava/lang/String;
    .restart local v6    # "compNumLong":Ljava/lang/String;
    :cond_1a
    move-object/from16 v21, v6

    .end local v6    # "compNumLong":Ljava/lang/String;
    .restart local v21    # "compNumLong":Ljava/lang/String;
    goto/16 :goto_10

    .line 1467
    .end local v21    # "compNumLong":Ljava/lang/String;
    .restart local v6    # "compNumLong":Ljava/lang/String;
    :cond_1b
    move-object/from16 v21, v6

    const/4 v3, -0x1

    .end local v6    # "compNumLong":Ljava/lang/String;
    .restart local v21    # "compNumLong":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1468
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1469
    .local v4, "columnIndex":I
    if-eq v4, v3, :cond_20

    .line 1471
    :goto_e
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1472
    .end local v7    # "tmpNum":Ljava/lang/String;
    .local v3, "tmpNum":Ljava/lang/String;
    if-eqz v3, :cond_1f

    const/16 v6, 0x40

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_1f

    .line 1473
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1478
    .end local v3    # "tmpNum":Ljava/lang/String;
    .restart local v7    # "tmpNum":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 1479
    .local v3, "tmpNumLen":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5: tmpNum = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tmpNum.length: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ID = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1479
    invoke-static {v2}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1482
    if-ne v3, v13, :cond_1c

    .line 1483
    const/4 v2, -0x1

    if-ne v2, v12, :cond_1d

    invoke-virtual {v1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1d

    .line 1484
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 1485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "5: break! numLongID = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1486
    goto :goto_f

    .line 1489
    :cond_1c
    const-string v2, "5: continue"

    invoke-static {v2}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1490
    nop

    .line 1492
    .end local v3    # "tmpNumLen":I
    :cond_1d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1493
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5: fixedIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .end local v4    # "columnIndex":I
    goto :goto_10

    .line 1471
    .restart local v4    # "columnIndex":I
    :cond_1e
    move-object/from16 v2, p3

    goto/16 :goto_e

    .line 1475
    .end local v7    # "tmpNum":Ljava/lang/String;
    .local v3, "tmpNum":Ljava/lang/String;
    :cond_1f
    const/4 v2, -0x1

    return v2

    .line 1498
    .end local v3    # "tmpNum":Ljava/lang/String;
    .end local v4    # "columnIndex":I
    .restart local v7    # "tmpNum":Ljava/lang/String;
    :cond_20
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallerIndexInternal, fixedIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1499
    return v12
.end method

.method private getChineseFixNumberAreaCodeLength(Ljava/lang/String;)I
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, "len":I
    move-object v1, p1

    .line 1117
    .local v1, "tmpNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1118
    .local v2, "areaCodeString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1119
    .local v3, "top2String":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1121
    .local v4, "areaCodeArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x9

    if-ge v5, v7, :cond_0

    goto/16 :goto_6

    .line 1125
    :cond_0
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1128
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1129
    const-string v7, "01"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x3

    if-nez v7, :cond_5

    const-string v7, "02"

    .line 1130
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 1143
    :cond_2
    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1144
    iget-object v9, p0, Lhuawei/android/telephony/CallerInfoHW;->chineseFixNumberAreaCodeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/util/ArrayList;

    .line 1145
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1146
    .local v5, "areaCodeArraySize":I
    nop

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_9

    .line 1147
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1148
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_1
    move v0, v7

    .line 1149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getChineseFixNumberAreaCodeLength(), matched area code len: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1151
    goto :goto_5

    .line 1146
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1131
    .end local v5    # "areaCodeArraySize":I
    .end local v6    # "i":I
    :cond_5
    :goto_2
    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1132
    iget-object v7, p0, Lhuawei/android/telephony/CallerInfoHW;->chineseFixNumberAreaCodeMap:Ljava/util/Map;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Ljava/util/ArrayList;

    .line 1133
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1134
    .local v7, "areaCodeArraySize":I
    nop

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v7, :cond_8

    .line 1135
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1136
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v5, v8

    nop

    :cond_6
    move v0, v5

    .line 1137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getChineseFixNumberAreaCodeLength(), matched area code len: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", number: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1139
    goto :goto_4

    .line 1134
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1142
    .end local v6    # "i":I
    .end local v7    # "areaCodeArraySize":I
    :cond_8
    :goto_4
    nop

    .line 1155
    :cond_9
    :goto_5
    return v0

    .line 1122
    :cond_a
    :goto_6
    return v6
.end method

.method private getFormatNumberByCountryISO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .line 1310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1313
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1311
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFullMatchIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "compNum"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;

    .line 1272
    const/4 v0, -0x1

    .line 1273
    .local v0, "fixedIndex":I
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1275
    iget-boolean v1, p0, Lhuawei/android/telephony/CallerInfoHW;->IS_CHINA_TELECOM:Z

    if-eqz v1, :cond_0

    const-string v1, "**133"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1277
    const-string v1, "full match check, compNum startsWith **133 && endsWith #"

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1279
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full match check, compNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1281
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1282
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1283
    .local v1, "columnIndex":I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_4

    .line 1285
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1286
    .local v2, "tmpNum":Ljava/lang/String;
    if-eqz v2, :cond_2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    .line 1287
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "full match check, tmpNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1291
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 1292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exact match: break! fixedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1293
    goto :goto_0

    .line 1295
    .end local v2    # "tmpNum":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1298
    .end local v1    # "columnIndex":I
    :cond_4
    :goto_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/telephony/CallerInfoHW;
    .locals 2

    const-class v0, Lhuawei/android/telephony/CallerInfoHW;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lhuawei/android/telephony/CallerInfoHW;->sCallerInfoHwInstance:Lhuawei/android/telephony/CallerInfoHW;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lhuawei/android/telephony/CallerInfoHW;

    invoke-direct {v1}, Lhuawei/android/telephony/CallerInfoHW;-><init>()V

    sput-object v1, Lhuawei/android/telephony/CallerInfoHW;->sCallerInfoHwInstance:Lhuawei/android/telephony/CallerInfoHW;

    .line 110
    :cond_0
    sget-object v1, Lhuawei/android/telephony/CallerInfoHW;->sCallerInfoHwInstance:Lhuawei/android/telephony/CallerInfoHW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getIntlPrefixLength(Ljava/lang/String;)I
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .line 1060
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1061
    return v1

    .line 1064
    :cond_0
    invoke-direct {p0, p1}, Lhuawei/android/telephony/CallerInfoHW;->isNormalPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    return v1

    .line 1068
    :cond_1
    sget-object v0, Lhuawei/android/telephony/CallerInfoHW;->INTERNATIONAL_PREFIX:[Ljava/lang/String;

    array-length v0, v0

    .line 1069
    .local v0, "len":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1070
    sget-object v3, Lhuawei/android/telephony/CallerInfoHW;->INTERNATIONAL_PREFIX:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1071
    sget-object v1, Lhuawei/android/telephony/CallerInfoHW;->INTERNATIONAL_PREFIX:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 1069
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1074
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method private isChineseMobilePhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 1101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1102
    return v1

    .line 1104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 1105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "tmpNumber":Ljava/lang/String;
    const-string v2, "^(1)\\d{10}$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChineseMobilePhoneNumber(), return true for number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1108
    const/4 v1, 0x1

    return v1

    .line 1111
    .end local v0    # "tmpNumber":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private isChineseNumberByPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "numberPrefix"    # Ljava/lang/String;
    .param p2, "netIso"    # Ljava/lang/String;

    .line 1206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChineseNumberByPrefix(), networkCountryIso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1208
    if-eqz p2, :cond_0

    const-string v0, "CN"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    const/4 v0, 0x1

    return v0

    .line 1211
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1215
    :cond_1
    invoke-direct {p0, p1}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixLength(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1216
    iget v0, p0, Lhuawei/android/telephony/CallerInfoHW;->countryCodeforCN:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEqualChineseFixNumberAreaCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "compNumAreaCode"    # Ljava/lang/String;
    .param p2, "dbNumAreaCode"    # Ljava/lang/String;

    .line 1159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    return v1

    .line 1161
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1162
    iget-boolean v0, p0, Lhuawei/android/telephony/CallerInfoHW;->IS_MIIT_NUM_MATCH:Z

    if-eqz v0, :cond_1

    .line 1163
    return v2

    .line 1165
    :cond_1
    return v1

    .line 1167
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1168
    iget-boolean v0, p0, Lhuawei/android/telephony/CallerInfoHW;->IS_MIIT_NUM_MATCH:Z

    if-eqz v0, :cond_3

    .line 1169
    return v2

    .line 1171
    :cond_3
    return v1

    .line 1174
    :cond_4
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1177
    :cond_5
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1180
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEqualCountryCodePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "num1Prefix"    # Ljava/lang/String;
    .param p2, "netIso1"    # Ljava/lang/String;
    .param p3, "num2Prefix"    # Ljava/lang/String;
    .param p4, "netIso2"    # Ljava/lang/String;

    .line 1222
    const/4 v0, 0x0

    .line 1225
    .local v0, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1226
    .local v1, "isBothPrefixEmpty":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1228
    const-string v3, "isEqualCountryCodePrefix(), both have no country code, return true"

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1229
    return v2

    .line 1231
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEqualCountryCodePrefix(), netIso1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", netIso2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1235
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1236
    .local v2, "netIso":Ljava/lang/String;
    const-string v3, "CN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1237
    iget v3, p0, Lhuawei/android/telephony/CallerInfoHW;->countryCodeforCN:I

    .local v3, "countryCode":I
    goto :goto_1

    .line 1239
    .end local v3    # "countryCode":I
    :cond_2
    sget-object v3, Lhuawei/android/telephony/CallerInfoHW;->sInstance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v3

    .line 1241
    .restart local v3    # "countryCode":I
    :goto_1
    invoke-direct {p0, p3}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixLength(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 1242
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1243
    .end local v2    # "netIso":Ljava/lang/String;
    .end local v3    # "countryCode":I
    goto :goto_3

    .line 1244
    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    .line 1247
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEqualCountryCodePrefix(), netIso1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", netIso2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1249
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1251
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1252
    .restart local v2    # "netIso":Ljava/lang/String;
    const-string v3, "CN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1253
    iget v3, p0, Lhuawei/android/telephony/CallerInfoHW;->countryCodeforCN:I

    .restart local v3    # "countryCode":I
    goto :goto_2

    .line 1255
    .end local v3    # "countryCode":I
    :cond_5
    sget-object v3, Lhuawei/android/telephony/CallerInfoHW;->sInstance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v3

    .line 1257
    .restart local v3    # "countryCode":I
    :goto_2
    invoke-direct {p0, p1}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixLength(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1258
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1259
    .end local v2    # "netIso":Ljava/lang/String;
    .end local v3    # "countryCode":I
    goto :goto_3

    .line 1260
    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    .line 1264
    :cond_7
    invoke-direct {p0, p1}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1265
    invoke-direct {p0, p3}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixLength(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 1266
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1268
    :goto_3
    return v0
.end method

.method private isNormalPrefix(Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .line 1600
    const-string v0, " "

    .line 1601
    .local v0, "sMcc":Ljava/lang/String;
    sget-object v1, Lhuawei/android/telephony/CallerInfoHW;->NORMAL_PREFIX_MCC:[Ljava/lang/String;

    array-length v1, v1

    .line 1602
    .local v1, "operatorCount":I
    iget-object v2, p0, Lhuawei/android/telephony/CallerInfoHW;->mNetworkOperator:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhuawei/android/telephony/CallerInfoHW;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_0

    .line 1603
    iget-object v2, p0, Lhuawei/android/telephony/CallerInfoHW;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1605
    :cond_0
    const-string v2, "011"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1606
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1607
    sget-object v4, Lhuawei/android/telephony/CallerInfoHW;->NORMAL_PREFIX_MCC:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 1608
    const-string v3, "those operator 011 are normal prefix"

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1609
    const/4 v3, 0x1

    return v3

    .line 1606
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1613
    .end local v2    # "i":I
    :cond_2
    return v3
.end method

.method private isRoamingCountryNumberByPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "numberPrefix"    # Ljava/lang/String;
    .param p2, "netIso"    # Ljava/lang/String;

    .line 1560
    const-string v0, "gsm.hw.operator.isroaming"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1563
    const/4 v0, 0x1

    return v0

    .line 1566
    :cond_0
    invoke-direct {p0, p1}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixLength(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1567
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1568
    sget-object v0, Lhuawei/android/telephony/CallerInfoHW;->sInstance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 1569
    .local v0, "countryCodeforNetIso":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1573
    .end local v0    # "countryCodeforNetIso":I
    :cond_1
    return v1
.end method

.method private isValidData4Number(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "data1Num"    # Ljava/lang/String;
    .param p2, "data4Num"    # Ljava/lang/String;

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidData4Number, data1Num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data4Num: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1579
    invoke-virtual {p0, p2}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixAndCCLen(Ljava/lang/String;)I

    move-result v0

    .line 1580
    .local v0, "countryCodeLen":I
    if-lez v0, :cond_0

    .line 1581
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1583
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidData4Number, data4Num after remove prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1586
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1587
    const/4 v1, 0x1

    return v1

    .line 1590
    .end local v0    # "countryCodeLen":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isVirtualNum(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dialString"    # Ljava/lang/String;

    .line 1637
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1638
    return v1

    .line 1640
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1642
    .local v0, "tempstring":Ljava/lang/String;
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    const-string v5, ""

    .line 1643
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1645
    const-string v3, "*230#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1646
    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1647
    :cond_1
    const-string v3, "*23#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1648
    const/4 v3, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1651
    :cond_2
    :goto_0
    const-string v3, "[0-9]+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1652
    return v1

    .line 1654
    :cond_3
    return v2
.end method

.method public static isfixedIndexValid(Ljava/lang/String;Landroid/database/Cursor;)Z
    .locals 3
    .param p0, "cookie"    # Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 1047
    new-instance v0, Lhuawei/android/telephony/CallerInfoHW;

    invoke-direct {v0}, Lhuawei/android/telephony/CallerInfoHW;-><init>()V

    .line 1048
    .local v0, "callerInfoHW":Lhuawei/android/telephony/CallerInfoHW;
    const-string v1, "number"

    invoke-virtual {v0, p1, p0, v1}, Lhuawei/android/telephony/CallerInfoHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1049
    .local v1, "fixedIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 1057
    return-void
.end method

.method private shouldDoNumberMatchAgainBySimMccmnc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .line 1302
    const-string v0, "gsm.hw.operator.isroaming"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    invoke-direct {p0, p1, p2}, Lhuawei/android/telephony/CallerInfoHW;->getFormatNumberByCountryISO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1304
    const/4 v0, 0x1

    return v0

    .line 1306
    :cond_0
    return v1
.end method


# virtual methods
.method public compareNums(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "num1"    # Ljava/lang/String;
    .param p2, "num2"    # Ljava/lang/String;

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "num1Len":I
    const/4 v1, 0x0

    .line 335
    .local v1, "num2Len":I
    iget v2, p0, Lhuawei/android/telephony/CallerInfoHW;->NUM_LONG_CUST:I

    .line 336
    .local v2, "NUM_LONG":I
    iget v3, p0, Lhuawei/android/telephony/CallerInfoHW;->NUM_SHORT_CUST:I

    .line 338
    .local v3, "NUM_SHORT":I
    const/4 v4, 0x0

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 342
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareNums, num1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", num2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 362
    const-string v5, "ro.config.hwft_MatchNum"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    .line 364
    const-string v5, "gsm.hw.matchnum"

    const/4 v6, 0x7

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 365
    .local v5, "numMatch":I
    const-string v7, "gsm.hw.matchnum.short"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 366
    .local v7, "numMatchShort":I
    if-ge v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    move v2, v6

    .line 367
    if-lt v7, v2, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    move v3, v6

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compareNums, after setprop NUM_LONG = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", NUM_SHORT = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 378
    .end local v5    # "numMatch":I
    .end local v7    # "numMatchShort":I
    :cond_3
    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_4

    .line 379
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 381
    :cond_4
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_5

    .line 382
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 387
    :cond_5
    invoke-static {p1}, Lhuawei/android/telephony/CallerInfoHW;->formatedForDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-static {p2}, Lhuawei/android/telephony/CallerInfoHW;->formatedForDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 390
    iget-boolean v5, p0, Lhuawei/android/telephony/CallerInfoHW;->IS_CHINA_TELECOM:Z

    if-eqz v5, :cond_6

    const-string v5, "**133"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 391
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 392
    const-string v5, "compareNums, num1 startsWith **133 && endsWith #"

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 394
    :cond_6
    iget-boolean v5, p0, Lhuawei/android/telephony/CallerInfoHW;->IS_CHINA_TELECOM:Z

    if-eqz v5, :cond_7

    const-string v5, "**133"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "#"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 395
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 396
    const-string v4, "compareNums, num2 startsWith **133 && endsWith #"

    invoke-static {v4}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 399
    :cond_7
    if-ge v3, v2, :cond_8

    .line 401
    const-string v4, "compareNums, NUM_SHORT have been set! Only do full compare."

    invoke-static {v4}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 406
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 407
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 409
    if-le v0, v2, :cond_9

    .line 410
    sub-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 413
    :cond_9
    if-le v1, v2, :cond_a

    .line 414
    sub-int v4, v1, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 418
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compareNums, new num1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", new num2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 339
    :cond_b
    :goto_2
    return v4
.end method

.method public compareNums(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 33
    .param p1, "num1"    # Ljava/lang/String;
    .param p2, "netIso1"    # Ljava/lang/String;
    .param p3, "num2"    # Ljava/lang/String;
    .param p4, "netIso2"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 137
    move-object/from16 v4, p4

    const/4 v5, 0x0

    .line 138
    .local v5, "num1Len":I
    const/4 v6, 0x0

    .line 139
    .local v6, "num2Len":I
    const/4 v7, 0x0

    .line 141
    .local v7, "ret":Z
    const/4 v8, 0x0

    .line 142
    .local v8, "origNum1":Ljava/lang/String;
    const/4 v9, 0x0

    .line 143
    .local v9, "origNum2":Ljava/lang/String;
    const/4 v10, 0x0

    .line 144
    .local v10, "num1Prefix":Ljava/lang/String;
    const/4 v11, 0x0

    .line 145
    .local v11, "num2Prefix":Ljava/lang/String;
    const/4 v12, 0x0

    .line 146
    .local v12, "num1AreaCode":Ljava/lang/String;
    const/4 v13, 0x0

    .line 148
    .local v13, "num2AreaCode":Ljava/lang/String;
    iget v14, v0, Lhuawei/android/telephony/CallerInfoHW;->NUM_LONG_CUST:I

    .line 149
    .local v14, "NUM_LONG":I
    iget v15, v0, Lhuawei/android/telephony/CallerInfoHW;->NUM_SHORT_CUST:I

    .line 151
    .local v15, "NUM_SHORT":I
    move/from16 v16, v5

    .end local v5    # "num1Len":I
    .local v16, "num1Len":I
    if-eqz v1, :cond_28

    if-nez v3, :cond_0

    .line 152
    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v27, v12

    move-object/from16 v32, v13

    goto/16 :goto_13

    .line 154
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    const-string v6, "compareNums, num1 = "

    .end local v6    # "num2Len":I
    .local v17, "num2Len":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", netIso1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", num2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", netIso2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 164
    const-string v5, "ro.config.hwft_MatchNum"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x7

    if-nez v5, :cond_3

    .line 166
    const-string v5, "gsm.hw.matchnum"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 167
    .local v5, "numMatch":I
    const-string v6, "gsm.hw.matchnum.short"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 168
    .local v6, "numMatchShort":I
    move/from16 v18, v7

    const/4 v7, 0x7

    if-ge v5, v7, :cond_1

    .end local v7    # "ret":Z
    .local v18, "ret":Z
    const/4 v7, 0x7

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    iput v7, v0, Lhuawei/android/telephony/CallerInfoHW;->mSimNumLong:I

    move v14, v7

    .line 169
    if-lt v6, v14, :cond_2

    move v7, v14

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    iput v7, v0, Lhuawei/android/telephony/CallerInfoHW;->mSimNumShort:I

    move v15, v7

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    const-string v5, "compareNums, after setprop NUM_LONG = "

    .end local v5    # "numMatch":I
    .local v19, "numMatch":I
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", NUM_SHORT = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .end local v6    # "numMatchShort":I
    .end local v19    # "numMatch":I
    goto :goto_2

    .line 173
    .end local v18    # "ret":Z
    .restart local v7    # "ret":Z
    :cond_3
    move/from16 v18, v7

    .end local v7    # "ret":Z
    .restart local v18    # "ret":Z
    :goto_2
    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_4

    .line 174
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .end local p1    # "num1":Ljava/lang/String;
    .local v1, "num1":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_5

    .line 177
    invoke-static/range {p3 .. p3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .end local p3    # "num2":Ljava/lang/String;
    .local v3, "num2":Ljava/lang/String;
    :cond_5
    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->formatedForDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->formatedForDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    iget-boolean v5, v0, Lhuawei/android/telephony/CallerInfoHW;->IS_CHINA_TELECOM:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    const-string v5, "**133"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string v5, "compareNums, num1 startsWith **133 && endsWith #"

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 187
    :cond_6
    iget-boolean v5, v0, Lhuawei/android/telephony/CallerInfoHW;->IS_CHINA_TELECOM:Z

    if-eqz v5, :cond_7

    const-string v5, "**133"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 189
    const-string v5, "compareNums, num2 startsWith **133 && endsWith #"

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 193
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 194
    const-string v5, "compareNums, full compare returns true."

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 195
    return v6

    .line 198
    :cond_8
    move-object v5, v1

    .line 199
    .end local v8    # "origNum1":Ljava/lang/String;
    .local v5, "origNum1":Ljava/lang/String;
    move-object v7, v3

    .line 201
    .end local v9    # "origNum2":Ljava/lang/String;
    .local v7, "origNum2":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 202
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "formattedNum1":Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 204
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareNums, formattedNum1: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", with netIso1: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 205
    move-object v1, v8

    .line 208
    .end local v8    # "formattedNum1":Ljava/lang/String;
    :cond_9
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 209
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "formattedNum2":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compareNums, formattedNum2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", with netIso2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 212
    move-object v3, v6

    .line 217
    .end local v6    # "formattedNum2":Ljava/lang/String;
    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 218
    const-string v6, "compareNums, full compare for formatted number returns true."

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 219
    const/4 v6, 0x1

    return v6

    .line 224
    :cond_b
    invoke-virtual {v0, v1}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixAndCCLen(Ljava/lang/String;)I

    move-result v6

    .line 225
    .local v6, "countryCodeLen1":I
    if-lez v6, :cond_c

    .line 226
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 227
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compareNums, num1 after remove prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", num1Prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 231
    :cond_c
    invoke-virtual {v0, v3}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixAndCCLen(Ljava/lang/String;)I

    move-result v8

    .line 232
    .local v8, "countryCodeLen2":I
    if-lez v8, :cond_d

    .line 233
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 234
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 235
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v6

    const-string v6, "compareNums, num2 after remove prefix: "

    .end local v6    # "countryCodeLen1":I
    .local v20, "countryCodeLen1":I
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", num2Prefix: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 238
    .end local v20    # "countryCodeLen1":I
    .restart local v6    # "countryCodeLen1":I
    :cond_d
    move/from16 v20, v6

    .end local v6    # "countryCodeLen1":I
    .restart local v20    # "countryCodeLen1":I
    :goto_3
    invoke-direct {v0, v10, v2}, Lhuawei/android/telephony/CallerInfoHW;->isRoamingCountryNumberByPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 239
    invoke-direct {v0, v11, v4}, Lhuawei/android/telephony/CallerInfoHW;->isRoamingCountryNumberByPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_4

    .line 248
    :cond_e
    move/from16 v21, v8

    goto :goto_7

    .line 240
    :cond_f
    :goto_4
    const-string v6, "compareNums, num1 or num2 belong to roaming country"

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 241
    const-string v6, "gsm.hw.matchnum.roaming"

    const/4 v9, 0x7

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 242
    .local v6, "numMatch":I
    const-string v9, "gsm.hw.matchnum.short.roaming"

    invoke-static {v9, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 243
    .local v9, "numMatchShort":I
    move/from16 v21, v8

    const/4 v8, 0x7

    if-ge v6, v8, :cond_10

    .end local v8    # "countryCodeLen2":I
    .local v21, "countryCodeLen2":I
    const/4 v8, 0x7

    goto :goto_5

    :cond_10
    move v8, v6

    :goto_5
    move v14, v8

    .line 244
    if-lt v9, v14, :cond_11

    move v8, v14

    goto :goto_6

    :cond_11
    move v8, v9

    :goto_6
    move v15, v8

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v6

    const-string v6, "compareNums, roaming prop NUM_LONG = "

    .end local v6    # "numMatch":I
    .local v22, "numMatch":I
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", NUM_SHORT = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 248
    .end local v9    # "numMatchShort":I
    .end local v22    # "numMatch":I
    :goto_7
    invoke-direct {v0, v10, v2, v11, v4}, Lhuawei/android/telephony/CallerInfoHW;->isEqualCountryCodePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 250
    invoke-direct {v0, v10, v2}, Lhuawei/android/telephony/CallerInfoHW;->isChineseNumberByPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 251
    .local v6, "isNum1CnNumber":Z
    const/4 v8, 0x0

    .line 252
    .local v8, "isNum1CnMPN":Z
    if-eqz v6, :cond_14

    .line 253
    const/16 v14, 0xb

    .line 254
    invoke-direct {v0, v1}, Lhuawei/android/telephony/CallerInfoHW;->deleteIPHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-direct {v0, v1}, Lhuawei/android/telephony/CallerInfoHW;->isChineseMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v8

    .line 256
    if-nez v8, :cond_13

    .line 257
    invoke-direct {v0, v1}, Lhuawei/android/telephony/CallerInfoHW;->getChineseFixNumberAreaCodeLength(Ljava/lang/String;)I

    move-result v9

    .line 258
    .local v9, "areaCodeLen":I
    if-lez v9, :cond_12

    .line 259
    move/from16 v23, v8

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 260
    .end local v8    # "isNum1CnMPN":Z
    .local v23, "isNum1CnMPN":Z
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v9

    const-string v9, "compareNums, CN num1 after remove area code: "

    .end local v9    # "areaCodeLen":I
    .local v24, "areaCodeLen":I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", num1AreaCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .end local v24    # "areaCodeLen":I
    goto :goto_8

    .line 263
    .end local v23    # "isNum1CnMPN":Z
    .restart local v8    # "isNum1CnMPN":Z
    :cond_12
    move/from16 v23, v8

    .line 276
    .end local v8    # "isNum1CnMPN":Z
    .restart local v23    # "isNum1CnMPN":Z
    :goto_8
    move-object/from16 v26, v10

    goto :goto_a

    .end local v23    # "isNum1CnMPN":Z
    .restart local v8    # "isNum1CnMPN":Z
    :cond_13
    move/from16 v23, v8

    move-object/from16 v26, v10

    .end local v8    # "isNum1CnMPN":Z
    .restart local v23    # "isNum1CnMPN":Z
    goto :goto_a

    .line 266
    .end local v23    # "isNum1CnMPN":Z
    .restart local v8    # "isNum1CnMPN":Z
    :cond_14
    const-string v9, "PE"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 267
    const-string v9, "compareNums, PE num1 start with 0 not remove it"

    invoke-static {v9}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 276
    move/from16 v25, v8

    move-object/from16 v26, v10

    move-object/from16 v27, v12

    goto :goto_9

    .line 268
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    move/from16 v25, v8

    const/4 v8, 0x7

    if-lt v9, v8, :cond_16

    .end local v8    # "isNum1CnMPN":Z
    .local v25, "isNum1CnMPN":Z
    const-string v8, "0"

    .line 269
    move-object/from16 v26, v10

    move-object/from16 v27, v12

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .end local v10    # "num1Prefix":Ljava/lang/String;
    .end local v12    # "num1AreaCode":Ljava/lang/String;
    .local v26, "num1Prefix":Ljava/lang/String;
    .local v27, "num1AreaCode":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, "0"

    const/4 v9, 0x2

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 270
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v8, "compareNums, num1 remove 0 at beginning"

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 276
    move/from16 v23, v25

    move-object/from16 v12, v27

    goto :goto_a

    .end local v26    # "num1Prefix":Ljava/lang/String;
    .end local v27    # "num1AreaCode":Ljava/lang/String;
    .restart local v10    # "num1Prefix":Ljava/lang/String;
    .restart local v12    # "num1AreaCode":Ljava/lang/String;
    :cond_16
    move-object/from16 v26, v10

    move-object/from16 v27, v12

    .end local v25    # "isNum1CnMPN":Z
    .restart local v8    # "isNum1CnMPN":Z
    :cond_17
    :goto_9
    move/from16 v23, v25

    move-object/from16 v12, v27

    .end local v8    # "isNum1CnMPN":Z
    .end local v10    # "num1Prefix":Ljava/lang/String;
    .restart local v23    # "isNum1CnMPN":Z
    .restart local v26    # "num1Prefix":Ljava/lang/String;
    :goto_a
    invoke-direct {v0, v11, v4}, Lhuawei/android/telephony/CallerInfoHW;->isChineseNumberByPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 277
    .local v8, "isNum2CnNumber":Z
    const/4 v9, 0x0

    .line 278
    .local v9, "isNum2CnMPN":Z
    if-eqz v8, :cond_1a

    .line 279
    const/16 v14, 0xb

    .line 280
    invoke-direct {v0, v3}, Lhuawei/android/telephony/CallerInfoHW;->deleteIPHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-direct {v0, v3}, Lhuawei/android/telephony/CallerInfoHW;->isChineseMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v9

    .line 282
    if-nez v9, :cond_19

    .line 283
    invoke-direct {v0, v3}, Lhuawei/android/telephony/CallerInfoHW;->getChineseFixNumberAreaCodeLength(Ljava/lang/String;)I

    move-result v10

    .line 284
    .local v10, "areaCodeLen":I
    if-lez v10, :cond_18

    .line 285
    move/from16 v28, v9

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 286
    .end local v9    # "isNum2CnMPN":Z
    .local v28, "isNum2CnMPN":Z
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v10

    const-string v10, "compareNums, CN num2 after remove area code: "

    .end local v10    # "areaCodeLen":I
    .local v29, "areaCodeLen":I
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", num2AreaCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .end local v29    # "areaCodeLen":I
    goto :goto_b

    .line 289
    .end local v28    # "isNum2CnMPN":Z
    .restart local v9    # "isNum2CnMPN":Z
    :cond_18
    move/from16 v28, v9

    .line 301
    .end local v9    # "isNum2CnMPN":Z
    .restart local v28    # "isNum2CnMPN":Z
    :goto_b
    move-object/from16 v31, v11

    goto :goto_d

    .end local v28    # "isNum2CnMPN":Z
    .restart local v9    # "isNum2CnMPN":Z
    :cond_19
    move/from16 v28, v9

    move-object/from16 v31, v11

    .end local v9    # "isNum2CnMPN":Z
    .restart local v28    # "isNum2CnMPN":Z
    goto :goto_d

    .line 292
    .end local v28    # "isNum2CnMPN":Z
    .restart local v9    # "isNum2CnMPN":Z
    :cond_1a
    const-string v10, "PE"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 293
    const-string v10, "compareNums, PE num2 start with 0 not remove it"

    invoke-static {v10}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 301
    move/from16 v30, v9

    move-object/from16 v31, v11

    move-object/from16 v32, v13

    goto :goto_c

    .line 294
    :cond_1b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v30, v9

    const/4 v9, 0x7

    if-lt v10, v9, :cond_1c

    .end local v9    # "isNum2CnMPN":Z
    .local v30, "isNum2CnMPN":Z
    const-string v9, "0"

    .line 295
    move-object/from16 v31, v11

    move-object/from16 v32, v13

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .end local v11    # "num2Prefix":Ljava/lang/String;
    .end local v13    # "num2AreaCode":Ljava/lang/String;
    .local v31, "num2Prefix":Ljava/lang/String;
    .local v32, "num2AreaCode":Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "0"

    const/4 v10, 0x2

    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 296
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    const-string v9, "compareNums, num2 remove 0 at beginning"

    invoke-static {v9}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 301
    move/from16 v28, v30

    move-object/from16 v13, v32

    goto :goto_d

    .end local v31    # "num2Prefix":Ljava/lang/String;
    .end local v32    # "num2AreaCode":Ljava/lang/String;
    .restart local v11    # "num2Prefix":Ljava/lang/String;
    .restart local v13    # "num2AreaCode":Ljava/lang/String;
    :cond_1c
    move-object/from16 v31, v11

    move-object/from16 v32, v13

    .end local v30    # "isNum2CnMPN":Z
    .restart local v9    # "isNum2CnMPN":Z
    :cond_1d
    :goto_c
    move/from16 v28, v30

    move-object/from16 v13, v32

    .end local v9    # "isNum2CnMPN":Z
    .end local v11    # "num2Prefix":Ljava/lang/String;
    .restart local v28    # "isNum2CnMPN":Z
    .restart local v31    # "num2Prefix":Ljava/lang/String;
    :goto_d
    if-eqz v23, :cond_1e

    if-eqz v28, :cond_1f

    :cond_1e
    if-nez v23, :cond_22

    if-eqz v28, :cond_22

    .line 302
    :cond_1f
    invoke-direct {v0, v5, v2}, Lhuawei/android/telephony/CallerInfoHW;->shouldDoNumberMatchAgainBySimMccmnc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_21

    .line 303
    invoke-direct {v0, v7, v4}, Lhuawei/android/telephony/CallerInfoHW;->shouldDoNumberMatchAgainBySimMccmnc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    goto :goto_e

    .line 306
    :cond_20
    move/from16 v9, v18

    goto :goto_f

    .line 304
    :cond_21
    :goto_e
    iget v9, v0, Lhuawei/android/telephony/CallerInfoHW;->mSimNumLong:I

    iget v10, v0, Lhuawei/android/telephony/CallerInfoHW;->mSimNumShort:I

    invoke-direct {v0, v5, v7, v9, v10}, Lhuawei/android/telephony/CallerInfoHW;->compareNumsInternal(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v9

    .line 306
    .end local v18    # "ret":Z
    .local v9, "ret":Z
    :goto_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "compareNums, num1 and num2 not both MPN, return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 307
    return v9

    .line 308
    .end local v9    # "ret":Z
    .restart local v18    # "ret":Z
    :cond_22
    if-eqz v23, :cond_23

    if-eqz v28, :cond_23

    .line 309
    const-string v9, "compareNums, num1 and num2 are both MPN, continue to compare"

    invoke-static {v9}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_10

    .line 311
    :cond_23
    if-eqz v6, :cond_24

    if-eqz v8, :cond_24

    .line 312
    invoke-direct {v0, v12, v13}, Lhuawei/android/telephony/CallerInfoHW;->isEqualChineseFixNumberAreaCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_24

    .line 313
    const-string v9, "compareNums, areacode prefix not same, return false"

    invoke-static {v9}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 314
    const/4 v9, 0x0

    return v9

    .line 318
    .end local v6    # "isNum1CnNumber":Z
    .end local v8    # "isNum2CnNumber":Z
    .end local v23    # "isNum1CnMPN":Z
    .end local v28    # "isNum2CnMPN":Z
    :cond_24
    :goto_10
    nop

    .line 327
    invoke-direct {v0, v1, v3, v14, v15}, Lhuawei/android/telephony/CallerInfoHW;->compareNumsInternal(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    return v6

    .line 319
    .end local v26    # "num1Prefix":Ljava/lang/String;
    .end local v31    # "num2Prefix":Ljava/lang/String;
    .local v10, "num1Prefix":Ljava/lang/String;
    .restart local v11    # "num2Prefix":Ljava/lang/String;
    :cond_25
    move-object/from16 v26, v10

    move-object/from16 v31, v11

    move-object/from16 v27, v12

    move-object/from16 v32, v13

    .end local v10    # "num1Prefix":Ljava/lang/String;
    .end local v11    # "num2Prefix":Ljava/lang/String;
    .end local v12    # "num1AreaCode":Ljava/lang/String;
    .end local v13    # "num2AreaCode":Ljava/lang/String;
    .restart local v26    # "num1Prefix":Ljava/lang/String;
    .restart local v27    # "num1AreaCode":Ljava/lang/String;
    .restart local v31    # "num2Prefix":Ljava/lang/String;
    .restart local v32    # "num2AreaCode":Ljava/lang/String;
    invoke-direct {v0, v5, v2}, Lhuawei/android/telephony/CallerInfoHW;->shouldDoNumberMatchAgainBySimMccmnc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 320
    invoke-direct {v0, v7, v4}, Lhuawei/android/telephony/CallerInfoHW;->shouldDoNumberMatchAgainBySimMccmnc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_11

    .line 323
    :cond_26
    move/from16 v6, v18

    goto :goto_12

    .line 321
    :cond_27
    :goto_11
    iget v6, v0, Lhuawei/android/telephony/CallerInfoHW;->mSimNumLong:I

    iget v8, v0, Lhuawei/android/telephony/CallerInfoHW;->mSimNumShort:I

    invoke-direct {v0, v5, v7, v6, v8}, Lhuawei/android/telephony/CallerInfoHW;->compareNumsInternal(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    .line 323
    .end local v18    # "ret":Z
    .local v6, "ret":Z
    :goto_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compareNums, countrycode prefix not same, return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 324
    return v6

    .line 152
    .end local v1    # "num1":Ljava/lang/String;
    .end local v3    # "num2":Ljava/lang/String;
    .end local v5    # "origNum1":Ljava/lang/String;
    .end local v17    # "num2Len":I
    .end local v20    # "countryCodeLen1":I
    .end local v21    # "countryCodeLen2":I
    .end local v26    # "num1Prefix":Ljava/lang/String;
    .end local v27    # "num1AreaCode":Ljava/lang/String;
    .end local v31    # "num2Prefix":Ljava/lang/String;
    .end local v32    # "num2AreaCode":Ljava/lang/String;
    .local v6, "num2Len":I
    .local v7, "ret":Z
    .local v8, "origNum1":Ljava/lang/String;
    .local v9, "origNum2":Ljava/lang/String;
    .restart local v10    # "num1Prefix":Ljava/lang/String;
    .restart local v11    # "num2Prefix":Ljava/lang/String;
    .restart local v12    # "num1AreaCode":Ljava/lang/String;
    .restart local v13    # "num2AreaCode":Ljava/lang/String;
    .restart local p1    # "num1":Ljava/lang/String;
    .restart local p3    # "num2":Ljava/lang/String;
    :cond_28
    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v27, v12

    move-object/from16 v32, v13

    .end local v6    # "num2Len":I
    .end local v7    # "ret":Z
    .end local v12    # "num1AreaCode":Ljava/lang/String;
    .end local v13    # "num2AreaCode":Ljava/lang/String;
    .restart local v17    # "num2Len":I
    .restart local v18    # "ret":Z
    .restart local v27    # "num1AreaCode":Ljava/lang/String;
    .restart local v32    # "num2AreaCode":Ljava/lang/String;
    :goto_13
    const/4 v5, 0x0

    return v5
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "compNum"    # Ljava/lang/String;

    .line 425
    const-string v0, "number"

    invoke-virtual {p0, p1, p2, v0}, Lhuawei/android/telephony/CallerInfoHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "compNum"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;

    .line 430
    const-string v0, "gsm.hw.operator.iso-country"

    const-string v1, ""

    .line 431
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p0, p1, p2, p3, v0}, Lhuawei/android/telephony/CallerInfoHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 88
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "compNum"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "countryIso"    # Ljava/lang/String;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    .line 436
    move-object/from16 v9, p4

    const/4 v0, 0x0

    .line 437
    .local v0, "compNumShort":Ljava/lang/String;
    const/4 v1, 0x0

    .line 438
    .local v1, "compNumLong":Ljava/lang/String;
    const/4 v2, 0x0

    .line 439
    .local v2, "tmpNum":Ljava/lang/String;
    const/4 v3, 0x0

    .line 440
    .local v3, "tmpNumShort":Ljava/lang/String;
    const/4 v4, 0x0

    .line 441
    .local v4, "tmpNumLong":Ljava/lang/String;
    const/4 v5, 0x0

    .line 442
    .local v5, "origCompNum":Ljava/lang/String;
    const/4 v10, 0x0

    .line 443
    .local v10, "origTmpNum":Ljava/lang/String;
    const/4 v11, 0x0

    .line 444
    .local v11, "compNumPrefix":Ljava/lang/String;
    const/4 v12, 0x0

    .line 445
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    const/4 v13, 0x0

    .line 446
    .local v13, "compNumAreaCode":Ljava/lang/String;
    const/4 v14, 0x0

    .line 447
    .local v14, "tmpNumAreaCode":Ljava/lang/String;
    const/4 v15, 0x0

    .line 450
    .local v15, "tmpNumFormat":Ljava/lang/String;
    const/16 v16, -0x1

    .line 451
    .local v16, "numShortID":I
    const/16 v17, -0x1

    .line 452
    .local v17, "numLongID":I
    move-object/from16 v18, v0

    const/4 v0, -0x1

    .line 454
    .local v0, "fixedIndex":I
    .local v18, "compNumShort":Ljava/lang/String;
    move-object/from16 v19, v1

    iget v1, v6, Lhuawei/android/telephony/CallerInfoHW;->NUM_LONG_CUST:I

    .line 455
    .local v1, "NUM_LONG":I
    .local v19, "compNumLong":Ljava/lang/String;
    move-object/from16 v20, v2

    iget v2, v6, Lhuawei/android/telephony/CallerInfoHW;->NUM_SHORT_CUST:I

    .line 458
    .local v2, "NUM_SHORT":I
    .local v20, "tmpNum":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 460
    if-eqz v7, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v21

    if-lez v21, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 463
    :cond_0
    move-object/from16 v22, v3

    const-string v3, "CallerInfo"

    .end local v3    # "tmpNumShort":Ljava/lang/String;
    .local v22, "tmpNumShort":Ljava/lang/String;
    move-object/from16 v23, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "tmpNumLong":Ljava/lang/String;
    .local v23, "tmpNumLong":Ljava/lang/String;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v5

    const-string v5, "CallerInfoHW(),null == compNum! fixedIndex = "

    .end local v5    # "origCompNum":Ljava/lang/String;
    .local v24, "origCompNum":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return v0

    .line 467
    .end local v22    # "tmpNumShort":Ljava/lang/String;
    .end local v23    # "tmpNumLong":Ljava/lang/String;
    .end local v24    # "origCompNum":Ljava/lang/String;
    .restart local v3    # "tmpNumShort":Ljava/lang/String;
    .restart local v4    # "tmpNumLong":Ljava/lang/String;
    .restart local v5    # "origCompNum":Ljava/lang/String;
    :cond_1
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    .end local v3    # "tmpNumShort":Ljava/lang/String;
    .end local v4    # "tmpNumLong":Ljava/lang/String;
    .end local v5    # "origCompNum":Ljava/lang/String;
    .restart local v22    # "tmpNumShort":Ljava/lang/String;
    .restart local v23    # "tmpNumLong":Ljava/lang/String;
    .restart local v24    # "origCompNum":Ljava/lang/String;
    if-eqz v7, :cond_68

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_2

    .line 468
    move-object/from16 v40, v10

    move-object/from16 v41, v12

    move-object/from16 v42, v14

    move-object/from16 v43, v15

    goto/16 :goto_3d

    .line 473
    :cond_2
    invoke-direct/range {p0 .. p3}, Lhuawei/android/telephony/CallerInfoHW;->getFullMatchIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 475
    sget-boolean v3, Lhuawei/android/telephony/CallerInfoHW;->IS_SUPPORT_DUAL_NUMBER:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    if-ne v4, v0, :cond_3

    .line 476
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "tmpCompNum":Ljava/lang/String;
    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->formatedForDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-direct {v6, v7, v3, v8}, Lhuawei/android/telephony/CallerInfoHW;->getFullMatchIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 481
    .end local v3    # "tmpCompNum":Ljava/lang/String;
    :cond_3
    if-eq v4, v0, :cond_4

    .line 482
    return v0

    .line 484
    :cond_4
    const-string v3, "getCallerIndex(), not full match proceed to check.."

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallerIndex(), NUM_LONG = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",NUM_SHORT = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 506
    const-string v3, "ro.config.hwft_MatchNum"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x7

    if-nez v3, :cond_7

    .line 508
    const-string v3, "gsm.hw.matchnum"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 509
    .local v3, "numMatch":I
    const-string v5, "gsm.hw.matchnum.short"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 510
    .local v5, "numMatchShort":I
    if-ge v3, v4, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    iput v4, v6, Lhuawei/android/telephony/CallerInfoHW;->mSimNumLong:I

    move v1, v4

    .line 511
    if-lt v5, v1, :cond_6

    move v4, v1

    goto :goto_1

    :cond_6
    move v4, v5

    :goto_1
    iput v4, v6, Lhuawei/android/telephony/CallerInfoHW;->mSimNumShort:I

    move v2, v4

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v0

    const-string v0, "getCallerIndex(), after setprop NUM_LONG = "

    .end local v0    # "fixedIndex":I
    .local v28, "fixedIndex":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", NUM_SHORT = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .end local v3    # "numMatch":I
    .end local v5    # "numMatchShort":I
    goto :goto_2

    .line 520
    .end local v28    # "fixedIndex":I
    .restart local v0    # "fixedIndex":I
    :cond_7
    move/from16 v28, v0

    .end local v0    # "fixedIndex":I
    .restart local v28    # "fixedIndex":I
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .end local p2    # "compNum":Ljava/lang/String;
    .local v0, "compNum":Ljava/lang/String;
    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->formatedForDualNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 526
    .local v3, "compNumLen":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", countryIso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 529
    iget-boolean v4, v6, Lhuawei/android/telephony/CallerInfoHW;->IS_CHINA_TELECOM:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    const-string v4, "**133"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 530
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 531
    const-string v4, "compNum startsWith **133 && endsWith #"

    invoke-static {v4}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 534
    :cond_8
    move-object v5, v0

    .line 535
    .end local v24    # "origCompNum":Ljava/lang/String;
    .local v5, "origCompNum":Ljava/lang/String;
    const-string v4, "gsm.hw.operator.numeric"

    move/from16 v29, v1

    const-string v1, ""

    .end local v1    # "NUM_LONG":I
    .local v29, "NUM_LONG":I
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lhuawei/android/telephony/CallerInfoHW;->mNetworkOperator:Ljava/lang/String;

    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, "formattedCompNum":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 540
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    if-eqz v1, :cond_9

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v0

    const-string v0, "formattedCompNum: "

    .end local v0    # "compNum":Ljava/lang/String;
    .local v30, "compNum":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", with countryIso: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 543
    move-object v0, v1

    .line 548
    .end local v30    # "compNum":Ljava/lang/String;
    .restart local v0    # "compNum":Ljava/lang/String;
    move-object v4, v1

    goto :goto_3

    :cond_9
    move-object/from16 v30, v0

    move-object v4, v1

    .end local v1    # "formattedCompNum":Ljava/lang/String;
    .local v4, "formattedCompNum":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6, v0}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixAndCCLen(Ljava/lang/String;)I

    move-result v1

    .line 549
    .local v1, "countryCodeLen":I
    if-lez v1, :cond_a

    .line 550
    move/from16 v31, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 551
    .end local v2    # "NUM_SHORT":I
    .local v31, "NUM_SHORT":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v1

    const-string v1, "compNum after remove prefix: "

    .end local v1    # "countryCodeLen":I
    .local v32, "countryCodeLen":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", compNumLen: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compNumPrefix: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 556
    .end local v31    # "NUM_SHORT":I
    .end local v32    # "countryCodeLen":I
    .restart local v1    # "countryCodeLen":I
    .restart local v2    # "NUM_SHORT":I
    :cond_a
    move/from16 v32, v1

    move/from16 v31, v2

    .end local v1    # "countryCodeLen":I
    .end local v2    # "NUM_SHORT":I
    .restart local v31    # "NUM_SHORT":I
    .restart local v32    # "countryCodeLen":I
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, v4

    goto :goto_5

    :cond_b
    move-object v1, v5

    :goto_5
    move-object v2, v1

    .line 557
    .local v2, "tmpCompNum":Ljava/lang/String;
    invoke-direct {v6, v11, v9}, Lhuawei/android/telephony/CallerInfoHW;->isRoamingCountryNumberByPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 558
    const-string v1, "compNum belongs to roaming country"

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 559
    const-string v1, "gsm.hw.matchnum.roaming"

    move/from16 v33, v3

    const/4 v3, 0x7

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 560
    .end local v3    # "compNumLen":I
    .local v1, "numMatch":I
    .local v33, "compNumLen":I
    const-string v3, "gsm.hw.matchnum.short.roaming"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 561
    .local v3, "numMatchShort":I
    move-object/from16 v34, v4

    const/4 v4, 0x7

    if-ge v1, v4, :cond_c

    .end local v4    # "formattedCompNum":Ljava/lang/String;
    .local v34, "formattedCompNum":Ljava/lang/String;
    const/4 v4, 0x7

    goto :goto_6

    :cond_c
    move v4, v1

    .line 562
    .end local v29    # "NUM_LONG":I
    .local v4, "NUM_LONG":I
    :goto_6
    if-lt v3, v4, :cond_d

    move/from16 v21, v4

    goto :goto_7

    :cond_d
    move/from16 v21, v3

    :goto_7
    move/from16 v35, v21

    .line 563
    .end local v31    # "NUM_SHORT":I
    .local v35, "NUM_SHORT":I
    move/from16 v36, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "numMatch":I
    .local v36, "numMatch":I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v37, v3

    const-string v3, "getCallerIndex(), roaming prop NUM_LONG = "

    .end local v3    # "numMatchShort":I
    .local v37, "numMatchShort":I
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", NUM_SHORT = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v35

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v35    # "NUM_SHORT":I
    .local v3, "NUM_SHORT":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 567
    .end local v36    # "numMatch":I
    .end local v37    # "numMatchShort":I
    move/from16 v31, v3

    move/from16 v29, v4

    goto :goto_8

    .end local v33    # "compNumLen":I
    .end local v34    # "formattedCompNum":Ljava/lang/String;
    .local v3, "compNumLen":I
    .local v4, "formattedCompNum":Ljava/lang/String;
    .restart local v29    # "NUM_LONG":I
    .restart local v31    # "NUM_SHORT":I
    :cond_e
    move/from16 v33, v3

    move-object/from16 v34, v4

    .end local v3    # "compNumLen":I
    .end local v4    # "formattedCompNum":Ljava/lang/String;
    .restart local v33    # "compNumLen":I
    .restart local v34    # "formattedCompNum":Ljava/lang/String;
    :goto_8
    invoke-direct {v6, v11, v9}, Lhuawei/android/telephony/CallerInfoHW;->isChineseNumberByPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 568
    .local v21, "isCnNumber":Z
    const/4 v1, 0x0

    .line 569
    .local v1, "isCompNumCnMPN":Z
    if-eqz v21, :cond_11

    .line 570
    const/16 v4, 0xb

    move/from16 v31, v4

    move/from16 v29, v4

    .line 571
    invoke-direct {v6, v0}, Lhuawei/android/telephony/CallerInfoHW;->deleteIPHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-direct {v6, v0}, Lhuawei/android/telephony/CallerInfoHW;->isChineseMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v1

    .line 573
    if-nez v1, :cond_10

    .line 574
    invoke-direct {v6, v0}, Lhuawei/android/telephony/CallerInfoHW;->getChineseFixNumberAreaCodeLength(Ljava/lang/String;)I

    move-result v4

    .line 575
    .local v4, "areaCodeLen":I
    if-lez v4, :cond_f

    .line 576
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 577
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v38, v1

    const-string v1, "CN compNum after remove area code: "

    .end local v1    # "isCompNumCnMPN":Z
    .local v38, "isCompNumCnMPN":Z
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", compNumLen: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compNumAreaCode: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .end local v4    # "areaCodeLen":I
    goto :goto_9

    .line 581
    .end local v38    # "isCompNumCnMPN":Z
    .restart local v1    # "isCompNumCnMPN":Z
    :cond_f
    move/from16 v38, v1

    .line 594
    .end local v1    # "isCompNumCnMPN":Z
    .restart local v38    # "isCompNumCnMPN":Z
    :goto_9
    move-object/from16 v40, v10

    move-object v3, v13

    move/from16 v13, v29

    move/from16 v4, v31

    move-object v10, v0

    goto/16 :goto_b

    .end local v38    # "isCompNumCnMPN":Z
    .restart local v1    # "isCompNumCnMPN":Z
    :cond_10
    move/from16 v38, v1

    move-object/from16 v40, v10

    move-object v3, v13

    move/from16 v13, v29

    move/from16 v4, v31

    move-object v10, v0

    .end local v1    # "isCompNumCnMPN":Z
    .restart local v38    # "isCompNumCnMPN":Z
    goto :goto_b

    .line 586
    .end local v38    # "isCompNumCnMPN":Z
    .restart local v1    # "isCompNumCnMPN":Z
    :cond_11
    const-string v3, "PE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 587
    const-string v3, "PE compNum start with 0 not remove it"

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 594
    move/from16 v39, v1

    move-object/from16 v40, v10

    goto :goto_a

    .line 588
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_13

    const-string v3, "0"

    .line 589
    move/from16 v39, v1

    move-object/from16 v40, v10

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .end local v1    # "isCompNumCnMPN":Z
    .end local v10    # "origTmpNum":Ljava/lang/String;
    .local v39, "isCompNumCnMPN":Z
    .local v40, "origTmpNum":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "0"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 594
    move-object v10, v0

    move-object v3, v13

    move/from16 v13, v29

    move/from16 v4, v31

    move/from16 v38, v39

    goto :goto_b

    .end local v39    # "isCompNumCnMPN":Z
    .end local v40    # "origTmpNum":Ljava/lang/String;
    .restart local v1    # "isCompNumCnMPN":Z
    .restart local v10    # "origTmpNum":Ljava/lang/String;
    :cond_13
    move/from16 v39, v1

    move-object/from16 v40, v10

    :cond_14
    :goto_a
    move-object v10, v0

    move-object v3, v13

    move/from16 v13, v29

    move/from16 v4, v31

    move/from16 v38, v39

    .end local v0    # "compNum":Ljava/lang/String;
    .end local v1    # "isCompNumCnMPN":Z
    .end local v29    # "NUM_LONG":I
    .end local v31    # "NUM_SHORT":I
    .local v3, "compNumAreaCode":Ljava/lang/String;
    .local v4, "NUM_SHORT":I
    .local v10, "compNum":Ljava/lang/String;
    .local v13, "NUM_LONG":I
    .restart local v38    # "isCompNumCnMPN":Z
    .restart local v40    # "origTmpNum":Ljava/lang/String;
    :goto_b
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 598
    .end local v33    # "compNumLen":I
    .local v1, "compNumLen":I
    if-lt v1, v13, :cond_31

    .line 601
    sub-int v0, v1, v13

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    .end local v19    # "compNumLong":Ljava/lang/String;
    .local v0, "compNumLong":Ljava/lang/String;
    move-object/from16 v41, v12

    sub-int v12, v1, v4

    .end local v12    # "tmpNumPrefix":Ljava/lang/String;
    .local v41, "tmpNumPrefix":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 605
    .end local v18    # "compNumShort":Ljava/lang/String;
    .local v12, "compNumShort":Ljava/lang/String;
    move-object/from16 v42, v14

    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14    # "tmpNumAreaCode":Ljava/lang/String;
    .local v42, "tmpNumAreaCode":Ljava/lang/String;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v43, v15

    const-string v15, "11:, compNumLong = "

    .end local v15    # "tmpNumFormat":Ljava/lang/String;
    .local v43, "tmpNumFormat":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ",compNumShort = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 609
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_30

    .line 611
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 612
    .local v14, "columnIndex":I
    const-string v15, "normalized_number"

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 613
    .local v15, "formatColumnIndex":I
    move-object/from16 v44, v5

    const-string v5, "data4"

    .end local v5    # "origCompNum":Ljava/lang/String;
    .local v44, "origCompNum":Ljava/lang/String;
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 614
    .local v5, "data4ColumnIndex":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v10

    const-string v10, "11: columnIndex: "

    .end local v10    # "compNum":Ljava/lang/String;
    .local v45, "compNum":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", formatColumnIndex: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", data4ColumnIndex: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 617
    const/4 v8, -0x1

    if-eq v14, v8, :cond_2f

    .line 621
    move/from16 v8, v16

    move/from16 v10, v17

    .end local v16    # "numShortID":I
    .end local v17    # "numLongID":I
    .local v8, "numShortID":I
    .local v10, "numLongID":I
    :goto_c
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 623
    .end local v20    # "tmpNum":Ljava/lang/String;
    .local v16, "tmpNum":Ljava/lang/String;
    move-object/from16 v46, v16

    .line 624
    .end local v40    # "origTmpNum":Ljava/lang/String;
    .local v46, "origTmpNum":Ljava/lang/String;
    move/from16 v47, v14

    move-object/from16 v14, v46

    if-eqz v14, :cond_2e

    .end local v46    # "origTmpNum":Ljava/lang/String;
    .local v14, "origTmpNum":Ljava/lang/String;
    .local v47, "columnIndex":I
    move/from16 v48, v1

    const/16 v1, 0x40

    invoke-virtual {v14, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .end local v1    # "compNumLen":I
    .local v48, "compNumLen":I
    if-gez v17, :cond_2d

    .line 625
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .end local v14    # "origTmpNum":Ljava/lang/String;
    .local v1, "origTmpNum":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v49, v12

    const-string v12, "origTmpNum: "

    .end local v12    # "compNumShort":Ljava/lang/String;
    .local v49, "compNumShort":Ljava/lang/String;
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 632
    const/4 v12, -0x1

    if-eq v12, v15, :cond_16

    .line 633
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 634
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .local v12, "tmpNumFormat":Ljava/lang/String;
    invoke-direct {v6, v1, v12}, Lhuawei/android/telephony/CallerInfoHW;->isValidData4Number(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    move-object v14, v12

    goto :goto_d

    :cond_15
    move-object v14, v1

    .end local v16    # "tmpNum":Ljava/lang/String;
    .local v14, "tmpNum":Ljava/lang/String;
    :goto_d
    goto :goto_f

    .line 635
    .end local v12    # "tmpNumFormat":Ljava/lang/String;
    .end local v14    # "tmpNum":Ljava/lang/String;
    .restart local v16    # "tmpNum":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_16
    const/4 v12, -0x1

    if-eq v12, v5, :cond_18

    .line 636
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 637
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .restart local v12    # "tmpNumFormat":Ljava/lang/String;
    invoke-direct {v6, v1, v12}, Lhuawei/android/telephony/CallerInfoHW;->isValidData4Number(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    move-object v14, v12

    goto :goto_e

    :cond_17
    move-object v14, v1

    :goto_e
    goto :goto_d

    .line 639
    .end local v12    # "tmpNumFormat":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_18
    move-object v14, v1

    .line 641
    .end local v16    # "tmpNum":Ljava/lang/String;
    .restart local v14    # "tmpNum":Ljava/lang/String;
    move-object/from16 v12, v43

    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .restart local v12    # "tmpNumFormat":Ljava/lang/String;
    :goto_f
    move-object/from16 v50, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "origTmpNum":Ljava/lang/String;
    .local v50, "origTmpNum":Ljava/lang/String;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v51, v5

    const-string v5, "11: tmpNumFormat: "

    .end local v5    # "data4ColumnIndex":I
    .local v51, "data4ColumnIndex":I
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    .line 644
    .local v1, "tmpNumLen":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v52, v1

    const-string v1, "11: tmpNum = "

    .end local v1    # "tmpNumLen":I
    .local v52, "tmpNumLen":I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tmpNum.length11: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ID = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 649
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 650
    .end local v10    # "numLongID":I
    .local v1, "numLongID":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "11: > NUM_LONG numLongID = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", formattedNum full match!"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 651
    nop

    .line 748
    move-object/from16 v61, v0

    move v10, v1

    move-object/from16 v55, v12

    move/from16 v60, v15

    move/from16 v56, v32

    move-object/from16 v12, v49

    goto/16 :goto_1a

    .line 655
    .end local v1    # "numLongID":I
    .restart local v10    # "numLongID":I
    :cond_19
    const/4 v1, 0x0

    .line 656
    .end local v41    # "tmpNumPrefix":Ljava/lang/String;
    .local v1, "tmpNumPrefix":Ljava/lang/String;
    const/4 v5, 0x0

    .line 657
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .local v5, "tmpNumAreaCode":Ljava/lang/String;
    move-object/from16 v53, v1

    invoke-virtual {v6, v14}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixAndCCLen(Ljava/lang/String;)I

    move-result v1

    .line 658
    .end local v32    # "countryCodeLen":I
    .local v1, "countryCodeLen":I
    .local v53, "tmpNumPrefix":Ljava/lang/String;
    if-lez v1, :cond_1a

    .line 659
    move-object/from16 v54, v5

    move-object/from16 v55, v12

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 660
    .end local v5    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v53    # "tmpNumPrefix":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .local v54, "tmpNumAreaCode":Ljava/lang/String;
    .local v55, "tmpNumFormat":Ljava/lang/String;
    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v56, v1

    const-string v1, "11: tmpNum after remove prefix: "

    .end local v1    # "countryCodeLen":I
    .local v56, "countryCodeLen":I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tmpNum.length11: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tmpNumPrefix: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_10

    .line 664
    .end local v54    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v55    # "tmpNumFormat":Ljava/lang/String;
    .end local v56    # "countryCodeLen":I
    .restart local v1    # "countryCodeLen":I
    .restart local v5    # "tmpNumAreaCode":Ljava/lang/String;
    .local v12, "tmpNumFormat":Ljava/lang/String;
    .restart local v53    # "tmpNumPrefix":Ljava/lang/String;
    :cond_1a
    move/from16 v56, v1

    move-object/from16 v54, v5

    move-object/from16 v55, v12

    move-object/from16 v12, v53

    .end local v1    # "countryCodeLen":I
    .end local v5    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v53    # "tmpNumPrefix":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .restart local v54    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v55    # "tmpNumFormat":Ljava/lang/String;
    .restart local v56    # "countryCodeLen":I
    :goto_10
    const/4 v1, 0x0

    invoke-direct {v6, v11, v9, v12, v1}, Lhuawei/android/telephony/CallerInfoHW;->isEqualCountryCodePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 666
    if-eqz v21, :cond_21

    .line 667
    invoke-direct {v6, v14}, Lhuawei/android/telephony/CallerInfoHW;->deleteIPHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .end local v14    # "tmpNum":Ljava/lang/String;
    .local v1, "tmpNum":Ljava/lang/String;
    invoke-direct {v6, v1}, Lhuawei/android/telephony/CallerInfoHW;->isChineseMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v5

    .line 669
    .local v5, "isTmpNumCnMPN":Z
    if-eqz v38, :cond_1b

    if-eqz v5, :cond_1c

    :cond_1b
    if-nez v38, :cond_1d

    if-eqz v5, :cond_1d

    .line 670
    :cond_1c
    const-string v14, "11: compNum and tmpNum not both MPN, continue"

    invoke-static {v14}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 671
    nop

    .line 745
    move-object/from16 v61, v0

    move-object/from16 v20, v1

    move-object/from16 v58, v12

    move/from16 v60, v15

    .end local v0    # "compNumLong":Ljava/lang/String;
    .end local v1    # "tmpNum":Ljava/lang/String;
    .end local v5    # "isTmpNumCnMPN":Z
    .end local v15    # "formatColumnIndex":I
    .end local v49    # "compNumShort":Ljava/lang/String;
    .end local v52    # "tmpNumLen":I
    .end local v54    # "tmpNumAreaCode":Ljava/lang/String;
    .local v12, "compNumShort":Ljava/lang/String;
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .local v58, "tmpNumPrefix":Ljava/lang/String;
    .local v60, "formatColumnIndex":I
    .local v61, "compNumLong":Ljava/lang/String;
    :goto_11
    move-object/from16 v12, v49

    goto/16 :goto_18

    .line 672
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v58    # "tmpNumPrefix":Ljava/lang/String;
    .end local v60    # "formatColumnIndex":I
    .end local v61    # "compNumLong":Ljava/lang/String;
    .restart local v0    # "compNumLong":Ljava/lang/String;
    .restart local v1    # "tmpNum":Ljava/lang/String;
    .restart local v5    # "isTmpNumCnMPN":Z
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .restart local v15    # "formatColumnIndex":I
    .restart local v49    # "compNumShort":Ljava/lang/String;
    .restart local v52    # "tmpNumLen":I
    .restart local v54    # "tmpNumAreaCode":Ljava/lang/String;
    :cond_1d
    if-eqz v38, :cond_1e

    if-eqz v5, :cond_1e

    .line 673
    const-string v14, "11: compNum and tmpNum are both MPN, continue to match by mccmnc"

    invoke-static {v14}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 688
    move-object v14, v1

    move-object/from16 v58, v12

    move-object/from16 v5, v54

    goto :goto_13

    .line 675
    :cond_1e
    invoke-direct {v6, v1}, Lhuawei/android/telephony/CallerInfoHW;->getChineseFixNumberAreaCodeLength(Ljava/lang/String;)I

    move-result v14

    .line 676
    .local v14, "areaCodeLen":I
    if-lez v14, :cond_1f

    .line 677
    move/from16 v57, v5

    move-object/from16 v58, v12

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 678
    .end local v5    # "isTmpNumCnMPN":Z
    .end local v54    # "tmpNumAreaCode":Ljava/lang/String;
    .local v12, "tmpNumAreaCode":Ljava/lang/String;
    .local v57, "isTmpNumCnMPN":Z
    .restart local v58    # "tmpNumPrefix":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v59, v14

    const-string v14, "11: CN tmpNum after remove area code: "

    .end local v14    # "areaCodeLen":I
    .local v59, "areaCodeLen":I
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", tmpNum.length11: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", tmpNumAreaCode: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_12

    .line 682
    .end local v57    # "isTmpNumCnMPN":Z
    .end local v58    # "tmpNumPrefix":Ljava/lang/String;
    .end local v59    # "areaCodeLen":I
    .restart local v5    # "isTmpNumCnMPN":Z
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .restart local v14    # "areaCodeLen":I
    .restart local v54    # "tmpNumAreaCode":Ljava/lang/String;
    :cond_1f
    move/from16 v57, v5

    move-object/from16 v58, v12

    move/from16 v59, v14

    move-object/from16 v12, v54

    .end local v5    # "isTmpNumCnMPN":Z
    .end local v14    # "areaCodeLen":I
    .end local v54    # "tmpNumAreaCode":Ljava/lang/String;
    .local v12, "tmpNumAreaCode":Ljava/lang/String;
    .restart local v57    # "isTmpNumCnMPN":Z
    .restart local v58    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v59    # "areaCodeLen":I
    :goto_12
    invoke-direct {v6, v3, v12}, Lhuawei/android/telephony/CallerInfoHW;->isEqualChineseFixNumberAreaCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 683
    const-string v5, "11: areacode prefix not same, continue"

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 684
    nop

    .line 745
    move-object/from16 v61, v0

    move-object/from16 v20, v1

    move-object/from16 v42, v12

    move/from16 v60, v15

    move-object/from16 v12, v49

    goto/16 :goto_19

    .line 688
    .end local v57    # "isTmpNumCnMPN":Z
    .end local v59    # "areaCodeLen":I
    :cond_20
    move-object v14, v1

    move-object v5, v12

    .line 699
    .end local v1    # "tmpNum":Ljava/lang/String;
    .end local v12    # "tmpNumAreaCode":Ljava/lang/String;
    .local v5, "tmpNumAreaCode":Ljava/lang/String;
    .local v14, "tmpNum":Ljava/lang/String;
    :goto_13
    move-object/from16 v54, v5

    move/from16 v60, v15

    goto :goto_14

    .line 689
    .end local v5    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v58    # "tmpNumPrefix":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .restart local v54    # "tmpNumAreaCode":Ljava/lang/String;
    :cond_21
    move-object/from16 v58, v12

    .end local v12    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v58    # "tmpNumPrefix":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x7

    if-lt v1, v5, :cond_22

    const-string v1, "0"

    .line 690
    move/from16 v60, v15

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-virtual {v14, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .end local v15    # "formatColumnIndex":I
    .restart local v60    # "formatColumnIndex":I
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "0"

    const/4 v5, 0x2

    invoke-virtual {v14, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 691
    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 692
    const-string v1, "11: tmpNum remove 0 at beginning"

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_14

    .line 699
    .end local v60    # "formatColumnIndex":I
    .restart local v15    # "formatColumnIndex":I
    :cond_22
    move/from16 v60, v15

    .end local v15    # "formatColumnIndex":I
    .restart local v60    # "formatColumnIndex":I
    :cond_23
    :goto_14
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    .line 701
    .end local v52    # "tmpNumLen":I
    .local v1, "tmpNumLen":I
    if-lt v1, v13, :cond_25

    .line 703
    sub-int v5, v1, v13

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 705
    .end local v23    # "tmpNumLong":Ljava/lang/String;
    .local v5, "tmpNumLong":Ljava/lang/String;
    const/4 v12, -0x1

    if-ne v12, v10, :cond_24

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_24

    .line 707
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 710
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "11: > NUM_LONG numLongID = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 712
    goto :goto_15

    .line 716
    :cond_24
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "11: >=NUM_LONG, and !=,  tmpNumLong = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", numLongID:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 745
    .end local v0    # "compNumLong":Ljava/lang/String;
    .end local v1    # "tmpNumLen":I
    .end local v5    # "tmpNumLong":Ljava/lang/String;
    .end local v14    # "tmpNum":Ljava/lang/String;
    .end local v49    # "compNumShort":Ljava/lang/String;
    .end local v54    # "tmpNumAreaCode":Ljava/lang/String;
    .local v12, "compNumShort":Ljava/lang/String;
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v23    # "tmpNumLong":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v61    # "compNumLong":Ljava/lang/String;
    :goto_15
    move-object/from16 v61, v0

    move-object/from16 v23, v5

    move-object/from16 v20, v14

    goto/16 :goto_11

    .line 723
    .end local v12    # "compNumShort":Ljava/lang/String;
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v61    # "compNumLong":Ljava/lang/String;
    .restart local v0    # "compNumLong":Ljava/lang/String;
    .restart local v1    # "tmpNumLen":I
    .restart local v14    # "tmpNum":Ljava/lang/String;
    .restart local v49    # "compNumShort":Ljava/lang/String;
    .restart local v54    # "tmpNumAreaCode":Ljava/lang/String;
    :cond_25
    if-lt v1, v4, :cond_28

    .line 726
    sub-int v5, v1, v4

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 728
    .end local v22    # "tmpNumShort":Ljava/lang/String;
    .local v5, "tmpNumShort":Ljava/lang/String;
    const/4 v12, -0x1

    if-ne v12, v8, :cond_26

    move-object/from16 v12, v49

    invoke-virtual {v12, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    .end local v49    # "compNumShort":Ljava/lang/String;
    .restart local v12    # "compNumShort":Ljava/lang/String;
    if-nez v15, :cond_27

    .line 729
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    goto :goto_16

    .line 731
    .end local v12    # "compNumShort":Ljava/lang/String;
    .restart local v49    # "compNumShort":Ljava/lang/String;
    :cond_26
    move-object/from16 v12, v49

    .end local v49    # "compNumShort":Ljava/lang/String;
    .restart local v12    # "compNumShort":Ljava/lang/String;
    :cond_27
    :goto_16
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v61, v0

    const-string v0, "11: >=NUM_SHORT, tmpNumShort = "

    .end local v0    # "compNumLong":Ljava/lang/String;
    .restart local v61    # "compNumLong":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", numShortID:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 745
    move-object/from16 v22, v5

    goto :goto_17

    .line 740
    .end local v5    # "tmpNumShort":Ljava/lang/String;
    .end local v12    # "compNumShort":Ljava/lang/String;
    .end local v61    # "compNumLong":Ljava/lang/String;
    .restart local v0    # "compNumLong":Ljava/lang/String;
    .restart local v22    # "tmpNumShort":Ljava/lang/String;
    .restart local v49    # "compNumShort":Ljava/lang/String;
    :cond_28
    move-object/from16 v61, v0

    move-object/from16 v12, v49

    .end local v0    # "compNumLong":Ljava/lang/String;
    .end local v49    # "compNumShort":Ljava/lang/String;
    .restart local v12    # "compNumShort":Ljava/lang/String;
    .restart local v61    # "compNumLong":Ljava/lang/String;
    const-string v0, "tmpNum11, continue"

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 742
    goto :goto_17

    .line 696
    .end local v1    # "tmpNumLen":I
    .end local v58    # "tmpNumPrefix":Ljava/lang/String;
    .end local v60    # "formatColumnIndex":I
    .end local v61    # "compNumLong":Ljava/lang/String;
    .restart local v0    # "compNumLong":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .restart local v15    # "formatColumnIndex":I
    .restart local v49    # "compNumShort":Ljava/lang/String;
    .restart local v52    # "tmpNumLen":I
    :cond_29
    move-object/from16 v61, v0

    move-object/from16 v58, v12

    move/from16 v60, v15

    move-object/from16 v12, v49

    .end local v0    # "compNumLong":Ljava/lang/String;
    .end local v15    # "formatColumnIndex":I
    .end local v49    # "compNumShort":Ljava/lang/String;
    .local v12, "compNumShort":Ljava/lang/String;
    .restart local v58    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v60    # "formatColumnIndex":I
    .restart local v61    # "compNumLong":Ljava/lang/String;
    const-string v0, "11: countrycode prefix not same, continue"

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 697
    nop

    .line 745
    .end local v14    # "tmpNum":Ljava/lang/String;
    .end local v52    # "tmpNumLen":I
    .end local v54    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    :goto_17
    move-object/from16 v20, v14

    :goto_18
    move-object/from16 v42, v54

    :goto_19
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 748
    move-object/from16 v14, v20

    move-object/from16 v41, v58

    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v58    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v14    # "tmpNum":Ljava/lang/String;
    .restart local v41    # "tmpNumPrefix":Ljava/lang/String;
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "11:  numLongID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",numShortID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 751
    const/4 v0, -0x1

    if-eq v0, v10, :cond_2a

    .line 752
    move v1, v10

    .line 758
    .end local v8    # "numShortID":I
    .end local v28    # "fixedIndex":I
    .end local v47    # "columnIndex":I
    .end local v50    # "origTmpNum":Ljava/lang/String;
    .end local v51    # "data4ColumnIndex":I
    .end local v55    # "tmpNumFormat":Ljava/lang/String;
    .end local v56    # "countryCodeLen":I
    .end local v60    # "formatColumnIndex":I
    .local v0, "fixedIndex":I
    .local v1, "countryCodeLen":I
    .local v10, "origTmpNum":Ljava/lang/String;
    .local v15, "tmpNumFormat":Ljava/lang/String;
    .local v16, "numShortID":I
    .restart local v17    # "numLongID":I
    :goto_1b
    move v0, v1

    move/from16 v16, v8

    move/from16 v17, v10

    move-object/from16 v10, v50

    move-object/from16 v15, v55

    move/from16 v1, v56

    goto :goto_1d

    .line 753
    .end local v0    # "fixedIndex":I
    .end local v1    # "countryCodeLen":I
    .end local v15    # "tmpNumFormat":Ljava/lang/String;
    .end local v16    # "numShortID":I
    .end local v17    # "numLongID":I
    .restart local v8    # "numShortID":I
    .local v10, "numLongID":I
    .restart local v28    # "fixedIndex":I
    .restart local v47    # "columnIndex":I
    .restart local v50    # "origTmpNum":Ljava/lang/String;
    .restart local v51    # "data4ColumnIndex":I
    .restart local v55    # "tmpNumFormat":Ljava/lang/String;
    .restart local v56    # "countryCodeLen":I
    .restart local v60    # "formatColumnIndex":I
    :cond_2a
    if-eq v0, v8, :cond_2b

    .line 754
    move v1, v8

    goto :goto_1b

    .line 756
    :cond_2b
    const/4 v1, -0x1

    .end local v28    # "fixedIndex":I
    .end local v47    # "columnIndex":I
    .end local v51    # "data4ColumnIndex":I
    .end local v60    # "formatColumnIndex":I
    .local v1, "fixedIndex":I
    goto :goto_1b

    .line 621
    .end local v1    # "fixedIndex":I
    .end local v14    # "tmpNum":Ljava/lang/String;
    .end local v41    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v28    # "fixedIndex":I
    .restart local v47    # "columnIndex":I
    .restart local v51    # "data4ColumnIndex":I
    .restart local v58    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v60    # "formatColumnIndex":I
    :cond_2c
    move/from16 v14, v47

    move/from16 v1, v48

    move-object/from16 v40, v50

    move/from16 v5, v51

    move-object/from16 v43, v55

    move/from16 v32, v56

    move-object/from16 v41, v58

    move/from16 v15, v60

    move-object/from16 v0, v61

    goto/16 :goto_c

    .line 627
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v50    # "origTmpNum":Ljava/lang/String;
    .end local v51    # "data4ColumnIndex":I
    .end local v55    # "tmpNumFormat":Ljava/lang/String;
    .end local v56    # "countryCodeLen":I
    .end local v58    # "tmpNumPrefix":Ljava/lang/String;
    .end local v60    # "formatColumnIndex":I
    .end local v61    # "compNumLong":Ljava/lang/String;
    .local v0, "compNumLong":Ljava/lang/String;
    .local v5, "data4ColumnIndex":I
    .local v14, "origTmpNum":Ljava/lang/String;
    .local v15, "formatColumnIndex":I
    .local v16, "tmpNum":Ljava/lang/String;
    .restart local v32    # "countryCodeLen":I
    .restart local v41    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_2d
    move-object/from16 v61, v0

    move/from16 v51, v5

    move/from16 v60, v15

    const/4 v0, -0x1

    .end local v0    # "compNumLong":Ljava/lang/String;
    .end local v5    # "data4ColumnIndex":I
    .end local v15    # "formatColumnIndex":I
    .restart local v51    # "data4ColumnIndex":I
    .restart local v60    # "formatColumnIndex":I
    .restart local v61    # "compNumLong":Ljava/lang/String;
    goto :goto_1c

    .end local v48    # "compNumLen":I
    .end local v51    # "data4ColumnIndex":I
    .end local v60    # "formatColumnIndex":I
    .end local v61    # "compNumLong":Ljava/lang/String;
    .restart local v0    # "compNumLong":Ljava/lang/String;
    .local v1, "compNumLen":I
    .restart local v5    # "data4ColumnIndex":I
    .restart local v15    # "formatColumnIndex":I
    :cond_2e
    move-object/from16 v61, v0

    move/from16 v48, v1

    move/from16 v51, v5

    move/from16 v60, v15

    const/4 v0, -0x1

    .end local v0    # "compNumLong":Ljava/lang/String;
    .end local v1    # "compNumLen":I
    .end local v5    # "data4ColumnIndex":I
    .end local v15    # "formatColumnIndex":I
    .restart local v48    # "compNumLen":I
    .restart local v51    # "data4ColumnIndex":I
    .restart local v60    # "formatColumnIndex":I
    .restart local v61    # "compNumLong":Ljava/lang/String;
    :goto_1c
    return v0

    .line 758
    .end local v8    # "numShortID":I
    .end local v10    # "numLongID":I
    .end local v14    # "origTmpNum":Ljava/lang/String;
    .end local v47    # "columnIndex":I
    .end local v48    # "compNumLen":I
    .end local v51    # "data4ColumnIndex":I
    .end local v60    # "formatColumnIndex":I
    .end local v61    # "compNumLong":Ljava/lang/String;
    .restart local v0    # "compNumLong":Ljava/lang/String;
    .restart local v1    # "compNumLen":I
    .local v16, "numShortID":I
    .restart local v17    # "numLongID":I
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v40    # "origTmpNum":Ljava/lang/String;
    :cond_2f
    move-object/from16 v61, v0

    move/from16 v48, v1

    move-object/from16 v14, v20

    move/from16 v0, v28

    move/from16 v1, v32

    move-object/from16 v10, v40

    move-object/from16 v15, v43

    .line 1038
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v28    # "fixedIndex":I
    .end local v32    # "countryCodeLen":I
    .end local v40    # "origTmpNum":Ljava/lang/String;
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .local v0, "fixedIndex":I
    .local v1, "countryCodeLen":I
    .local v10, "origTmpNum":Ljava/lang/String;
    .local v14, "tmpNum":Ljava/lang/String;
    .local v15, "tmpNumFormat":Ljava/lang/String;
    .restart local v48    # "compNumLen":I
    .restart local v61    # "compNumLong":Ljava/lang/String;
    :goto_1d
    move/from16 v32, v1

    move-object/from16 v82, v2

    move-object/from16 v86, v3

    move-object/from16 v40, v10

    move-object/from16 v20, v14

    move-object/from16 v43, v15

    move-object/from16 v1, v45

    move/from16 v2, v48

    move-object/from16 v19, v61

    move-object/from16 v8, p3

    move v10, v0

    goto/16 :goto_3b

    .end local v14    # "tmpNum":Ljava/lang/String;
    .end local v15    # "tmpNumFormat":Ljava/lang/String;
    .end local v44    # "origCompNum":Ljava/lang/String;
    .end local v45    # "compNum":Ljava/lang/String;
    .end local v48    # "compNumLen":I
    .end local v61    # "compNumLong":Ljava/lang/String;
    .local v0, "compNumLong":Ljava/lang/String;
    .local v1, "compNumLen":I
    .local v5, "origCompNum":Ljava/lang/String;
    .local v10, "compNum":Ljava/lang/String;
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v28    # "fixedIndex":I
    .restart local v32    # "countryCodeLen":I
    .restart local v40    # "origTmpNum":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_30
    move-object/from16 v61, v0

    move-object/from16 v44, v5

    move-object/from16 v82, v2

    move-object/from16 v86, v3

    move-object/from16 v19, v61

    move v2, v1

    move-object v1, v10

    move/from16 v10, v28

    .end local v0    # "compNumLong":Ljava/lang/String;
    .end local v1    # "compNumLen":I
    .end local v5    # "origCompNum":Ljava/lang/String;
    .end local v10    # "compNum":Ljava/lang/String;
    .restart local v44    # "origCompNum":Ljava/lang/String;
    .restart local v45    # "compNum":Ljava/lang/String;
    .restart local v48    # "compNumLen":I
    .restart local v61    # "compNumLong":Ljava/lang/String;
    goto/16 :goto_3b

    .line 760
    .end local v41    # "tmpNumPrefix":Ljava/lang/String;
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .end local v44    # "origCompNum":Ljava/lang/String;
    .end local v45    # "compNum":Ljava/lang/String;
    .end local v48    # "compNumLen":I
    .end local v61    # "compNumLong":Ljava/lang/String;
    .restart local v1    # "compNumLen":I
    .restart local v5    # "origCompNum":Ljava/lang/String;
    .restart local v10    # "compNum":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .local v14, "tmpNumAreaCode":Ljava/lang/String;
    .restart local v15    # "tmpNumFormat":Ljava/lang/String;
    .restart local v18    # "compNumShort":Ljava/lang/String;
    .restart local v19    # "compNumLong":Ljava/lang/String;
    :cond_31
    move/from16 v48, v1

    move-object/from16 v44, v5

    move-object/from16 v45, v10

    move-object/from16 v41, v12

    move-object/from16 v42, v14

    move-object/from16 v43, v15

    .end local v1    # "compNumLen":I
    .end local v5    # "origCompNum":Ljava/lang/String;
    .end local v10    # "compNum":Ljava/lang/String;
    .end local v12    # "tmpNumPrefix":Ljava/lang/String;
    .end local v14    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v15    # "tmpNumFormat":Ljava/lang/String;
    .restart local v41    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    .restart local v44    # "origCompNum":Ljava/lang/String;
    .restart local v45    # "compNum":Ljava/lang/String;
    .restart local v48    # "compNumLen":I
    if-lt v1, v4, :cond_4d

    .line 763
    .end local v48    # "compNumLen":I
    .restart local v1    # "compNumLen":I
    sub-int v0, v1, v4

    move-object/from16 v8, v45

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 765
    .end local v18    # "compNumShort":Ljava/lang/String;
    .end local v45    # "compNum":Ljava/lang/String;
    .local v0, "compNumShort":Ljava/lang/String;
    .local v8, "compNum":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "7:  compNumShort = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 768
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 770
    move-object/from16 v10, p3

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 771
    .local v5, "columnIndex":I
    const-string v12, "normalized_number"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 772
    .local v12, "formatColumnIndex":I
    const-string v14, "data4"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 773
    .local v14, "data4ColumnIndex":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v62, v8

    const-string v8, "7: columnIndex: "

    .end local v8    # "compNum":Ljava/lang/String;
    .local v62, "compNum":Ljava/lang/String;
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", formatColumnIndex: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", data4ColumnIndex: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 776
    const/4 v8, -0x1

    if-eq v5, v8, :cond_4b

    .line 780
    move/from16 v8, v16

    move/from16 v15, v17

    .end local v16    # "numShortID":I
    .end local v17    # "numLongID":I
    .local v8, "numShortID":I
    .local v15, "numLongID":I
    :goto_1e
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 782
    .end local v20    # "tmpNum":Ljava/lang/String;
    .local v16, "tmpNum":Ljava/lang/String;
    move-object/from16 v63, v16

    .line 783
    .end local v40    # "origTmpNum":Ljava/lang/String;
    .local v63, "origTmpNum":Ljava/lang/String;
    move/from16 v64, v5

    move-object/from16 v5, v63

    if-eqz v5, :cond_4a

    .end local v63    # "origTmpNum":Ljava/lang/String;
    .local v5, "origTmpNum":Ljava/lang/String;
    .local v64, "columnIndex":I
    move/from16 v65, v1

    const/16 v1, 0x40

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .end local v1    # "compNumLen":I
    .local v65, "compNumLen":I
    if-gez v17, :cond_49

    .line 784
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 788
    .end local v5    # "origTmpNum":Ljava/lang/String;
    .local v1, "origTmpNum":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "origTmpNum: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 791
    const/4 v5, -0x1

    if-eq v5, v12, :cond_33

    .line 792
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 793
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .local v5, "tmpNumFormat":Ljava/lang/String;
    invoke-direct {v6, v1, v5}, Lhuawei/android/telephony/CallerInfoHW;->isValidData4Number(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_32

    move-object v10, v5

    goto :goto_1f

    :cond_32
    move-object v10, v1

    .end local v16    # "tmpNum":Ljava/lang/String;
    .local v10, "tmpNum":Ljava/lang/String;
    :goto_1f
    goto :goto_21

    .line 794
    .end local v5    # "tmpNumFormat":Ljava/lang/String;
    .end local v10    # "tmpNum":Ljava/lang/String;
    .restart local v16    # "tmpNum":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_33
    const/4 v5, -0x1

    if-eq v5, v14, :cond_35

    .line 795
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 796
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .restart local v5    # "tmpNumFormat":Ljava/lang/String;
    invoke-direct {v6, v1, v5}, Lhuawei/android/telephony/CallerInfoHW;->isValidData4Number(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_34

    move-object v10, v5

    goto :goto_20

    :cond_34
    move-object v10, v1

    :goto_20
    goto :goto_1f

    .line 798
    .end local v5    # "tmpNumFormat":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_35
    move-object v10, v1

    .line 800
    .end local v16    # "tmpNum":Ljava/lang/String;
    .restart local v10    # "tmpNum":Ljava/lang/String;
    move-object/from16 v5, v43

    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .restart local v5    # "tmpNumFormat":Ljava/lang/String;
    :goto_21
    move-object/from16 v66, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "origTmpNum":Ljava/lang/String;
    .local v66, "origTmpNum":Ljava/lang/String;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v67, v12

    const-string v12, "7: tmpNumFormat: "

    .end local v12    # "formatColumnIndex":I
    .local v67, "formatColumnIndex":I
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 803
    .local v1, "tmpNumLen":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v68, v1

    const-string v1, "7: tmpNum = "

    .end local v1    # "tmpNumLen":I
    .local v68, "tmpNumLen":I
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tmpNum.length7: "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ID = "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 808
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 809
    .end local v8    # "numShortID":I
    .local v1, "numShortID":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "7: >= NUM_SHORT numShortID = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", formattedNum full match!"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 810
    nop

    .line 902
    move-object/from16 v70, v5

    move/from16 v76, v14

    move/from16 v72, v32

    goto/16 :goto_2a

    .line 814
    .end local v1    # "numShortID":I
    .restart local v8    # "numShortID":I
    :cond_36
    const/4 v1, 0x0

    .line 815
    .end local v41    # "tmpNumPrefix":Ljava/lang/String;
    .local v1, "tmpNumPrefix":Ljava/lang/String;
    const/4 v12, 0x0

    .line 816
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .local v12, "tmpNumAreaCode":Ljava/lang/String;
    move-object/from16 v69, v1

    invoke-virtual {v6, v10}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixAndCCLen(Ljava/lang/String;)I

    move-result v1

    .line 817
    .end local v32    # "countryCodeLen":I
    .local v1, "countryCodeLen":I
    .local v69, "tmpNumPrefix":Ljava/lang/String;
    if-lez v1, :cond_37

    .line 818
    move-object/from16 v70, v5

    move-object/from16 v71, v12

    const/4 v5, 0x0

    invoke-virtual {v10, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 819
    .end local v5    # "tmpNumFormat":Ljava/lang/String;
    .end local v69    # "tmpNumPrefix":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .local v70, "tmpNumFormat":Ljava/lang/String;
    .local v71, "tmpNumAreaCode":Ljava/lang/String;
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v72, v1

    const-string v1, "7: tmpNum after remove prefix: "

    .end local v1    # "countryCodeLen":I
    .local v72, "countryCodeLen":I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tmpNum.length7: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tmpNumPrefix: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_22

    .line 823
    .end local v70    # "tmpNumFormat":Ljava/lang/String;
    .end local v71    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v72    # "countryCodeLen":I
    .restart local v1    # "countryCodeLen":I
    .restart local v5    # "tmpNumFormat":Ljava/lang/String;
    .local v12, "tmpNumAreaCode":Ljava/lang/String;
    .restart local v69    # "tmpNumPrefix":Ljava/lang/String;
    :cond_37
    move/from16 v72, v1

    move-object/from16 v70, v5

    move-object/from16 v71, v12

    move-object/from16 v12, v69

    .end local v1    # "countryCodeLen":I
    .end local v5    # "tmpNumFormat":Ljava/lang/String;
    .end local v69    # "tmpNumPrefix":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .restart local v70    # "tmpNumFormat":Ljava/lang/String;
    .restart local v71    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v72    # "countryCodeLen":I
    :goto_22
    const/4 v1, 0x0

    invoke-direct {v6, v11, v9, v12, v1}, Lhuawei/android/telephony/CallerInfoHW;->isEqualCountryCodePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 825
    if-eqz v21, :cond_3e

    .line 826
    invoke-direct {v6, v10}, Lhuawei/android/telephony/CallerInfoHW;->deleteIPHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 827
    .end local v10    # "tmpNum":Ljava/lang/String;
    .local v1, "tmpNum":Ljava/lang/String;
    invoke-direct {v6, v1}, Lhuawei/android/telephony/CallerInfoHW;->isChineseMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v5

    .line 828
    .local v5, "isTmpNumCnMPN":Z
    if-eqz v38, :cond_38

    if-eqz v5, :cond_39

    :cond_38
    if-nez v38, :cond_3a

    if-eqz v5, :cond_3a

    .line 829
    :cond_39
    const-string v10, "7: compNum and tmpNum not both MPN, continue"

    invoke-static {v10}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 830
    nop

    .line 899
    move-object/from16 v20, v1

    move-object/from16 v74, v12

    move/from16 v76, v14

    goto/16 :goto_28

    .line 831
    :cond_3a
    if-eqz v38, :cond_3b

    if-eqz v5, :cond_3b

    .line 832
    const-string v10, "7: compNum and tmpNum are both MPN, continue to match by mccmnc"

    invoke-static {v10}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 847
    move-object v10, v1

    move-object/from16 v74, v12

    move-object/from16 v12, v71

    goto :goto_24

    .line 834
    :cond_3b
    invoke-direct {v6, v1}, Lhuawei/android/telephony/CallerInfoHW;->getChineseFixNumberAreaCodeLength(Ljava/lang/String;)I

    move-result v10

    .line 835
    .local v10, "areaCodeLen":I
    if-lez v10, :cond_3c

    .line 836
    move/from16 v73, v5

    move-object/from16 v74, v12

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 837
    .end local v5    # "isTmpNumCnMPN":Z
    .end local v71    # "tmpNumAreaCode":Ljava/lang/String;
    .local v12, "tmpNumAreaCode":Ljava/lang/String;
    .local v73, "isTmpNumCnMPN":Z
    .local v74, "tmpNumPrefix":Ljava/lang/String;
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 838
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v75, v10

    const-string v10, "7: CN tmpNum after remove area code: "

    .end local v10    # "areaCodeLen":I
    .local v75, "areaCodeLen":I
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", tmpNum.length7: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", tmpNumAreaCode: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_23

    .line 841
    .end local v73    # "isTmpNumCnMPN":Z
    .end local v74    # "tmpNumPrefix":Ljava/lang/String;
    .end local v75    # "areaCodeLen":I
    .restart local v5    # "isTmpNumCnMPN":Z
    .restart local v10    # "areaCodeLen":I
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .restart local v71    # "tmpNumAreaCode":Ljava/lang/String;
    :cond_3c
    move/from16 v73, v5

    move/from16 v75, v10

    move-object/from16 v74, v12

    move-object/from16 v12, v71

    .end local v5    # "isTmpNumCnMPN":Z
    .end local v10    # "areaCodeLen":I
    .end local v71    # "tmpNumAreaCode":Ljava/lang/String;
    .local v12, "tmpNumAreaCode":Ljava/lang/String;
    .restart local v73    # "isTmpNumCnMPN":Z
    .restart local v74    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v75    # "areaCodeLen":I
    :goto_23
    invoke-direct {v6, v3, v12}, Lhuawei/android/telephony/CallerInfoHW;->isEqualChineseFixNumberAreaCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 842
    const-string v5, "7: areacode prefix not same, continue"

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 843
    nop

    .line 899
    move-object/from16 v20, v1

    move-object/from16 v42, v12

    move/from16 v76, v14

    goto/16 :goto_29

    .line 847
    .end local v73    # "isTmpNumCnMPN":Z
    .end local v75    # "areaCodeLen":I
    :cond_3d
    move-object v10, v1

    .line 858
    .end local v1    # "tmpNum":Ljava/lang/String;
    .local v10, "tmpNum":Ljava/lang/String;
    :goto_24
    move-object/from16 v71, v12

    move/from16 v76, v14

    goto :goto_25

    .line 848
    .end local v74    # "tmpNumPrefix":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .restart local v71    # "tmpNumAreaCode":Ljava/lang/String;
    :cond_3e
    move-object/from16 v74, v12

    .end local v12    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v74    # "tmpNumPrefix":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x7

    if-lt v1, v5, :cond_3f

    const-string v1, "0"

    .line 849
    move/from16 v76, v14

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .end local v14    # "data4ColumnIndex":I
    .local v76, "data4ColumnIndex":I
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "0"

    const/4 v5, 0x2

    invoke-virtual {v10, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 850
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 851
    const-string v1, "7: tmpNum remove 0 at beginning"

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_25

    .line 858
    .end local v76    # "data4ColumnIndex":I
    .restart local v14    # "data4ColumnIndex":I
    :cond_3f
    move/from16 v76, v14

    .end local v14    # "data4ColumnIndex":I
    .restart local v76    # "data4ColumnIndex":I
    :cond_40
    :goto_25
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 860
    .end local v68    # "tmpNumLen":I
    .local v1, "tmpNumLen":I
    if-lt v1, v13, :cond_42

    .line 862
    sub-int v5, v1, v4

    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 864
    .end local v22    # "tmpNumShort":Ljava/lang/String;
    .local v5, "tmpNumShort":Ljava/lang/String;
    const/4 v12, -0x1

    if-ne v12, v15, :cond_41

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_41

    .line 865
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v15

    .line 867
    :cond_41
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "7: >=NUM_LONG, tmpNumShort = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", numLongID:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 899
    .end local v1    # "tmpNumLen":I
    .end local v5    # "tmpNumShort":Ljava/lang/String;
    .end local v10    # "tmpNum":Ljava/lang/String;
    .end local v71    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v22    # "tmpNumShort":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    :goto_26
    move-object/from16 v22, v5

    goto :goto_27

    .line 872
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v1    # "tmpNumLen":I
    .restart local v10    # "tmpNum":Ljava/lang/String;
    .restart local v71    # "tmpNumAreaCode":Ljava/lang/String;
    :cond_42
    if-lt v1, v4, :cond_44

    .line 874
    sub-int v5, v1, v4

    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 876
    .end local v22    # "tmpNumShort":Ljava/lang/String;
    .restart local v5    # "tmpNumShort":Ljava/lang/String;
    const/4 v12, -0x1

    if-ne v12, v8, :cond_43

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_43

    .line 878
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 881
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "7: >= NUM_SHORT numShortID = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 883
    goto :goto_26

    .line 887
    :cond_43
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "7: >=NUM_SHORT, and !=, tmpNumShort = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", numShortID:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_26

    .line 894
    .end local v5    # "tmpNumShort":Ljava/lang/String;
    .restart local v22    # "tmpNumShort":Ljava/lang/String;
    :cond_44
    const-string v5, "7: continue"

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 896
    goto :goto_27

    .line 855
    .end local v1    # "tmpNumLen":I
    .end local v74    # "tmpNumPrefix":Ljava/lang/String;
    .end local v76    # "data4ColumnIndex":I
    .restart local v12    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v14    # "data4ColumnIndex":I
    .restart local v68    # "tmpNumLen":I
    :cond_45
    move-object/from16 v74, v12

    move/from16 v76, v14

    .end local v12    # "tmpNumPrefix":Ljava/lang/String;
    .end local v14    # "data4ColumnIndex":I
    .restart local v74    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v76    # "data4ColumnIndex":I
    const-string v1, "7: countrycode prefix not same, continue"

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 856
    nop

    .line 899
    .end local v10    # "tmpNum":Ljava/lang/String;
    .end local v68    # "tmpNumLen":I
    .end local v71    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    :goto_27
    move-object/from16 v20, v10

    :goto_28
    move-object/from16 v42, v71

    :goto_29
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_48

    .line 902
    move v1, v8

    move-object/from16 v10, v20

    move-object/from16 v41, v74

    .end local v8    # "numShortID":I
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v74    # "tmpNumPrefix":Ljava/lang/String;
    .local v1, "numShortID":I
    .restart local v10    # "tmpNum":Ljava/lang/String;
    .restart local v41    # "tmpNumPrefix":Ljava/lang/String;
    :goto_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "7: numShortID = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",numLongID = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 905
    const/4 v12, -0x1

    if-eq v12, v1, :cond_46

    .line 906
    move v5, v1

    .line 912
    .end local v28    # "fixedIndex":I
    .end local v41    # "tmpNumPrefix":Ljava/lang/String;
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v64    # "columnIndex":I
    .end local v67    # "formatColumnIndex":I
    .end local v70    # "tmpNumFormat":Ljava/lang/String;
    .end local v72    # "countryCodeLen":I
    .end local v76    # "data4ColumnIndex":I
    .local v1, "countryCodeLen":I
    .local v5, "fixedIndex":I
    .restart local v12    # "tmpNumPrefix":Ljava/lang/String;
    .local v14, "tmpNumAreaCode":Ljava/lang/String;
    .local v15, "tmpNumFormat":Ljava/lang/String;
    .local v16, "numShortID":I
    .restart local v17    # "numLongID":I
    :goto_2b
    move/from16 v16, v1

    move/from16 v17, v15

    move-object/from16 v12, v41

    move-object/from16 v14, v42

    move-object/from16 v15, v70

    move/from16 v1, v72

    goto :goto_2d

    .line 907
    .end local v5    # "fixedIndex":I
    .end local v12    # "tmpNumPrefix":Ljava/lang/String;
    .end local v14    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v16    # "numShortID":I
    .end local v17    # "numLongID":I
    .local v1, "numShortID":I
    .local v15, "numLongID":I
    .restart local v28    # "fixedIndex":I
    .restart local v41    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v64    # "columnIndex":I
    .restart local v67    # "formatColumnIndex":I
    .restart local v70    # "tmpNumFormat":Ljava/lang/String;
    .restart local v72    # "countryCodeLen":I
    .restart local v76    # "data4ColumnIndex":I
    :cond_46
    if-eq v12, v15, :cond_47

    .line 908
    move v5, v15

    goto :goto_2b

    .line 910
    :cond_47
    const/4 v5, -0x1

    .end local v28    # "fixedIndex":I
    .end local v64    # "columnIndex":I
    .end local v67    # "formatColumnIndex":I
    .end local v76    # "data4ColumnIndex":I
    .restart local v5    # "fixedIndex":I
    goto :goto_2b

    .line 780
    .end local v1    # "numShortID":I
    .end local v5    # "fixedIndex":I
    .end local v10    # "tmpNum":Ljava/lang/String;
    .end local v41    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v8    # "numShortID":I
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v28    # "fixedIndex":I
    .restart local v64    # "columnIndex":I
    .restart local v67    # "formatColumnIndex":I
    .restart local v74    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v76    # "data4ColumnIndex":I
    :cond_48
    move/from16 v5, v64

    move/from16 v1, v65

    move-object/from16 v40, v66

    move/from16 v12, v67

    move-object/from16 v43, v70

    move/from16 v32, v72

    move-object/from16 v41, v74

    move/from16 v14, v76

    move-object/from16 v10, p3

    goto/16 :goto_1e

    .line 786
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v66    # "origTmpNum":Ljava/lang/String;
    .end local v67    # "formatColumnIndex":I
    .end local v70    # "tmpNumFormat":Ljava/lang/String;
    .end local v72    # "countryCodeLen":I
    .end local v74    # "tmpNumPrefix":Ljava/lang/String;
    .end local v76    # "data4ColumnIndex":I
    .local v5, "origTmpNum":Ljava/lang/String;
    .local v12, "formatColumnIndex":I
    .local v14, "data4ColumnIndex":I
    .local v16, "tmpNum":Ljava/lang/String;
    .restart local v32    # "countryCodeLen":I
    .restart local v41    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_49
    move/from16 v67, v12

    move/from16 v76, v14

    const/4 v12, -0x1

    .end local v12    # "formatColumnIndex":I
    .end local v14    # "data4ColumnIndex":I
    .restart local v67    # "formatColumnIndex":I
    .restart local v76    # "data4ColumnIndex":I
    goto :goto_2c

    .end local v65    # "compNumLen":I
    .end local v67    # "formatColumnIndex":I
    .end local v76    # "data4ColumnIndex":I
    .local v1, "compNumLen":I
    .restart local v12    # "formatColumnIndex":I
    .restart local v14    # "data4ColumnIndex":I
    :cond_4a
    move/from16 v65, v1

    move/from16 v67, v12

    move/from16 v76, v14

    const/4 v12, -0x1

    .end local v1    # "compNumLen":I
    .end local v12    # "formatColumnIndex":I
    .end local v14    # "data4ColumnIndex":I
    .restart local v65    # "compNumLen":I
    .restart local v67    # "formatColumnIndex":I
    .restart local v76    # "data4ColumnIndex":I
    :goto_2c
    return v12

    .line 912
    .end local v5    # "origTmpNum":Ljava/lang/String;
    .end local v8    # "numShortID":I
    .end local v15    # "numLongID":I
    .end local v64    # "columnIndex":I
    .end local v65    # "compNumLen":I
    .end local v67    # "formatColumnIndex":I
    .end local v76    # "data4ColumnIndex":I
    .restart local v1    # "compNumLen":I
    .local v16, "numShortID":I
    .restart local v17    # "numLongID":I
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v40    # "origTmpNum":Ljava/lang/String;
    :cond_4b
    move/from16 v65, v1

    move-object/from16 v10, v20

    move/from16 v5, v28

    move/from16 v1, v32

    move-object/from16 v66, v40

    move-object/from16 v12, v41

    move-object/from16 v14, v42

    move-object/from16 v15, v43

    .line 1038
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v28    # "fixedIndex":I
    .end local v32    # "countryCodeLen":I
    .end local v40    # "origTmpNum":Ljava/lang/String;
    .end local v41    # "tmpNumPrefix":Ljava/lang/String;
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .local v1, "countryCodeLen":I
    .local v5, "fixedIndex":I
    .restart local v10    # "tmpNum":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .local v14, "tmpNumAreaCode":Ljava/lang/String;
    .local v15, "tmpNumFormat":Ljava/lang/String;
    .restart local v65    # "compNumLen":I
    .restart local v66    # "origTmpNum":Ljava/lang/String;
    :goto_2d
    move/from16 v32, v1

    move-object/from16 v82, v2

    move-object/from16 v86, v3

    move-object/from16 v20, v10

    move-object/from16 v41, v12

    move-object/from16 v42, v14

    move-object/from16 v43, v15

    move-object/from16 v1, v62

    move/from16 v2, v65

    move-object/from16 v40, v66

    move-object/from16 v8, p3

    move-object v12, v0

    move v10, v5

    goto/16 :goto_3b

    .end local v5    # "fixedIndex":I
    .end local v10    # "tmpNum":Ljava/lang/String;
    .end local v12    # "tmpNumPrefix":Ljava/lang/String;
    .end local v14    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v15    # "tmpNumFormat":Ljava/lang/String;
    .end local v62    # "compNum":Ljava/lang/String;
    .end local v65    # "compNumLen":I
    .end local v66    # "origTmpNum":Ljava/lang/String;
    .local v1, "compNumLen":I
    .local v8, "compNum":Ljava/lang/String;
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v28    # "fixedIndex":I
    .restart local v32    # "countryCodeLen":I
    .restart local v40    # "origTmpNum":Ljava/lang/String;
    .restart local v41    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_4c
    move-object v12, v0

    move-object/from16 v82, v2

    move-object/from16 v86, v3

    move/from16 v10, v28

    move v2, v1

    move-object v1, v8

    move-object/from16 v8, p3

    .end local v1    # "compNumLen":I
    .end local v8    # "compNum":Ljava/lang/String;
    .restart local v62    # "compNum":Ljava/lang/String;
    .restart local v65    # "compNumLen":I
    goto/16 :goto_3b

    .line 916
    .end local v0    # "compNumShort":Ljava/lang/String;
    .end local v62    # "compNum":Ljava/lang/String;
    .end local v65    # "compNumLen":I
    .restart local v1    # "compNumLen":I
    .restart local v18    # "compNumShort":Ljava/lang/String;
    .restart local v45    # "compNum":Ljava/lang/String;
    :cond_4d
    move/from16 v65, v1

    move-object/from16 v62, v45

    .end local v1    # "compNumLen":I
    .end local v45    # "compNum":Ljava/lang/String;
    .restart local v62    # "compNum":Ljava/lang/String;
    .restart local v65    # "compNumLen":I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 918
    move-object/from16 v8, p3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 919
    .local v0, "columnIndex":I
    const-string v1, "normalized_number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 920
    .local v1, "formatColumnIndex":I
    const-string v5, "data4"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 921
    .local v5, "data4ColumnIndex":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "5: columnIndex: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", formatColumnIndex: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", data4ColumnIndex: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 924
    const/4 v10, -0x1

    if-eq v0, v10, :cond_64

    .line 928
    move/from16 v10, v28

    .end local v28    # "fixedIndex":I
    .local v10, "fixedIndex":I
    :goto_2e
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 930
    .end local v20    # "tmpNum":Ljava/lang/String;
    .local v12, "tmpNum":Ljava/lang/String;
    move-object v14, v12

    .line 931
    .end local v40    # "origTmpNum":Ljava/lang/String;
    .local v14, "origTmpNum":Ljava/lang/String;
    if-eqz v14, :cond_63

    const/16 v15, 0x40

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-gez v20, :cond_63

    .line 932
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 936
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v77, v0

    const-string v0, "origTmpNum: "

    .end local v0    # "columnIndex":I
    .local v77, "columnIndex":I
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 939
    const/4 v0, -0x1

    if-eq v0, v1, :cond_4f

    .line 940
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 941
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .local v0, "tmpNumFormat":Ljava/lang/String;
    invoke-direct {v6, v14, v0}, Lhuawei/android/telephony/CallerInfoHW;->isValidData4Number(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4e

    move-object v15, v0

    goto :goto_2f

    :cond_4e
    move-object v15, v14

    :goto_2f
    move-object v12, v15

    goto :goto_31

    .line 942
    .end local v0    # "tmpNumFormat":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_4f
    const/4 v0, -0x1

    if-eq v0, v5, :cond_51

    .line 943
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 944
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .restart local v0    # "tmpNumFormat":Ljava/lang/String;
    invoke-direct {v6, v14, v0}, Lhuawei/android/telephony/CallerInfoHW;->isValidData4Number(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_50

    move-object v15, v0

    goto :goto_30

    :cond_50
    move-object v15, v14

    :goto_30
    move-object v12, v15

    goto :goto_31

    .line 946
    .end local v0    # "tmpNumFormat":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :cond_51
    move-object v12, v14

    .line 948
    move-object/from16 v0, v43

    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .restart local v0    # "tmpNumFormat":Ljava/lang/String;
    :goto_31
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v78, v1

    const-string v1, "5: tmpNumFormat: "

    .end local v1    # "formatColumnIndex":I
    .local v78, "formatColumnIndex":I
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 951
    .local v1, "tmpNumLen":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v79, v0

    const-string v0, "5: tmpNum = "

    .end local v0    # "tmpNumFormat":Ljava/lang/String;
    .local v79, "tmpNumFormat":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tmpNum.length: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ID = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 956
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 957
    .end local v10    # "fixedIndex":I
    .local v0, "fixedIndex":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "5: break! numLongID = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", formattedNum full match!"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 958
    nop

    .line 1030
    move-object/from16 v82, v2

    move-object/from16 v86, v3

    move/from16 v83, v32

    move-object/from16 v84, v41

    move-object/from16 v1, v62

    move/from16 v2, v65

    goto/16 :goto_39

    .line 962
    .end local v0    # "fixedIndex":I
    .restart local v10    # "fixedIndex":I
    :cond_52
    const/4 v0, 0x0

    .line 963
    .end local v41    # "tmpNumPrefix":Ljava/lang/String;
    .local v0, "tmpNumPrefix":Ljava/lang/String;
    const/4 v15, 0x0

    .line 964
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .local v15, "tmpNumAreaCode":Ljava/lang/String;
    move-object/from16 v80, v0

    invoke-virtual {v6, v12}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixAndCCLen(Ljava/lang/String;)I

    move-result v0

    .line 965
    .end local v32    # "countryCodeLen":I
    .local v0, "countryCodeLen":I
    .local v80, "tmpNumPrefix":Ljava/lang/String;
    if-lez v0, :cond_53

    .line 966
    move/from16 v81, v1

    move-object/from16 v82, v2

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 967
    .end local v1    # "tmpNumLen":I
    .end local v80    # "tmpNumPrefix":Ljava/lang/String;
    .local v2, "tmpNumPrefix":Ljava/lang/String;
    .local v81, "tmpNumLen":I
    .local v82, "tmpCompNum":Ljava/lang/String;
    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v83, v0

    const-string v0, "5: tmpNum after remove prefix: "

    .end local v0    # "countryCodeLen":I
    .local v83, "countryCodeLen":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tmpNum.length5: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", tmpNumPrefix: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_32

    .line 971
    .end local v81    # "tmpNumLen":I
    .end local v82    # "tmpCompNum":Ljava/lang/String;
    .end local v83    # "countryCodeLen":I
    .restart local v0    # "countryCodeLen":I
    .restart local v1    # "tmpNumLen":I
    .local v2, "tmpCompNum":Ljava/lang/String;
    .restart local v80    # "tmpNumPrefix":Ljava/lang/String;
    :cond_53
    move/from16 v83, v0

    move/from16 v81, v1

    move-object/from16 v82, v2

    move-object/from16 v2, v80

    .end local v0    # "countryCodeLen":I
    .end local v1    # "tmpNumLen":I
    .end local v80    # "tmpNumPrefix":Ljava/lang/String;
    .local v2, "tmpNumPrefix":Ljava/lang/String;
    .restart local v81    # "tmpNumLen":I
    .restart local v82    # "tmpCompNum":Ljava/lang/String;
    .restart local v83    # "countryCodeLen":I
    :goto_32
    const/4 v0, 0x0

    invoke-direct {v6, v11, v9, v2, v0}, Lhuawei/android/telephony/CallerInfoHW;->isEqualCountryCodePrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 973
    if-eqz v21, :cond_5b

    .line 974
    invoke-direct {v6, v12}, Lhuawei/android/telephony/CallerInfoHW;->deleteIPHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    .end local v12    # "tmpNum":Ljava/lang/String;
    .local v1, "tmpNum":Ljava/lang/String;
    invoke-direct {v6, v1}, Lhuawei/android/telephony/CallerInfoHW;->isChineseMobilePhoneNumber(Ljava/lang/String;)Z

    move-result v12

    .line 976
    .local v12, "isTmpNumCnMPN":Z
    if-eqz v38, :cond_54

    if-eqz v12, :cond_55

    :cond_54
    if-nez v38, :cond_56

    if-eqz v12, :cond_56

    .line 977
    :cond_55
    const-string v0, "5: compNum and tmpNum not both MPN, continue"

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 978
    nop

    .line 1027
    move-object/from16 v20, v1

    move-object/from16 v84, v2

    .end local v3    # "compNumAreaCode":Ljava/lang/String;
    .end local v12    # "isTmpNumCnMPN":Z
    .end local v15    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v62    # "compNum":Ljava/lang/String;
    .end local v65    # "compNumLen":I
    .end local v81    # "tmpNumLen":I
    .local v1, "compNum":Ljava/lang/String;
    .local v2, "compNumLen":I
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .local v84, "tmpNumPrefix":Ljava/lang/String;
    .local v86, "compNumAreaCode":Ljava/lang/String;
    :goto_33
    move-object/from16 v86, v3

    move-object/from16 v42, v15

    move-object/from16 v1, v62

    move/from16 v2, v65

    goto/16 :goto_38

    .line 979
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v84    # "tmpNumPrefix":Ljava/lang/String;
    .end local v86    # "compNumAreaCode":Ljava/lang/String;
    .local v1, "tmpNum":Ljava/lang/String;
    .local v2, "tmpNumPrefix":Ljava/lang/String;
    .restart local v3    # "compNumAreaCode":Ljava/lang/String;
    .restart local v12    # "isTmpNumCnMPN":Z
    .restart local v15    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v62    # "compNum":Ljava/lang/String;
    .restart local v65    # "compNumLen":I
    .restart local v81    # "tmpNumLen":I
    :cond_56
    if-eqz v38, :cond_57

    if-eqz v12, :cond_57

    .line 980
    const-string v0, "5: compNum and tmpNum are both MPN, continue to match by mccmnc"

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 995
    move-object v12, v1

    move-object/from16 v84, v2

    goto :goto_35

    .line 982
    :cond_57
    invoke-direct {v6, v1}, Lhuawei/android/telephony/CallerInfoHW;->getChineseFixNumberAreaCodeLength(Ljava/lang/String;)I

    move-result v0

    .line 983
    .local v0, "areaCodeLen":I
    if-lez v0, :cond_58

    .line 984
    move-object/from16 v84, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 985
    .end local v2    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v84    # "tmpNumPrefix":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v85, v0

    const-string v0, "5: CN tmpNum after remove area code: "

    .end local v0    # "areaCodeLen":I
    .local v85, "areaCodeLen":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tmpNum.length5: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", tmpNumAreaCode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_34

    .line 989
    .end local v84    # "tmpNumPrefix":Ljava/lang/String;
    .end local v85    # "areaCodeLen":I
    .restart local v0    # "areaCodeLen":I
    .restart local v2    # "tmpNumPrefix":Ljava/lang/String;
    :cond_58
    move/from16 v85, v0

    move-object/from16 v84, v2

    .end local v0    # "areaCodeLen":I
    .end local v2    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v84    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v85    # "areaCodeLen":I
    :goto_34
    invoke-direct {v6, v3, v15}, Lhuawei/android/telephony/CallerInfoHW;->isEqualChineseFixNumberAreaCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 990
    const-string v0, "5: areacode prefix not same, continue"

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 991
    nop

    .line 1027
    move-object/from16 v20, v1

    goto :goto_33

    .line 995
    .end local v12    # "isTmpNumCnMPN":Z
    .end local v85    # "areaCodeLen":I
    :cond_59
    move-object v12, v1

    .line 1006
    .end local v1    # "tmpNum":Ljava/lang/String;
    .local v12, "tmpNum":Ljava/lang/String;
    :goto_35
    move-object/from16 v86, v3

    const/4 v1, 0x1

    .end local v3    # "compNumAreaCode":Ljava/lang/String;
    .restart local v86    # "compNumAreaCode":Ljava/lang/String;
    :cond_5a
    const/4 v3, 0x2

    goto :goto_36

    .line 996
    .end local v84    # "tmpNumPrefix":Ljava/lang/String;
    .end local v86    # "compNumAreaCode":Ljava/lang/String;
    .restart local v2    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v3    # "compNumAreaCode":Ljava/lang/String;
    :cond_5b
    move-object/from16 v84, v2

    .end local v2    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v84    # "tmpNumPrefix":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_5c

    const-string v0, "0"

    .line 997
    move-object/from16 v86, v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "compNumAreaCode":Ljava/lang/String;
    .restart local v86    # "compNumAreaCode":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "0"

    const/4 v3, 0x2

    invoke-virtual {v12, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 998
    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 999
    const-string v0, "5: tmpNum remove 0 at beginning"

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_36

    .line 1006
    .end local v86    # "compNumAreaCode":Ljava/lang/String;
    .restart local v3    # "compNumAreaCode":Ljava/lang/String;
    :cond_5c
    move-object/from16 v86, v3

    const/4 v1, 0x1

    const/4 v3, 0x2

    .end local v3    # "compNumAreaCode":Ljava/lang/String;
    .restart local v86    # "compNumAreaCode":Ljava/lang/String;
    :cond_5d
    :goto_36
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    .line 1008
    .end local v81    # "tmpNumLen":I
    .local v0, "tmpNumLen":I
    move/from16 v2, v65

    if-ne v0, v2, :cond_5f

    .line 1010
    .end local v65    # "compNumLen":I
    .local v2, "compNumLen":I
    const/4 v1, -0x1

    if-ne v1, v10, :cond_5e

    move-object/from16 v1, v62

    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    .end local v62    # "compNum":Ljava/lang/String;
    .local v1, "compNum":Ljava/lang/String;
    if-nez v20, :cond_61

    .line 1012
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v87, v0

    const-string v0, "5: break! numLongID = "

    .end local v0    # "tmpNumLen":I
    .local v87, "tmpNumLen":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1016
    goto :goto_37

    .line 1027
    .end local v1    # "compNum":Ljava/lang/String;
    .end local v87    # "tmpNumLen":I
    .restart local v62    # "compNum":Ljava/lang/String;
    :cond_5e
    move-object/from16 v1, v62

    .end local v62    # "compNum":Ljava/lang/String;
    .restart local v1    # "compNum":Ljava/lang/String;
    goto :goto_37

    .line 1022
    .end local v1    # "compNum":Ljava/lang/String;
    .restart local v0    # "tmpNumLen":I
    .restart local v62    # "compNum":Ljava/lang/String;
    :cond_5f
    move/from16 v87, v0

    move-object/from16 v1, v62

    .end local v0    # "tmpNumLen":I
    .end local v62    # "compNum":Ljava/lang/String;
    .restart local v1    # "compNum":Ljava/lang/String;
    .restart local v87    # "tmpNumLen":I
    const-string v0, "5: continue"

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1024
    goto :goto_37

    .line 1003
    .end local v1    # "compNum":Ljava/lang/String;
    .end local v84    # "tmpNumPrefix":Ljava/lang/String;
    .end local v86    # "compNumAreaCode":Ljava/lang/String;
    .end local v87    # "tmpNumLen":I
    .local v2, "tmpNumPrefix":Ljava/lang/String;
    .restart local v3    # "compNumAreaCode":Ljava/lang/String;
    .restart local v62    # "compNum":Ljava/lang/String;
    .restart local v65    # "compNumLen":I
    .restart local v81    # "tmpNumLen":I
    :cond_60
    move-object/from16 v84, v2

    move-object/from16 v86, v3

    move-object/from16 v1, v62

    move/from16 v2, v65

    .end local v3    # "compNumAreaCode":Ljava/lang/String;
    .end local v62    # "compNum":Ljava/lang/String;
    .end local v65    # "compNumLen":I
    .restart local v1    # "compNum":Ljava/lang/String;
    .local v2, "compNumLen":I
    .restart local v84    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v86    # "compNumAreaCode":Ljava/lang/String;
    const-string v0, "5: countrycode prefix not same, continue"

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1004
    nop

    .line 1027
    .end local v12    # "tmpNum":Ljava/lang/String;
    .end local v15    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v81    # "tmpNumLen":I
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    :cond_61
    :goto_37
    move-object/from16 v20, v12

    move-object/from16 v42, v15

    :goto_38
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_62

    .line 1030
    move v0, v10

    move-object/from16 v12, v20

    .end local v10    # "fixedIndex":I
    .end local v20    # "tmpNum":Ljava/lang/String;
    .local v0, "fixedIndex":I
    .restart local v12    # "tmpNum":Ljava/lang/String;
    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "5: fixedIndex = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1038
    .end local v5    # "data4ColumnIndex":I
    .end local v77    # "columnIndex":I
    .end local v78    # "formatColumnIndex":I
    move v10, v0

    move-object/from16 v20, v12

    move-object/from16 v40, v14

    move-object/from16 v12, v18

    move-object/from16 v43, v79

    move/from16 v32, v83

    move-object/from16 v41, v84

    goto :goto_3b

    .line 928
    .end local v0    # "fixedIndex":I
    .end local v12    # "tmpNum":Ljava/lang/String;
    .restart local v5    # "data4ColumnIndex":I
    .restart local v10    # "fixedIndex":I
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v77    # "columnIndex":I
    .restart local v78    # "formatColumnIndex":I
    :cond_62
    move-object/from16 v62, v1

    move/from16 v65, v2

    move-object/from16 v40, v14

    move/from16 v0, v77

    move/from16 v1, v78

    move-object/from16 v43, v79

    move-object/from16 v2, v82

    move/from16 v32, v83

    move-object/from16 v41, v84

    move-object/from16 v3, v86

    goto/16 :goto_2e

    .line 934
    .end local v20    # "tmpNum":Ljava/lang/String;
    .end local v77    # "columnIndex":I
    .end local v78    # "formatColumnIndex":I
    .end local v79    # "tmpNumFormat":Ljava/lang/String;
    .end local v82    # "tmpCompNum":Ljava/lang/String;
    .end local v83    # "countryCodeLen":I
    .end local v84    # "tmpNumPrefix":Ljava/lang/String;
    .end local v86    # "compNumAreaCode":Ljava/lang/String;
    .local v0, "columnIndex":I
    .local v1, "formatColumnIndex":I
    .local v2, "tmpCompNum":Ljava/lang/String;
    .restart local v3    # "compNumAreaCode":Ljava/lang/String;
    .restart local v12    # "tmpNum":Ljava/lang/String;
    .restart local v32    # "countryCodeLen":I
    .restart local v41    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    .restart local v62    # "compNum":Ljava/lang/String;
    .restart local v65    # "compNumLen":I
    :cond_63
    move/from16 v77, v0

    move/from16 v78, v1

    move-object/from16 v82, v2

    move-object/from16 v86, v3

    move-object/from16 v1, v62

    move/from16 v2, v65

    .end local v0    # "columnIndex":I
    .end local v3    # "compNumAreaCode":Ljava/lang/String;
    .end local v62    # "compNum":Ljava/lang/String;
    .end local v65    # "compNumLen":I
    .local v1, "compNum":Ljava/lang/String;
    .local v2, "compNumLen":I
    .restart local v77    # "columnIndex":I
    .restart local v78    # "formatColumnIndex":I
    .restart local v82    # "tmpCompNum":Ljava/lang/String;
    .restart local v86    # "compNumAreaCode":Ljava/lang/String;
    const/4 v0, -0x1

    return v0

    .line 1038
    .end local v1    # "compNum":Ljava/lang/String;
    .end local v5    # "data4ColumnIndex":I
    .end local v10    # "fixedIndex":I
    .end local v12    # "tmpNum":Ljava/lang/String;
    .end local v14    # "origTmpNum":Ljava/lang/String;
    .end local v77    # "columnIndex":I
    .end local v78    # "formatColumnIndex":I
    .end local v82    # "tmpCompNum":Ljava/lang/String;
    .end local v86    # "compNumAreaCode":Ljava/lang/String;
    .local v2, "tmpCompNum":Ljava/lang/String;
    .restart local v3    # "compNumAreaCode":Ljava/lang/String;
    .restart local v20    # "tmpNum":Ljava/lang/String;
    .restart local v28    # "fixedIndex":I
    .restart local v40    # "origTmpNum":Ljava/lang/String;
    .restart local v62    # "compNum":Ljava/lang/String;
    .restart local v65    # "compNumLen":I
    :cond_64
    move-object/from16 v82, v2

    move-object/from16 v86, v3

    move-object/from16 v1, v62

    move/from16 v2, v65

    goto :goto_3a

    :cond_65
    move-object/from16 v82, v2

    move-object/from16 v86, v3

    move-object/from16 v1, v62

    move/from16 v2, v65

    move-object/from16 v8, p3

    .end local v3    # "compNumAreaCode":Ljava/lang/String;
    .end local v62    # "compNum":Ljava/lang/String;
    .end local v65    # "compNumLen":I
    .restart local v1    # "compNum":Ljava/lang/String;
    .local v2, "compNumLen":I
    .restart local v82    # "tmpCompNum":Ljava/lang/String;
    .restart local v86    # "compNumAreaCode":Ljava/lang/String;
    :goto_3a
    move-object/from16 v12, v18

    move/from16 v10, v28

    .end local v18    # "compNumShort":Ljava/lang/String;
    .end local v28    # "fixedIndex":I
    .restart local v10    # "fixedIndex":I
    .local v12, "compNumShort":Ljava/lang/String;
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fixedIndex: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1040
    const/4 v0, -0x1

    if-ne v0, v10, :cond_67

    move-object/from16 v5, v44

    invoke-direct {v6, v5, v9}, Lhuawei/android/telephony/CallerInfoHW;->shouldDoNumberMatchAgainBySimMccmnc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .end local v44    # "origCompNum":Ljava/lang/String;
    .local v5, "origCompNum":Ljava/lang/String;
    if-eqz v0, :cond_66

    .line 1041
    iget v14, v6, Lhuawei/android/telephony/CallerInfoHW;->mSimNumLong:I

    iget v15, v6, Lhuawei/android/telephony/CallerInfoHW;->mSimNumShort:I

    move-object v0, v6

    move-object/from16 v18, v1

    move/from16 v24, v2

    move-object v1, v7

    .end local v1    # "compNum":Ljava/lang/String;
    .end local v2    # "compNumLen":I
    .local v18, "compNum":Ljava/lang/String;
    .local v24, "compNumLen":I
    move-object/from16 v25, v82

    move-object v2, v5

    .end local v82    # "tmpCompNum":Ljava/lang/String;
    .local v25, "tmpCompNum":Ljava/lang/String;
    move-object/from16 v26, v86

    move-object v3, v8

    .end local v86    # "compNumAreaCode":Ljava/lang/String;
    .local v26, "compNumAreaCode":Ljava/lang/String;
    move/from16 v31, v4

    move-object/from16 v27, v34

    move v4, v14

    .end local v4    # "NUM_SHORT":I
    .end local v34    # "formattedCompNum":Ljava/lang/String;
    .local v27, "formattedCompNum":Ljava/lang/String;
    .restart local v31    # "NUM_SHORT":I
    move-object v14, v5

    move v5, v15

    .end local v5    # "origCompNum":Ljava/lang/String;
    .local v14, "origCompNum":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lhuawei/android/telephony/CallerInfoHW;->getCallerIndexInternal(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v10

    goto :goto_3c

    .line 1043
    .end local v14    # "origCompNum":Ljava/lang/String;
    .end local v18    # "compNum":Ljava/lang/String;
    .end local v24    # "compNumLen":I
    .end local v25    # "tmpCompNum":Ljava/lang/String;
    .end local v26    # "compNumAreaCode":Ljava/lang/String;
    .end local v27    # "formattedCompNum":Ljava/lang/String;
    .end local v31    # "NUM_SHORT":I
    .restart local v1    # "compNum":Ljava/lang/String;
    .restart local v2    # "compNumLen":I
    .restart local v4    # "NUM_SHORT":I
    .restart local v5    # "origCompNum":Ljava/lang/String;
    .restart local v34    # "formattedCompNum":Ljava/lang/String;
    .restart local v82    # "tmpCompNum":Ljava/lang/String;
    .restart local v86    # "compNumAreaCode":Ljava/lang/String;
    :cond_66
    move-object/from16 v18, v1

    move/from16 v24, v2

    move/from16 v31, v4

    move-object v14, v5

    move-object/from16 v27, v34

    move-object/from16 v25, v82

    move-object/from16 v26, v86

    .end local v1    # "compNum":Ljava/lang/String;
    .end local v2    # "compNumLen":I
    .end local v4    # "NUM_SHORT":I
    .end local v5    # "origCompNum":Ljava/lang/String;
    .end local v34    # "formattedCompNum":Ljava/lang/String;
    .end local v82    # "tmpCompNum":Ljava/lang/String;
    .end local v86    # "compNumAreaCode":Ljava/lang/String;
    .restart local v14    # "origCompNum":Ljava/lang/String;
    .restart local v18    # "compNum":Ljava/lang/String;
    .restart local v24    # "compNumLen":I
    .restart local v25    # "tmpCompNum":Ljava/lang/String;
    .restart local v26    # "compNumAreaCode":Ljava/lang/String;
    .restart local v27    # "formattedCompNum":Ljava/lang/String;
    .restart local v31    # "NUM_SHORT":I
    goto :goto_3c

    .end local v14    # "origCompNum":Ljava/lang/String;
    .end local v18    # "compNum":Ljava/lang/String;
    .end local v24    # "compNumLen":I
    .end local v25    # "tmpCompNum":Ljava/lang/String;
    .end local v26    # "compNumAreaCode":Ljava/lang/String;
    .end local v27    # "formattedCompNum":Ljava/lang/String;
    .end local v31    # "NUM_SHORT":I
    .restart local v1    # "compNum":Ljava/lang/String;
    .restart local v2    # "compNumLen":I
    .restart local v4    # "NUM_SHORT":I
    .restart local v34    # "formattedCompNum":Ljava/lang/String;
    .restart local v44    # "origCompNum":Ljava/lang/String;
    .restart local v82    # "tmpCompNum":Ljava/lang/String;
    .restart local v86    # "compNumAreaCode":Ljava/lang/String;
    :cond_67
    move-object/from16 v18, v1

    move/from16 v24, v2

    move/from16 v31, v4

    move-object/from16 v27, v34

    move-object/from16 v14, v44

    move-object/from16 v25, v82

    move-object/from16 v26, v86

    .end local v1    # "compNum":Ljava/lang/String;
    .end local v2    # "compNumLen":I
    .end local v4    # "NUM_SHORT":I
    .end local v34    # "formattedCompNum":Ljava/lang/String;
    .end local v44    # "origCompNum":Ljava/lang/String;
    .end local v82    # "tmpCompNum":Ljava/lang/String;
    .end local v86    # "compNumAreaCode":Ljava/lang/String;
    .restart local v14    # "origCompNum":Ljava/lang/String;
    .restart local v18    # "compNum":Ljava/lang/String;
    .restart local v24    # "compNumLen":I
    .restart local v25    # "tmpCompNum":Ljava/lang/String;
    .restart local v26    # "compNumAreaCode":Ljava/lang/String;
    .restart local v27    # "formattedCompNum":Ljava/lang/String;
    .restart local v31    # "NUM_SHORT":I
    :goto_3c
    return v10

    .line 468
    .end local v21    # "isCnNumber":Z
    .end local v25    # "tmpCompNum":Ljava/lang/String;
    .end local v26    # "compNumAreaCode":Ljava/lang/String;
    .end local v27    # "formattedCompNum":Ljava/lang/String;
    .end local v31    # "NUM_SHORT":I
    .end local v32    # "countryCodeLen":I
    .end local v38    # "isCompNumCnMPN":Z
    .end local v40    # "origTmpNum":Ljava/lang/String;
    .end local v41    # "tmpNumPrefix":Ljava/lang/String;
    .end local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v43    # "tmpNumFormat":Ljava/lang/String;
    .local v0, "fixedIndex":I
    .local v1, "NUM_LONG":I
    .local v2, "NUM_SHORT":I
    .local v10, "origTmpNum":Ljava/lang/String;
    .local v12, "tmpNumPrefix":Ljava/lang/String;
    .local v13, "compNumAreaCode":Ljava/lang/String;
    .local v14, "tmpNumAreaCode":Ljava/lang/String;
    .local v15, "tmpNumFormat":Ljava/lang/String;
    .local v18, "compNumShort":Ljava/lang/String;
    .local v24, "origCompNum":Ljava/lang/String;
    .restart local p2    # "compNum":Ljava/lang/String;
    :cond_68
    move-object/from16 v40, v10

    move-object/from16 v41, v12

    move-object/from16 v42, v14

    move-object/from16 v43, v15

    .end local v10    # "origTmpNum":Ljava/lang/String;
    .end local v12    # "tmpNumPrefix":Ljava/lang/String;
    .end local v14    # "tmpNumAreaCode":Ljava/lang/String;
    .end local v15    # "tmpNumFormat":Ljava/lang/String;
    .restart local v40    # "origTmpNum":Ljava/lang/String;
    .restart local v41    # "tmpNumPrefix":Ljava/lang/String;
    .restart local v42    # "tmpNumAreaCode":Ljava/lang/String;
    .restart local v43    # "tmpNumFormat":Ljava/lang/String;
    :goto_3d
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallerInfoHW(), cursor is empty! fixedIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v0
.end method

.method public getCountryIsoFromDbNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCountryIsoFromDbNumber(), number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, "countryIso":Ljava/lang/String;
    invoke-direct {p0, p1}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "len":I
    if-lez v1, :cond_3

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "tmpNumber":Ljava/lang/String;
    iget-object v3, p0, Lhuawei/android/telephony/CallerInfoHW;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 124
    .local v4, "countrycode":I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    sget-object v3, Lhuawei/android/telephony/CallerInfoHW;->sInstance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCountryIsoFromDbNumber(), find matched country code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", and country iso: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 128
    return-object v0

    .line 130
    .end local v4    # "countrycode":I
    :cond_1
    goto :goto_0

    .line 131
    :cond_2
    const-string v3, "getCountryIsoFromDbNumber(), no matched country code, returns null"

    invoke-static {v3}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 133
    .end local v2    # "tmpNumber":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public getIntlPrefixAndCCLen(Ljava/lang/String;)I
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .line 1078
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    const/4 v0, 0x0

    return v0

    .line 1082
    :cond_0
    invoke-direct {p0, p1}, Lhuawei/android/telephony/CallerInfoHW;->getIntlPrefixLength(Ljava/lang/String;)I

    move-result v0

    .line 1083
    .local v0, "len":I
    if-lez v0, :cond_3

    .line 1084
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "tmpNumber":Ljava/lang/String;
    iget-object v2, p0, Lhuawei/android/telephony/CallerInfoHW;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1086
    .local v3, "countrycode":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractCountryCodeFromNumber(), find matched country code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1088
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 1089
    return v0

    .line 1091
    .end local v3    # "countrycode":I
    :cond_1
    goto :goto_0

    .line 1092
    :cond_2
    const-string v2, "extractCountryCodeFromNumber(), no matched country code"

    invoke-static {v2}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1093
    const/4 v0, 0x0

    .line 1094
    .end local v1    # "tmpNumber":Ljava/lang/String;
    goto :goto_1

    .line 1095
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractCountryCodeFromNumber(), no valid prefix in number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 1097
    :goto_1
    return v0
.end method
