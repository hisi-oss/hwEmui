.class public Lcom/huawei/connectivitylog/ChrCommonInfo;
.super Ljava/lang/Object;
.source "ChrCommonInfo.java"


# static fields
.field protected static final NETWORK_TYPE_CDMA:I = 0x2

.field protected static final NETWORK_TYPE_EVDO:I = 0x4

.field protected static final NETWORK_TYPE_GSM:I = 0x0

.field protected static final NETWORK_TYPE_LTE:I = 0x3

.field protected static final NETWORK_TYPE_UMTS:I = 0x1

.field protected static final NETWORK_TYPE_UNKWON:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encyptDeviceIdWithSHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "deviceId"    # Ljava/lang/String;

    .line 184
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/SHAUtils;->shaBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getChipsetType()Ljava/lang/String;
    .locals 3

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "stringtmp":Ljava/lang/String;
    const-string v1, "ro.board.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "k3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    const-string v1, "ro.config.hisi_soc_type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 40
    .local v1, "isHisi":Z
    if-eqz v1, :cond_1

    .line 41
    const-string v2, "HISILICON"

    return-object v2

    .line 44
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 35
    .end local v1    # "isHisi":Z
    :cond_2
    :goto_0
    const-string v1, "HISILICON"

    return-object v1
.end method

.method public static getChrComHead(Landroid/content/Context;)Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;
    .locals 7
    .param p0, "cxt"    # Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;-><init>()V

    .line 76
    .local v0, "ComHeadModel":Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;
    iget-object v1, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strSerialNum:Lcom/huawei/device/connectivitychrlog/LogString;

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {v2}, Lcom/huawei/connectivitylog/ChrCommonInfo;->encyptDeviceIdWithSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 79
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 81
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 83
    .local v2, "phonecount":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 84
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 92
    return-object v3

    .line 89
    :pswitch_0
    iget-object v3, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    const-string v4, "MEID"

    invoke-virtual {v3, v4}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;->setValue(Ljava/lang/String;)V

    .line 90
    goto :goto_1

    .line 86
    :pswitch_1
    iget-object v3, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    const-string v4, "IMEI"

    invoke-virtual {v3, v4}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;->setValue(Ljava/lang/String;)V

    .line 87
    nop

    .line 94
    :goto_1
    iget-object v3, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID1:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/connectivitylog/ChrCommonInfo;->encyptDeviceIdWithSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 95
    :cond_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 96
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 101
    :pswitch_2
    iget-object v5, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    const-string v6, "MEID"

    invoke-virtual {v5, v6}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;->setValue(Ljava/lang/String;)V

    .line 102
    goto :goto_2

    .line 98
    :pswitch_3
    iget-object v5, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    const-string v6, "IMEI"

    invoke-virtual {v5, v6}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;->setValue(Ljava/lang/String;)V

    .line 99
    nop

    .line 106
    :goto_2
    iget-object v5, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID1:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/connectivitylog/ChrCommonInfo;->encyptDeviceIdWithSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    goto :goto_3

    .line 113
    :pswitch_4
    iget-object v3, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType2:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;

    const-string v5, "MEID"

    invoke-virtual {v3, v5}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;->setValue(Ljava/lang/String;)V

    .line 114
    goto :goto_3

    .line 110
    :pswitch_5
    iget-object v3, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType2:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;

    const-string v5, "IMEI"

    invoke-virtual {v3, v5}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;->setValue(Ljava/lang/String;)V

    .line 111
    nop

    .line 118
    :goto_3
    iget-object v3, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID2:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/connectivitylog/ChrCommonInfo;->encyptDeviceIdWithSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 122
    :goto_4
    return-object v0

    .line 120
    :cond_2
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static getChrFileHead()Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;
    .locals 4

    .line 54
    new-instance v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;-><init>()V

    .line 57
    .local v0, "fileHeadModel":Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;
    iget-object v1, v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->strSoftwareVersion:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-static {}, Lcom/huawei/connectivitylog/ChrCommonInfo;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/huawei/connectivitylog/ChrCommonInfo;->getChipsetType()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "chipset":Ljava/lang/String;
    iget-object v2, v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->enChipsetType:Lcom/huawei/device/connectivitychrlog/ENCChipsetType;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Lcom/huawei/device/connectivitychrlog/ENCChipsetType;->setValue(Ljava/lang/String;)V

    .line 62
    iget-object v2, v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->usYear:Lcom/huawei/device/connectivitychrlog/LogShort;

    invoke-static {}, Lcom/huawei/connectivitylog/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->year:I

    invoke-virtual {v2, v3}, Lcom/huawei/device/connectivitychrlog/LogShort;->setValue(I)V

    .line 63
    iget-object v2, v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucMonth:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-static {}, Lcom/huawei/connectivitylog/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/huawei/device/connectivitychrlog/LogByte;->setValue(I)V

    .line 64
    iget-object v2, v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucDay:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-static {}, Lcom/huawei/connectivitylog/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v3}, Lcom/huawei/device/connectivitychrlog/LogByte;->setValue(I)V

    .line 65
    iget-object v2, v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucHour:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-static {}, Lcom/huawei/connectivitylog/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->hour:I

    invoke-virtual {v2, v3}, Lcom/huawei/device/connectivitychrlog/LogByte;->setValue(I)V

    .line 66
    iget-object v2, v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucMinute:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-static {}, Lcom/huawei/connectivitylog/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->minute:I

    invoke-virtual {v2, v3}, Lcom/huawei/device/connectivitychrlog/LogByte;->setValue(I)V

    .line 67
    iget-object v2, v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->ucSecond:Lcom/huawei/device/connectivitychrlog/LogByte;

    invoke-static {}, Lcom/huawei/connectivitylog/ChrCommonInfo;->getTime()Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->second:I

    invoke-virtual {v2, v3}, Lcom/huawei/device/connectivitychrlog/LogByte;->setValue(I)V

    .line 68
    iget-object v2, v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->usTimeZone:Lcom/huawei/device/connectivitychrlog/LogShort;

    const/16 v3, 0x1e0

    invoke-virtual {v2, v3}, Lcom/huawei/device/connectivitychrlog/LogShort;->setValue(I)V

    .line 70
    return-object v0
