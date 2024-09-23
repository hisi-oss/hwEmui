.class public abstract Lcom/android/internal/telephony/gsm/HwSmsMessage;
.super Ljava/lang/Object;
.source "HwSmsMessage.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "HwSmsMessage"

.field public static final SMS_TOA_UNKNOWN:I = 0x80


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeSCTimeStamp(Ljava/lang/String;)[B
    .locals 5
    .param p0, "mcTimeStamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 193
    .local v0, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 198
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    const-string v2, "UTC"

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "Date":Landroid/text/format/Time;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 203
    iget v2, v1, Landroid/text/format/Time;->year:I

    rem-int/lit8 v2, v2, 0x64

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 204
    iget v2, v1, Landroid/text/format/Time;->year:I

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    .line 205
    .local v2, "val":B
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 206
    iget v4, v1, Landroid/text/format/Time;->year:I

    div-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 207
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 210
    iget v4, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/text/format/Time;->month:I

    .line 211
    iget v4, v1, Landroid/text/format/Time;->month:I

    rem-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 212
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 213
    iget v4, v1, Landroid/text/format/Time;->month:I

    div-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 214
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 217
    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    rem-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 218
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 219
    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    div-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 220
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 223
    iget v4, v1, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 224
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 225
    iget v4, v1, Landroid/text/format/Time;->hour:I

    div-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 226
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 229
    iget v4, v1, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 230
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 231
    iget v4, v1, Landroid/text/format/Time;->minute:I

    div-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 232
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 235
    iget v4, v1, Landroid/text/format/Time;->second:I

    rem-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 236
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 237
    iget v4, v1, Landroid/text/format/Time;->second:I

    div-int/lit8 v4, v4, 0xa

    int-to-byte v2, v4

    .line 238
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 241
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 243
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 194
    .end local v1    # "Date":Landroid/text/format/Time;
    .end local v2    # "val":B
    :cond_1
    :goto_0
    const-string v1, "HwSmsMessage"

    const-string v2, "bad parm in encodeSCTimeStamp()."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "scTimeStamp"    # Ljava/lang/String;
    .param p2, "origAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "UDH"    # [B

    .line 63
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_7

    .line 68
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 69
    .local v1, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xb0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 72
    .local v2, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 73
    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 83
    :goto_0
    const/4 v3, 0x0

    if-eqz p4, :cond_2

    const/16 v4, 0x44

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    or-int/2addr v4, v3

    .line 84
    .local v4, "mtiByte":I
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v5

    .line 92
    .local v5, "daBytes":[B
    if-nez v5, :cond_3

    .line 93
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    const/16 v6, 0x80

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 98
    :cond_3
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    .line 99
    array-length v8, v5

    sub-int/2addr v8, v7

    aget-byte v8, v5, v8

    const/16 v9, 0xf0

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_4

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    sub-int/2addr v6, v7

    .line 98
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 102
    array-length v6, v5

    invoke-virtual {v2, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 107
    :goto_3
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    :try_start_0
    invoke-static {p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 113
    .local v6, "userData":[B
    const/16 v7, 0xff

    aget-byte v8, v6, v3

    and-int/2addr v7, v8

    const/16 v8, 0xa0

    if-le v7, v8, :cond_5

    .line 115
    const-string v7, "SmsMessage"

    const-string v8, "Message too long"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v0

    .line 127
    :cond_5
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/HwSmsMessage;->encodeSCTimeStamp(Ljava/lang/String;)[B

    move-result-object v7

    .line 132
    .local v7, "timeStampArray":[B
    array-length v8, v7

    invoke-virtual {v2, v7, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    .end local v7    # "timeStampArray":[B
    goto :goto_4

    .line 133
    :catch_0
    move-exception v7

    .line 134
    .local v7, "err":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 135
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 136
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 139
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 141
    const-string v8, "HwSmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encode SC timestamp failed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v7    # "err":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :goto_4
    array-length v7, v6

    invoke-virtual {v2, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    .end local v6    # "userData":[B
    goto :goto_6

    .line 144
    :catch_1
    move-exception v6

    .line 147
    .local v6, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v7
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 151
    .local v7, "userData":[B
    nop

    .line 150
    nop

    .line 152
    array-length v8, v7

    const/16 v9, 0x8d

    if-le v8, v9, :cond_6

    .line 154
    return-object v0

    .line 159
    :cond_6
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    :try_start_4
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/HwSmsMessage;->encodeSCTimeStamp(Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    .local v0, "timeStampArray":[B
    array-length v8, v0

    invoke-virtual {v2, v0, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_4 .. :try_end_4} :catch_2

    .line 174
    goto :goto_5

    .line 165
    .end local v0    # "timeStampArray":[B
    :catch_2
    move-exception v0

    .line 166
    .local v0, "exception":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 167
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 170
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 173
    const-string v8, "HwSmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encode SC timestamp failed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "exception":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :goto_5
    array-length v0, v7

    invoke-virtual {v2, v7, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 179
    .end local v6    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v7    # "userData":[B
    :goto_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 180
    return-object v1

    .line 148
    .restart local v6    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_3
    move-exception v3

    .line 149
    .local v3, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v7, "HwSmsMessage"

    const-string v8, "Implausible UnsupportedEncodingException"

    invoke-static {v7, v8, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    return-object v0

    .line 64
    .end local v1    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v2    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "uex":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "mtiByte":I
    .end local v5    # "daBytes":[B
    .end local v6    # "ex":Lcom/android/internal/telephony/EncodeException;
    :cond_7
    :goto_7
    const-string v1, "SmsMessage"

    const-string v2, "enter getDeliverPdu()."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v0
.end method

.method public static getUserDataGSM8Bit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)Ljava/lang/String;
    .locals 2
    .param p0, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p1, "septetCount"    # I

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .local v0, "ret":Ljava/lang/String;
    nop

    .line 254
    nop

    .line 256
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 258
    return-object v0

    .line 253
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
