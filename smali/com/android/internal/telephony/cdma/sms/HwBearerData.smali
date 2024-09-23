.class public Lcom/android/internal/telephony/cdma/sms/HwBearerData;
.super Ljava/lang/Object;
.source "HwBearerData.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HwBearerData"

.field private static bearerDataUtils:Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;

    invoke-static {v0}, Lcom/huawei/utils/reflect/EasyInvokeFactory;->getInvokeUtils(Ljava/lang/Class;)Lcom/huawei/utils/reflect/EasyInvokeUtils;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;

    sput-object v0, Lcom/android/internal/telephony/cdma/sms/HwBearerData;->bearerDataUtils:Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTextEncodingDetailsEx(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z

    .line 152
    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 154
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/HwBearerData;->bearerDataUtils:Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;->countAsciiSeptets(Lcom/android/internal/telephony/cdma/sms/BearerData;Ljava/lang/CharSequence;Z)I

    move-result v1

    .line 157
    .local v1, "septets":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 158
    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 159
    const/16 v3, 0xa0

    if-le v1, v3, :cond_0

    .line 160
    add-int/lit16 v3, v1, 0x98

    div-int/lit16 v3, v3, 0x99

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 162
    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v3, v3, 0x99

    sub-int/2addr v3, v1

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0

    .line 165
    :cond_0
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 166
    sub-int/2addr v3, v1

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 168
    :goto_0
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 171
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 172
    iget v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v3, v3, 0x2

    .line 173
    .local v3, "octets":I
    const/16 v4, 0x8c

    if-le v3, v4, :cond_2

    .line 174
    add-int/lit16 v2, v3, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 176
    iget v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 179
    :cond_2
    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 180
    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 182
    :goto_1
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 185
    .end local v3    # "octets":I
    :goto_2
    return-object v0
.end method

.method public static encode7bitMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)Z
    .locals 6
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z

    .line 41
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 42
    .local v0, "udhBytes":I
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x7

    .line 44
    .local v2, "udhSeptets":I
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 45
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 48
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v4, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;IZ)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    nop

    .line 54
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 58
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 60
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    invoke-static {p1, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 61
    return v1

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    return v3
.end method

.method private static encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 87
    const/16 v0, 0x8

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    div-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    .line 92
    .local v0, "val":B
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 93
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 94
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    div-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 99
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 100
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 101
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 104
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    div-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 105
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 106
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 107
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    div-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 111
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 113
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    div-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 117
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 119
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    div-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 123
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v0, v2

    .line 125
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 126
    return-void
.end method

.method public static encodeMsgCenterTimeStampCheck(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_0

    .line 73
    const/16 v0, 0x8

    sget-object v1, Lcom/android/internal/telephony/cdma/sms/HwBearerData;->bearerDataUtils:Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;->getSubparamMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;)B

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 75
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/HwBearerData;->encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 77
    :cond_0
    return-void
.end method