.end method

.method private static getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .line 26
    const-string v0, "ro.build.display.id"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTime()Landroid/text/format/Time;
    .locals 1

    .line 48
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 49
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 50
    return-object v0
.end method


# virtual methods
.method public getCardIndex()I
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getChrComHead(Landroid/content/Context;Z)Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;
    .locals 7
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "isNeedSHA"    # Z

    .line 128
    new-instance v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;-><init>()V

    .line 130
    .local v0, "ComHeadModel":Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 131
    return-object v1

    .line 134
    :cond_0
    iget-object v3, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strSerialNum:Lcom/huawei/device/connectivitychrlog/LogString;

    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 136
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 139
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 140
    .local v4, "phonecount":I
    if-ne v4, v2, :cond_2

    .line 141
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 149
    return-object v1

    .line 146
    :pswitch_0
    iget-object v1, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    const-string v2, "MEID"

    invoke-virtual {v1, v2}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;->setValue(Ljava/lang/String;)V

    .line 147
    goto :goto_1

    .line 143
    :pswitch_1
    iget-object v1, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    const-string v2, "IMEI"

    invoke-virtual {v1, v2}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;->setValue(Ljava/lang/String;)V

    .line 144
    nop

    .line 151
    :goto_1
    iget-object v1, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID1:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 152
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 158
    :pswitch_2
    iget-object v5, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    const-string v6, "MEID"

    invoke-virtual {v5, v6}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;->setValue(Ljava/lang/String;)V

    .line 159
    goto :goto_2

    .line 155
    :pswitch_3
    iget-object v5, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType1:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;

    const-string v6, "IMEI"

    invoke-virtual {v5, v6}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType1;->setValue(Ljava/lang/String;)V

    .line 156
    nop

    .line 163
    :goto_2
    iget-object v5, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID1:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_2

    goto :goto_3

    .line 170
    :pswitch_4
    iget-object v1, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType2:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;

    const-string v5, "MEID"

    invoke-virtual {v1, v5}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;->setValue(Ljava/lang/String;)V

    .line 171
    goto :goto_3

    .line 167
    :pswitch_5
    iget-object v1, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->enDeviceIDType2:Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;

    const-string v5, "IMEI"

    invoke-virtual {v1, v5}, Lcom/huawei/device/connectivitychrlog/ENCDeviceIDType2;->setValue(Ljava/lang/String;)V

    .line 168
    nop

    .line 175
    :goto_3
    iget-object v1, v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->strIMEIorMEID2:Lcom/huawei/device/connectivitychrlog/LogString;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/device/connectivitychrlog/LogString;->setValue(Ljava/lang/String;)V

    .line 179
    :goto_4
    return-object v0

    .line 177
    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
