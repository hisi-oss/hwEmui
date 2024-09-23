.class public Landroid/telephony/HwPhoneNumberUtils;
.super Ljava/lang/Object;
.source "HwPhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;
    }
.end annotation


# static fields
.field public static final CCWA_NUMBER_INTERNATIONAL:I = 0x1

.field private static final IS_SUPPORT_LONG_VMNUM:Z

.field private static final LOG_TAG:Ljava/lang/String; = "HwPhoneNumberUtils"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field private static isAirplaneModeOn:Z

.field private static final table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/HwPhoneNumberUtils;->isAirplaneModeOn:Z

    .line 53
    const-string v1, "ro.config.hw_support_long_vmNum"

    .line 54
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/HwPhoneNumberUtils;->IS_SUPPORT_LONG_VMNUM:Z

    .line 334
    invoke-static {}, Landroid/telephony/HwPhoneNumberUtils;->initMccMatchTable()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Landroid/telephony/HwPhoneNumberUtils;->table:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beginWith(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p0, "wholeStr"    # Ljava/lang/String;
    .param p1, "subStrs"    # [Ljava/lang/String;

    .line 482
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 487
    :cond_0
    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 489
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    const/4 v0, 0x1

    return v0

    .line 487
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 484
    :cond_3
    :goto_1
    return v0
.end method

.method public static convertPlusByMcc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "mcc"    # I

    .line 420
    invoke-static {p1}, Landroid/telephony/HwPhoneNumberUtils;->getRecordByMcc(I)Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;

    move-result-object v0

    .line 421
    .local v0, "record":Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getCc()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getCc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "realNum":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getSpcs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/HwPhoneNumberUtils;->beginWith(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 434
    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getNdd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 441
    .end local v2    # "realNum":Ljava/lang/String;
    :cond_2
    return-object p0

    .line 425
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static custExtraNumbers(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "subId"    # J
    .param p2, "numbers"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "custNumbers":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    long-to-int v1, p0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    .line 75
    .local v1, "slotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm.hw.cust.ecclist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .end local v1    # "slotId":I
    goto :goto_0

    .line 77
    :cond_0
    const-string v1, "gsm.hw.cust.ecclist"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    :cond_1
    return-object p2
.end method

.method private static getHwSupportLongVmnum()Z
    .locals 7

    .line 305
    sget-boolean v0, Landroid/telephony/HwPhoneNumberUtils;->IS_SUPPORT_LONG_VMNUM:Z

    .line 306
    .local v0, "valueFromProp":Z
    move v1, v0

    .line 307
    .local v1, "result":Z
    const-string v2, "hw_support_long_vmNum"

    const-class v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lhuawei/cust/HwCfgFilePolicy;->getValue(Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 309
    .local v2, "valueFromCard1":Ljava/lang/Boolean;
    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 310
    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    move v1, v5

    .line 312
    :cond_2
    const-string v5, "hw_support_long_vmNum"

    const-class v6, Ljava/lang/Boolean;

    invoke-static {v5, v3, v6}, Lhuawei/cust/HwCfgFilePolicy;->getValue(Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 314
    .local v5, "valueFromCard2":Ljava/lang/Boolean;
    if-eqz v5, :cond_5

    .line 315
    if-nez v1, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    nop

    :cond_4
    :goto_2
    move v1, v3

    .line 317
    :cond_5
    const-string v3, "HwPhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHwSupportLongVmnum, card1:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "card2:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", prop:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v1
.end method

.method private static getHwSupportLongVmnum(I)Z
    .locals 5
    .param p0, "subId"    # I

    .line 323
    const-string v0, "hw_support_long_vmNum"

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, p0, v1}, Lhuawei/cust/HwCfgFilePolicy;->getValue(Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 325
    .local v0, "valueFromCard":Ljava/lang/Boolean;
    sget-boolean v1, Landroid/telephony/HwPhoneNumberUtils;->IS_SUPPORT_LONG_VMNUM:Z

    .line 326
    .local v1, "valueFromProp":Z
    const-string v2, "HwPhoneNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHwSupportLongVmnum, subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", card:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", prop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    return v2
.end method

.method public static getNewRememberedPos(ILjava/lang/String;)I
    .locals 5
    .param p0, "rememberedPos"    # I
    .param p1, "formatted"    # Ljava/lang/String;

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    return p0

    .line 221
    :cond_0
    const/4 v0, 0x0

    .line 222
    .local v0, "numSeparate":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 223
    .local v1, "formattedLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_2

    if-ge v2, v1, :cond_2

    .line 224
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 225
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    add-int/lit8 v0, v0, 0x1

    .line 223
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "i":I
    :cond_2
    sub-int v2, p0, v0

    return v2
.end method

.method private static getRecordByMcc(I)Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;
    .locals 3
    .param p0, "mcc"    # I

    .line 403
    sget-object v0, Landroid/telephony/HwPhoneNumberUtils;->table:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 404
    .local v0, "iTableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 406
    sget-object v2, Landroid/telephony/HwPhoneNumberUtils;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;

    invoke-virtual {v2}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getMcc()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 408
    sget-object v2, Landroid/telephony/HwPhoneNumberUtils;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;

    return-object v2

    .line 404
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getToaFromNumberType(I)I
    .locals 1
    .param p0, "numType"    # I

    .line 499
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 500
    const/16 v0, 0x91

    return v0

    .line 503
    :cond_0
    const/16 v0, 0x81

    return v0
.end method

.method private static initMccMatchTable()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;",
            ">;"
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v0, "tempTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;>;"
    new-instance v7, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;

    const-string v3, "00"

    const-string v4, "86"

    const-string v5, "0"

    const-string v6, "13,15,18,17,14,10649"

    const/16 v2, 0x1cc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v1, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;

    const-string v10, "00"

    const-string v11, "91"

    const-string v12, "0"

    const-string v13, "99"

    const/16 v9, 0x194

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    return-object v0
.end method

.method public static isCustRemoveSep()Z
    .locals 3

    .line 235
    const-string v0, "true"

    const-string v1, "ro.config.number_remove_sep"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCustomProcess()Z
    .locals 3

    .line 178
    const-string v0, "true"

    const-string v1, "custom_number_formatter"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHwCustNotEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "retValue":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sput-boolean v2, Landroid/telephony/HwPhoneNumberUtils;->isAirplaneModeOn:Z

    .line 162
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    const-string v1, "ro.config.dist_nosim_airplane"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "noSimAir":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 165
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "110"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "119"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-boolean v2, Landroid/telephony/HwPhoneNumberUtils;->isAirplaneModeOn:Z

    if-eqz v2, :cond_2

    .line 168
    const/4 v0, 0x1

    .line 172
    :cond_2
    return v0
.end method

.method public static isLongVoiceMailNumber(ILjava/lang/String;)Z
    .locals 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 272
    invoke-static {p0}, Landroid/telephony/HwPhoneNumberUtils;->getHwSupportLongVmnum(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    return v1

    .line 279
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm.hw.cust.longvmnum"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "vmNumber":Ljava/lang/String;
    goto :goto_0

    .line 282
    .end local v0    # "vmNumber":Ljava/lang/String;
    :cond_1
    const-string v0, "gsm.hw.cust.longvmnum"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .restart local v0    # "vmNumber":Ljava/lang/String;
    :goto_0
    nop

    .line 285
    nop

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    return v1

    .line 294
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1

    .line 284
    .end local v0    # "vmNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Ljava/lang/SecurityException;
    return v1
.end method

.method private static isLongVoiceMailNumber(Ljava/lang/String;)Z
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .line 242
    invoke-static {}, Landroid/telephony/HwPhoneNumberUtils;->getHwSupportLongVmnum()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 243
    return v1

    .line 248
    :cond_0
    const-string v0, ""

    .line 250
    .local v0, "vmNumberSub2":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const-string v2, "gsm.hw.cust.longvmnum0"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "vmNumber":Ljava/lang/String;
    const-string v3, "gsm.hw.cust.longvmnum1"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 254
    .end local v2    # "vmNumber":Ljava/lang/String;
    :cond_1
    const-string v2, "gsm.hw.cust.longvmnum"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .restart local v2    # "vmNumber":Ljava/lang/String;
    :goto_0
    nop

    .line 257
    nop

    .line 260
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    return v1

    .line 266
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    nop

    :cond_4
    return v1

    .line 256
    .end local v2    # "vmNumber":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 257
    .local v2, "ex":Ljava/lang/SecurityException;
    return v1
.end method

.method public static isMobileNumber(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "mcc"    # I

    .line 451
    invoke-static {p1}, Landroid/telephony/HwPhoneNumberUtils;->getRecordByMcc(I)Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;

    move-result-object v0

    .line 453
    .local v0, "record":Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 458
    :cond_0
    const/4 v1, 0x0

    .line 459
    .local v1, "isMobileNum":Z
    const/4 v2, 0x0

    .line 461
    .local v2, "spcIndex":I
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getCc()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getCc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v4, v3

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getIdd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 466
    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getCc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getIdd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 468
    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getIdd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getCc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v3, v4

    .line 471
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->getSpcs()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/HwPhoneNumberUtils;->beginWith(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 473
    const/4 v1, 0x1

    .line 475
    :cond_3
    const-string v3, "HwPhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plus: isMobileNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v1

    .line 455
    .end local v1    # "isMobileNum":Z
    .end local v2    # "spcIndex":I
    :cond_4
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isRemoveSeparateOnSK()Z
    .locals 2

    .line 198
    const-string v0, "ro.config.noFormateCountry"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "noFormateCountry":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .line 110
    invoke-static {p0}, Landroid/telephony/HwPhoneNumberUtils;->isLongVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 111
    return v1

    .line 117
    :cond_0
    const-string v0, ""

    .line 121
    .local v0, "vmNumberSub2":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lhuawei/android/telephony/wrapper/WrapperFactory;->getMSimTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;

    move-result-object v3

    invoke-interface {v3}, Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-static {}, Lhuawei/android/telephony/wrapper/WrapperFactory;->getMSimTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;

    move-result-object v3

    invoke-interface {v3, v2}, Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "vmNumber":Ljava/lang/String;
    invoke-static {}, Lhuawei/android/telephony/wrapper/WrapperFactory;->getMSimTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;

    move-result-object v4

    invoke-interface {v4, v1}, Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 133
    .end local v3    # "vmNumber":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .restart local v3    # "vmNumber":Ljava/lang/String;
    :goto_0
    nop

    .line 136
    nop

    .line 141
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    .line 135
    .end local v3    # "vmNumber":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "ex":Ljava/lang/SecurityException;
    return v2
.end method

.method public static removeAllSeparate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .line 203
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    return-object p0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 208
    .local v1, "numLenght":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 209
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 210
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static skipHardcodeNumbers()Z
    .locals 2

    .line 98
    invoke-static {}, Lhuawei/android/telephony/wrapper/WrapperFactory;->getMSimTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static stripBrackets(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    return-object p0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 187
    .local v1, "numLenght":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    .line 190
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static useVoiceMailNumberFeature()Z
    .locals 1

    .line 151
    const/4 v0, 0x1

    return v0
.end method
